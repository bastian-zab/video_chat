import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/providers/users_stream_provider.dart';

import '../../../models/user_model.dart';
import '../../shared_components/show_dialog.dart';

class Matching extends ConsumerStatefulWidget {
  const Matching(
      {required this.userBeingOperatedOn, required this.user, super.key});
  final MyUser userBeingOperatedOn;
  final MyUser user;

  @override
  ConsumerState<Matching> createState() => _MatchingState();
}

class _MatchingState extends ConsumerState<Matching> {
  @override
  Widget build(BuildContext context, ) {
   
    return IconButton(
      onPressed: () {
         List<String>operatedUserMatches = widget.userBeingOperatedOn.matches;
        List<String>operatedUserRequests = widget.userBeingOperatedOn.requests;
       if (operatedUserRequests.contains(widget.user.id)) {
          showDialog(
            context: context,
            builder: (context) {
              return ShowMyDialog(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                content: "You Already  Requested To Match  This User",
              );
            });
          
       } else if(operatedUserMatches.contains(widget.user.id)){
            showDialog(
            context: context,
            builder: (context) {
              return ShowMyDialog(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                content: "You Already  Matched With The User",
              );
            });
       }else{
          operatedUserRequests.add(widget.user.id);
       
        /*if (userBeingOperatedOn.requests.isNotEmpty) {
          operatedUserRequests.addAll(userBeingOperatedOn.requests);
        }*/
        //print("operated user requests: ${userBeingOperatedOn.requests.toList()}");
        //The problem

        //Not needed anymore
        operatedUserRequests.remove(widget.userBeingOperatedOn.id);
        var operatedUserRequestsWithoutDuplicates =
            operatedUserRequests.toSet().toList();
        var newOperatedUserData = widget.userBeingOperatedOn.copyWith(
            requests: operatedUserRequestsWithoutDuplicates);
        ref.read(usersStreamProvider.notifier).set(newOperatedUserData);
        //print("new operated user requests: ${newOperatedUserData.requests.toList()}");
        showDialog(
            context: context,
            builder: (context) {
              return ShowMyDialog(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                content: "Match Request Sent",
              );
            });
            setState(() {
              
            });
       }
      },
      icon: const Icon(Icons.add_reaction),
      tooltip: "Request to Match",
    );
  }
}
