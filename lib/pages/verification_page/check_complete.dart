import 'package:flutter/material.dart';
import 'package:video_chat/main.dart';



class CheckComplete extends StatelessWidget {
  const CheckComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Check Complete",
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
                  'LogIn Now',
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
                    const mySnackBar = SnackBar(
                      backgroundColor: Color(0xFF363f93),
                      content: Text('Loading'),
                      duration: Duration(seconds: 3),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const MyApp(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
