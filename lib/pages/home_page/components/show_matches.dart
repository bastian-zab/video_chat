import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/pages/shared_components/empty_page.dart';
import '../../../ml_kit.dart';
import '../../../providers/remove_async.dart';

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
    MyUser currentUser = ref.watch(removeAsyncProvider);
    final currentCategoryItem = ref.watch(currentCategoryItemProvider);

    return usersStream.when(data: (data) {
      List<MyUser> filterUsers(List<MyUser> data) {
        if (currentCategoryItem == 0) {
          var matchesIDs = currentUser.matches;
          var matches = matchesIDs.map((x) {
            return data.firstWhere((y) => y.id == x);
          }).toList();
          return matches;
        } else if (currentCategoryItem == 1) {
          return data;
        } else {
          var requestsIDs = currentUser.requests;
          var requests = requestsIDs.map((x) {
            return data.firstWhere((y) => y.id == x);
          }).toList();
          return requests;
        }
      }

      List<MyUser> usersToDisplay = filterUsers(data);
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
            usersToDisplay.isEmpty
                ? const EmptyPage()
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: usersToDisplay.length,
                    padding: const EdgeInsets.only(bottom: 30),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14.0, vertical: 8.0),
                      child: MatchesTile(
                        userToDisplay: usersToDisplay[index],
                        ontap: () {
                      

                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => const MlKit(),
                            ),
                          );
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
