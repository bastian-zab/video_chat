import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/providers/current_user_provider.dart';

import '../../../models/user_model.dart';

class InfoCard extends ConsumerWidget {
  const InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MyUser user = ref.watch(currentUserProvider);
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        user.name,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        user.bio,
        style: const TextStyle(color: Colors.white70),
      ),
    );
  }
}
