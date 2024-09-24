import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/pages/shared_components/empty_page.dart';

import '../../../models/user_model.dart';
import '../../../providers/current_category_item_provider.dart';
import '../../../providers/users_stream_provider.dart';
import '../../../utilis/utilis.dart';
import 'matches_tile.dart';

class ShowMatches extends ConsumerWidget {
  const ShowMatches({
    required this.currentUser,
    required this.dataAlt,
    super.key,
  });
  final MyUser currentUser;
  final List<MyUser> dataAlt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  
    int selectedCategory = ref.watch(currentCategoryItemProvider);
    AsyncValue<List<MyUser>> usersStream = ref.watch(usersStreamProvider);
    final currentCategoryItem = ref.watch(currentCategoryItemProvider);
     print("showing category: ${selectedCategory}");
    List<MyUser> filterUsers(List<MyUser> data) {
      if (data.isNotEmpty) {
        if (currentCategoryItem == 0) {
          var requestsIDs = currentUser.matches;
          List<MyUser> filteredUsers =
              data.where((item) => requestsIDs.contains(item.id)).toList();
          return filteredUsers;
        } else if (currentCategoryItem == 3) {
          var requestsIDs = currentUser.requests;
          List<MyUser> filteredUsers =
              data.where((item) => requestsIDs.contains(item.id)).toList();
          return filteredUsers;
        } else if (currentCategoryItem == 1) {
          var duta = data;
          //duta.removeWhere((test) => test.id == currentUser.id);
          //duta.removeWhere((test) => currentUser.matches.contains(test.id));
         // duta.removeWhere((test) => test.requests.contains(currentUser.id));
          return duta;
        } else if (currentCategoryItem == 2) {
          return [];
        } else {
          return data;
        }
      } else {
        return [];
      }
    }

    return usersStream.when(data: (data) {
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
                        currentUser: currentUser,
                        ontap: () {},
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
