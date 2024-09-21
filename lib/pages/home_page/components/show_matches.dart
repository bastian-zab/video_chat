import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/providers/current_user_provider.dart';


import '../../../models/user_model.dart';
import '../../../providers/current_category_item_provider.dart';
import '../../../providers/users_stream_provider.dart';
import '../../../utilis/utilis.dart';
import 'matches_tile.dart';

class ShowMatches extends ConsumerWidget {
  const ShowMatches({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedCategory = ref.watch(currentCategoryItemProvider);
    AsyncValue<List<MyUser>> usersStream = ref.watch(usersStreamProvider);
    MyUser currentUser = ref.watch(currentUserProvider);

    return usersStream.when(data: (data) {
      print(data.toString());
      /*List<Application> checkIfSearchIsOn() {
        if (searchQuery.isEmpty) {
          return data;
        } else {
          return data
              .where((app) =>
                  app.title.toLowerCase().contains(searchQuery.toLowerCase()))
              .toList();
        }
      }*/

      // List<User> usersToDisplay = checkIfSearchIsOn();
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                homeTitles[selectedCategory],
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data.length,
              padding: const EdgeInsets.only(bottom: 30),
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
                child: MatchesTile(
                  userToDisplay: data[index],
                  ontap: () {
                    print(currentUser.toString());
                    var error = ref.read(currentUserProvider);
                    print(error.toString());
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }, error: (error, stack) {
      return Center(child: Text("Error: '${error.toString()}' occured."));
    }, loading: () {
      return Center(
          child: CircularProgressIndicator(
        //strokeWidth: 8.0,
        color: Theme.of(context).primaryColor,
      ));
    });
  }
}
