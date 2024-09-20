import 'package:flutter/material.dart';

import '../entry_point/entry_point.dart';

class CheckComplete extends StatelessWidget {
  const CheckComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "CheckComplete",
                style: TextStyle(fontSize: 20, color: Color(0xFF363f93)),
              ),
              const CircleAvatar(
                radius: 54,
                child: Icon(Icons.task_alt_outlined),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'LogIn ',
                    style: TextStyle(fontSize: 25, color: Color(0xFF363f93)),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.navigate_next_outlined,
                      size: 40,
                      color: Color(0xFF363f93),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const EntryPoint(),
                        ),
                      );

                      /*  User createdUser = User(
                                    username: userNameController.text,
                                    email: emailController.text);
                                ref
                                    .read(userProvider.notifier)
                                    .setUser(createdUser);*/
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
