import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/models/user_model.dart';

import '../../providers/image_from_firebase_provider.dart';

class ProfilePicture extends ConsumerWidget {
  const ProfilePicture({required this.currentUser, this.radius, super.key});
  final MyUser currentUser;
  final double? radius;
  //final String imagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue avatarBuilder =
        ref.watch(imageFromFirebaseProvider("avatars/${currentUser.id}"));
    return currentUser.avatar == "Default"
        ? CircleAvatar(
            radius: radius,
            child: const Icon(
              CupertinoIcons.person,
            ),
          )
        : avatarBuilder.when(
            data: (data) {
              return CircleAvatar(
                radius: radius,
                backgroundImage: NetworkImage(data),
              );
            },
            error: (error, stack) => CircleAvatar(
                  radius: radius,
                  child: const Icon(
                    Icons.person,
                  ),
                ),
            loading: () =>  CircleAvatar(
                  radius: radius,
                  child: const Icon(
                    Icons.person,
                  ),
                )
            ); /*FutureBuilder(
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
            });*/
  }
}
