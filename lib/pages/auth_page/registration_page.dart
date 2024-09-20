import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/pages/auth_page/login_page.dart';
import 'package:video_chat/pages/verification_page/id_upload_page.dart';
import 'package:video_chat/providers/current_user_provider.dart';
import 'package:video_chat/providers/users_stream_provider.dart';

import '../../models/user_model.dart';

class RegistrationPage extends ConsumerWidget {
  RegistrationPage({
    super.key,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    // User username = ref.watch(userProvider);
    // Color primaryColor = Theme.of(context).colorScheme.primary;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.02),
                    const Text(
                      "Already Registered ?",
                      style: TextStyle(fontSize: 20, color: Color(0xFF363f93)),
                    ),
                    Row(
                      children: [
                        const Text(
                          "Login here",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF363f93)),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.navigate_next_outlined,
                            size: 40,
                            color: Color(0xFF363f93),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => LogInPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.04),
                    const Center(
                      child: Text(
                        "Register",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF363f93),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    TextFormField(
                      controller: userNameController,
                      decoration:
                          const InputDecoration(labelText: 'Enter Your Name'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Your Name';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: height * 0.03),
                    TextFormField(
                      controller: emailController,
                      decoration:
                          const InputDecoration(labelText: 'Enter Your Email'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Your Email';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: height * 0.03),
                    TextFormField(
                      controller: ageController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: 'A Brief Description About You'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter  Bio";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: height * 0.03),
                    TextFormField(
                      controller: ageController,
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(labelText: 'Enter Your Age'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Your Age';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: height * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Next',
                          style:
                              TextStyle(fontSize: 25, color: Color(0xFF363f93)),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.navigate_next_outlined,
                            size: 40,
                            color: Color(0xFF363f93),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              const mySnackBar = SnackBar(
                                content: Text('Submited'),
                                duration: Duration(seconds: 2),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(mySnackBar);

                              User newUser = User(
                                  id: "id",
                                  name: userNameController.text,
                                  email: emailController.text,
                                  bio: bioController.text,
                                  age: ageController.text,
                                  matches: [],
                                  requests: [],
                                  theme: 0,
                                  avatar: "Default");
                              
                              ref
                                  .read(usersStreamProvider.notifier)
                                  .add(newUser);
                              ref
                                  .read(currentUserProvider.notifier)
                                  .setCurrentUser(newUser);
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      IDUploadPage(),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ]),
            )),
      ),
    );
  }
}
