import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../models/user_model.dart';
import '../button_actions/button_actions.dart';

import '../../../providers/current_category_item_provider.dart';

class MatchesTile extends ConsumerWidget {
  const MatchesTile({
    super.key,
    required this.userToDisplay,
    required this.ontap,
  });
  final MyUser userToDisplay;
  final void Function() ontap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> trailingButtons = [
      VideoCalling(
        userBeingOperatedOn: userToDisplay,
      ),
      Matching(
        userBeingOperatedOn: userToDisplay,
        user: userToDisplay,
      ),
      VideoCalling(
        userBeingOperatedOn: userToDisplay,
      ),
      ConfirmingMatches(
        userBeingOperatedOn: userToDisplay,
        currentUser: userToDisplay,
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
        leading: const CircleAvatar(
          backgroundColor: Colors.white24,
          child: Icon(
            CupertinoIcons.person,
            color: Colors.white,
          ),
        ),
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
