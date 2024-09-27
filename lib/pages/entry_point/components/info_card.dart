import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/pages/shared_components/profile_picture.dart';

import '../../../models/user_model.dart';

class InfoCard extends ConsumerWidget {
  const InfoCard({
    super.key,
    required this.currentUser,
  });
  final MyUser currentUser;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: ProfilePicture(currentUser: currentUser),
      title: Text(
        currentUser.name,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        currentUser.bio,
        style: const TextStyle(color: Colors.white70),
      ),
    );
  }
}
