import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/pages/auth_page/registration_page.dart';
import 'package:video_chat/pages/shared_components/my_custom_button.dart';
import 'package:video_chat/pages/shared_components/show_dialog.dart';
import 'package:video_chat/providers/remove_async.dart';
import '../../../services/firebase_auth.dart';
import '../../../models/user_model.dart';

class AboutTab extends ConsumerWidget {
  AboutTab({super.key});
  final AuthService auth = AuthService();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MyUser user = ref.watch(removeAsyncProvider);
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      radius: 48,
                      child: user.avatar == "Default"
                          ? const Icon(CupertinoIcons.person)
                          : const Icon(CupertinoIcons.person),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Click avatar to change image"),
                const SizedBox(
                  height: 40,
                ),
                /*Text(
                  user.name,
                  style: style,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '"${user.bio}"',
                  style: style.copyWith(fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  user.email,
                  style: style,
                ),*/
                const SizedBox(
                  height: 50,
                ),
                MyCustomButton(
                    onpressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return ShowMyDialog(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        RegistrationPage()
                                  ),
                                );
                                auth.signOut();
                              },
                              content: "Log Out?",
                            );
                          });
                    },
                    text: "Log Out Now")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
