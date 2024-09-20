import 'package:flutter/material.dart';
import 'package:video_chat/pages/shared_components/my_custom_button.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Empty",
                style: TextStyle(fontSize: 25, color: primaryColor),
              ),
              Icon(
                Icons.ac_unit,
                color: primaryColor,
                size: 60,
              ),
              MyCustomButton(
                onpressed: () {},
                text: "Match New People",
              )
            ],
          ),
        ),
      ),
    );
  }
}
