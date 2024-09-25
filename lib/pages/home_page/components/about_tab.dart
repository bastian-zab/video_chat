import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_chat/models/user_model.dart';
import 'package:video_chat/pages/auth_page/registration_page.dart';
import 'package:video_chat/pages/shared_components/my_custom_button.dart';
import 'package:video_chat/pages/shared_components/profile_picture.dart';
import 'package:video_chat/pages/shared_components/show_dialog.dart';
import 'package:video_chat/providers/users_stream_provider.dart';
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
  bool isPictures = false;

  @override
  void initState() {
    super.initState();

    imagePicker = ImagePicker();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    // ignore: no_leading_underscores_for_local_identifiers
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
        if (isPictures) {
          List<String> userImages = widget.currentUser.images;
          final storageRef = FirebaseStorage.instance
              .ref()
              .child("images/${widget.currentUser.id}/${userImages.length}");
          await storageRef.putFile(pickedImageFile!);

          userImages
              .add("images/${widget.currentUser.id}/${userImages.length}");
          MyUser newUserData = widget.currentUser.copyWith(images: userImages);
          ref.read(usersStreamProvider.notifier).set(newUserData);
          setState(() {
            isPictures = false;
          });
        } else {
          final storageRef = FirebaseStorage.instance
              .ref()
              .child('avatars/${widget.currentUser.id}');
          await storageRef.putFile(pickedImageFile!);
          MyUser newUserData = widget.currentUser
              .copyWith(avatar: "avatars/${widget.currentUser.id}");
          ref.read(usersStreamProvider.notifier).set(newUserData);
        }

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
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: const Text('Take a picture'),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImageAndProcess(source: ImageSource.camera);
                  },
                ),
              ],
            ),
          );
        },
      );
    }

    print(widget.currentUser.images.length);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 15,
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
                          : ProfilePicture(
                              currentUser: widget.currentUser, radius: 34)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Click avatar to change image"),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      /*GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: widget.currentUser.images.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 40,
                            height: 30,
                            color: Colors.red,
                          );
                        },
                      ),*/
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isPictures = true;
                            if (isRecognizing) {
                              null;
                            } else {
                              chooseImageSourceModal();
                            }
                          });
                        },
                        child: const Column(
                          children: [
                            Icon(
                              Icons.add,
                              size: 24,
                            ),
                            Text("Add Photos"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
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
