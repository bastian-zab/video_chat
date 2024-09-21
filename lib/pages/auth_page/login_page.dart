// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/pages/auth_page/registration_page.dart';
import 'package:video_chat/pages/entry_point/entry_point.dart';
import 'package:video_chat/services/firebase_auth.dart';

class LogInPage extends ConsumerWidget {
  LogInPage({
    super.key,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    // User username = ref.watch(userProvider);
    // Color primaryColor = Theme.of(context).colorScheme.primary;
    final AuthService auth = AuthService();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 45),
          child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.02),
                      const Text(
                        "Not Registered?",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF363f93)),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Register here",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF363f93)),
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
                                  builder: (BuildContext context) =>
                                      RegistrationPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.06),
                      const Center(
                        child: Text(
                          "LogIn",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.06),
                      TextFormField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                            labelText: 'Enter Your Password'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Paswword';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: height * 0.03),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                            labelText: 'Enter Your Email'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Email';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: height * 0.03),
                      SizedBox(height: height * 0.06),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'LogIn Now',
                            style: TextStyle(
                                fontSize: 25, color: Color(0xFF363f93)),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.navigate_next_outlined,
                              size: 40,
                              color: Color(0xFF363f93),
                            ),
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                UserCredential? userCredential =
                                    await auth.signInWithEmailAndPassword(
                                        emailController.text,
                                        passwordController.text);
                                const mySnackBar = SnackBar(
                                  backgroundColor: Color(0xFF363f93),
                                  content: Text('Verifying...'),
                                  duration: Duration(seconds: 3),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(mySnackBar);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const EntryPoint(),
                                  ),
                                );
                                print(userCredential?.user.toString());

                                /*  User createdUser = User(
                                    username: userNameController.text,
                                    email: emailController.text);
                                ref
                                    .read(userProvider.notifier)
                                    .setUser(createdUser);*/
                              }
                            },
                          ),
                        ],
                      ),
                    ]),
              )),
        ),
      ),
    );
  }
}
