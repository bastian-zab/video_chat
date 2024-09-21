import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/providers/users_stream_provider.dart';


import '../../../models/user_model.dart';

class Matching extends ConsumerWidget {
  const Matching({required this.userBeingOperatedOn, required this.user, super.key});
  final MyUser userBeingOperatedOn;
  final MyUser user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return IconButton(
      onPressed: () {
        var operatedUserRequests = user.requests;
       // print("previous operated user requests: ${userBeingOperatedOn.requests.toList()}");
        operatedUserRequests.add(user.id);
        var newOperatedUserData = userBeingOperatedOn.copyWith(requests: operatedUserRequests);
        ref.read(usersStreamProvider.notifier).set(newOperatedUserData);
        //print("new operated user requests: ${newOperatedUserData.requests.toList()}");
      },
      icon: const Icon(Icons.add_reaction),
      tooltip: "Request to Match",
    );
  }
}
