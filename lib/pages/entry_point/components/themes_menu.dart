import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/models/user_model.dart';
import 'package:video_chat/providers/users_stream_provider.dart';

class ThemesMenu extends ConsumerWidget {
  const ThemesMenu({
    super.key,
    required this.currentUser,
  });
  final MyUser currentUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          /*Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.brightness_4_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Dark Theme",
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),*/
          Row(
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      MyUser newUserData = currentUser.copyWith(theme: 0);
                      ref.read(usersStreamProvider.notifier).set(newUserData);
                    },
                    icon: const Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 35, 84, 148),
                      size: 30,
                    ),
                  ),
                  const Text("Default"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      MyUser newUserData = currentUser.copyWith(theme: 1);
                      ref.read(usersStreamProvider.notifier).set(newUserData);
                    },
                    icon: const Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                  const Text("Green"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                    MyUser newUserData = currentUser.copyWith(theme: 2);
                      ref.read(usersStreamProvider.notifier).set(newUserData);
                    },
                    icon: const Icon(
                      Icons.circle,
                      color: Colors.brown,
                      size: 30,
                    ),
                  ),
                  const Text("Brown"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      MyUser newUserData = currentUser.copyWith(theme: 3);
                      ref.read(usersStreamProvider.notifier).set(newUserData);
                    },
                    icon: const Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                  const Text("Cherry"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      MyUser newUserData = currentUser.copyWith(theme: 4);
                      ref.read(usersStreamProvider.notifier).set(newUserData);
                    },
                    icon: const Icon(
                      Icons.circle,
                      color: Colors.purple,
                      size: 30,
                    ),
                  ),
                  const Text("Purple"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
