import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/pages/home_page/components/show_image.dart';

import '../../../models/user_model.dart';
import '../../../providers/current_category_item_provider.dart';
import '../../../providers/users_stream_provider.dart';
import '../../../utilis/utilis.dart';
import '../../shared_components/empty_page.dart';
import 'matches_tile.dart';
import 'slide_show.dart';

class ShowMatches extends ConsumerWidget {
  ShowMatches({
    required this.currentUser,
    required this.dataAlt,
    super.key,
  });
  final MyUser currentUser;
  final List<MyUser> dataAlt;
  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   
    List<Widget> userImages(MyUser userToDiplay) {
      List<Widget> imagesToDisplay = [];
      if (userToDiplay.images.isEmpty) {
        imagesToDisplay.add(const Center(
            child: Text(
          "User has No Images",
          style: TextStyle( fontWeight: FontWeight.bold),
        )));
      } else {
        for (var imagesUrl in userToDiplay.images) {
          imagesToDisplay.add(
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: ShowImage(imageUrl: imagesUrl)),
          );
        }
      }

      return imagesToDisplay;
    }

    int selectedCategory = ref.watch(currentCategoryItemProvider);
    AsyncValue<List<MyUser>> usersStream = ref.watch(usersStreamProvider);
    final currentCategoryItem = ref.watch(currentCategoryItemProvider);

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
         /*
          if (duta.isNotEmpty) {
            duta.removeWhere((test) => test.id == currentUser.id);
            duta.removeWhere((test) => currentUser.matches.contains(test.id));
            duta.removeWhere((test) => test.requests.contains(currentUser.id));
          }
          //duta.removeWhere((test) => test.id == currentUser.id);
          //duta.removeWhere((test) => currentUser.matches.contains(test.id));
          // duta.removeWhere((test) => test.requests.contains(currentUser.id));*/
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
                        ontap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  actionsPadding: const EdgeInsets.only(
                                      top: 0, bottom: 9, left: 0, right: 0),
                                  contentPadding: const EdgeInsets.all(0),
                                  actions: [
                                    Center(
                                      child: Center(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Dismiss'),
                                        ),
                                      ),
                                    ),
                                  ],
                                  content: CarouselWithIndicator(
                                    widgetsToSlideShow:
                                        userImages(usersToDisplay[index]),
                                    userToDisplay: usersToDisplay[index],
                                  ),
                                );
                              });
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
