import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/image_from_firebase_provider.dart';

class ProfilePicture extends ConsumerWidget {
  const ProfilePicture(
      {required this.url, this.radius, super.key});

  final String url;
  final double? radius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue avatarBuilder = ref.watch(imageFromFirebaseProvider(url));
    
   
    return url == "Default"
        ? CircleAvatar(
            radius: radius,
            child: const Icon(
              CupertinoIcons.person,
            ),
          )
        : avatarBuilder.when(
            data: (data) {
              precacheImage(NetworkImage(data), context);
              
              return CircleAvatar(
                radius: radius,
                backgroundImage: NetworkImage(data),
              );
            },
            error: (error, stack) {
            
              
              return CircleAvatar(
                radius: radius,
                child: const Icon(
                  Icons.error_outline_sharp
                ),
              );
            },
            loading: () =>  CircleAvatar(
                        radius: radius,
                        child: const Icon(
            Icons.person,
                        ),
                      ),
          );
  }
}
