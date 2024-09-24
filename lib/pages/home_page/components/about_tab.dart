import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_chat/models/user_model.dart';
import 'package:video_chat/pages/auth_page/registration_page.dart';
import 'package:video_chat/pages/shared_components/my_custom_button.dart';
import 'package:video_chat/pages/shared_components/show_dialog.dart';
import 'package:video_chat/providers/users_stream_provider.dart';
import 'package:video_chat/services/image_from_firebase.dart';
import '../../../services/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AboutTab extends ConsumerStatefulWidget {
  const AboutTab({required this.currentUser, super.key});
  final MyUser currentUser;

  @override
  ConsumerState<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends ConsumerState<AboutTab> {
  final AuthService auth = AuthService();
  late ImagePicker imagePicker;

  File? pickedImageFile;

  bool isRecognizing = false;

  @override
  void initState() {
    super.initState();

    imagePicker = ImagePicker();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    void _pickImageAndProcess({required ImageSource source}) async {
      final pickedImage = await imagePicker.pickImage(source: source);

      if (pickedImage == null) {
        return;
      }

      setState(() {
        pickedImageFile = File(pickedImage.path);
        isRecognizing = true;
      });
      try {
        final storageRef = FirebaseStorage.instance
            .ref()
            .child('avatars/${widget.currentUser.id}');
        await storageRef.putFile(pickedImageFile!);
        setState(() {
          isRecognizing = false;
        });
        if (kDebugMode) {
          print('Upload complete');
        }
      } catch (e) {
        if (kDebugMode) {
          print('Error occurred while uploading: $e');
        }
      }
    }

    void chooseImageSourceModal() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Choose from gallery'),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImageAndProcess(source: ImageSource.gallery);
                    MyUser newUserData = widget.currentUser
                        .copyWith(avatar: "avatars/${widget.currentUser.id}");
                    ref.read(usersStreamProvider.notifier).set(newUserData);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: const Text('Take a picture'),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImageAndProcess(source: ImageSource.camera);
                    MyUser newUserData = widget.currentUser
                        .copyWith(avatar: "avatars/${widget.currentUser.id}");
                    ref.read(usersStreamProvider.notifier).set(newUserData);
                  },
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: TextButton(
                    onPressed: isRecognizing ? null : chooseImageSourceModal,
                    child: isRecognizing
                        ? const SizedBox(
                            width: 32,
                            height: 32,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.5,
                            ),
                          )
                        : widget.currentUser.avatar == "Default"
                            ? const CircleAvatar(
                              radius: 54,
                              child: Icon(
                                  CupertinoIcons.person,
                                ),
                            )
                            : FutureBuilder(
                                future: imageFromFirebase(
                                    "avatars/${widget.currentUser.id}"),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.done) {
                                    return CircleAvatar(
                                      radius: 54,
                                      backgroundImage:
                                          NetworkImage(snapshot.data ?? ''),
                                    );
                                  } else {
                                    return const Icon(
                                      Icons.person,
                                    );
                                  }
                                }),
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
                                Navigator.of(context).pop();
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => RegistrationPage()),
                                  (route) => false,
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
