import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/services/video_call.dart';

import '../../../models/user_model.dart';
import '../../call_page/call_page.dart';

class VideoCalling extends ConsumerWidget {
  const VideoCalling({required this.userBeingOperatedOn, super.key});
  final MyUser userBeingOperatedOn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () async {
        const mySnackBar = SnackBar(
          backgroundColor: Color(0xFF363f93),
          content: Text('Loading...'),
          duration: Duration(seconds: 2),
        );
        ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
        var call = await videoCall();
        Navigator.push(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(
            builder: (context) => CallScreen(call: call),
          ),
        );
      },
      icon: const Icon(Icons.video_chat),
      tooltip: "Video Call",
    );
  }
}
