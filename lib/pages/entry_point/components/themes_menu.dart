import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/providers/color_pallete_provider.dart';

class ThemesMenu extends ConsumerWidget {
  const ThemesMenu({
    super.key,
  });

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
                      ref
                          .read(colorPalleteProvider.notifier)
                          .setColorPallete(0);
                    },
                    icon: const Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 35, 84, 148),
                      size: 40,
                    ),
                  ),
                  const Text("Default"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      ref
                          .read(colorPalleteProvider.notifier)
                          .setColorPallete(1);
                    },
                    icon: const Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 40,
                    ),
                  ),
                  const Text("Green"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      ref
                          .read(colorPalleteProvider.notifier)
                          .setColorPallete(2);
                    },
                    icon: const Icon(
                      Icons.circle,
                      color: Colors.brown,
                      size: 40,
                    ),
                  ),
                  const Text("Brown"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      ref
                          .read(colorPalleteProvider.notifier)
                          .setColorPallete(3);
                    },
                    icon: const Icon(
                      Icons.circle,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                  const Text("Black"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
