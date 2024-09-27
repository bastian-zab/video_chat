
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/pages/shared_components/profile_picture.dart';
import '../../../models/user_model.dart';
import '../button_actions/button_actions.dart';

import '../../../providers/current_category_item_provider.dart';

class MatchesTile extends ConsumerWidget {
  const MatchesTile({
    super.key,
    required this.userToDisplay,
    required this.currentUser,
    required this.ontap,
  });
  final MyUser userToDisplay, currentUser;
  final void Function() ontap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> trailingButtons = [
      VideoCalling(
        userBeingOperatedOn: userToDisplay,
        user: currentUser,
      ),
      Matching(
        userBeingOperatedOn: userToDisplay,
        user: currentUser,
      ),
      VideoCalling(
        userBeingOperatedOn: userToDisplay,
        user: currentUser,
      ),
      ConfirmingMatches(
        userBeingOperatedOn: userToDisplay,
        currentUser: currentUser,
      ),
    ];
    int selectedCategory = ref.watch(currentCategoryItemProvider);
    Color primaryColor = Theme.of(context).colorScheme.primary.withOpacity(0.85);
    return ListTile(
        onTap: ontap,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        tileColor: primaryColor,
        leading: ProfilePicture(currentUser: userToDisplay, radius: 24,),/*const CircleAvatar(
          backgroundColor: Colors.white24,
          child: Icon(
            CupertinoIcons.person,
            color: Colors.white,
          ),
        ),*/
        title: Text(
          userToDisplay.name,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          userToDisplay.bio,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: trailingButtons[selectedCategory]);
  }
}
