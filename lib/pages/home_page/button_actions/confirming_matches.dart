import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/providers/current_user_provider.dart';

import '../../../models/user_model.dart';
import '../../../providers/users_stream_provider.dart';

class ConfirmingMatches extends ConsumerWidget {
  const ConfirmingMatches({required this.userBeingOperatedOn, super.key});
  final User userBeingOperatedOn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    User user = ref.watch(currentUserProvider);
    return IconButton(
      onPressed: () {
        // print("user being operated id: ${user.id}");
        //print("user being operated id: ${userBeingOperatedOn.id}");
        // print("current user matches: ${user.matches.toList()}");
        // print("operated user matches: ${userBeingOperatedOn.matches.toList()}");
        var currentUserMatches = user.matches;
        currentUserMatches.add(userBeingOperatedOn.id);
        var userBeingOperatedOnMatches = userBeingOperatedOn.matches;
        userBeingOperatedOnMatches.add(user.id);
        var newUserData = user.copyWith(matches: currentUserMatches);
        var newUserBeingOperatedOnData =
            userBeingOperatedOn.copyWith(matches: userBeingOperatedOnMatches);
        //   print("current user matches: ${newUserData.matches.toList()}");
       // print("operated user matches: ${newUserBeingOperatedOnData.matches.toList()}");
         ref.read(usersStreamProvider.notifier).set(newUserData);
         ref.read(usersStreamProvider.notifier).set(newUserBeingOperatedOnData);
      },
      icon: const Icon(Icons.switch_access_shortcut),
      tooltip: "Confirm",
    );
  }
}
