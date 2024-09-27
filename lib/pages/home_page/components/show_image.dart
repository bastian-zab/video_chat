import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/image_from_firebase_provider.dart';


class ShowImage extends ConsumerWidget {
  const ShowImage({required this.imageUrl, super.key});
  final String imageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue imageBuilder = ref.watch(imageFromFirebaseProvider(imageUrl));
    return imageBuilder.when(
        data: (data) {
          return Image.network(
            data,
            fit: BoxFit.cover,
          );
        },
        error: (error, stack) =>
            const Center(child: Text("Error loading Image")),
        loading: () => const Text("Loading"));
  }
}
