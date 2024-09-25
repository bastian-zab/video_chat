import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_chat/models/user_model.dart';
import 'package:video_chat/services/image_from_firebase.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({required this.currentUser, this.radius, super.key});
  final MyUser currentUser;
  final double? radius;
  //final String imagePath;

  @override
  Widget build(BuildContext context) {
    return currentUser.avatar == "Default"
        ? CircleAvatar(
            radius: radius,
            child: const Icon(
              CupertinoIcons.person,
            ),
          )
        : FutureBuilder(
            future: imageFromFirebase("avatars/${currentUser.id}"),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CircleAvatar(
                  radius: radius,
                  backgroundImage: NetworkImage(snapshot.data ?? ''),
                );
              } else {
                return CircleAvatar(
                  radius: radius,
                  child: const Icon(
                    Icons.person,
                  ),
                );
              }
            });
  }
}
