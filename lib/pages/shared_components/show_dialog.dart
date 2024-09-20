import 'package:flutter/material.dart';

class ShowMyDialog extends StatelessWidget {
  const ShowMyDialog({super.key, required this.onPressed, required this.content});
  final void Function() onPressed;
  final String content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding:
          const EdgeInsets.only(top: 0, bottom: 9, left: 0, right: 0),
      content: Text(textAlign: TextAlign.center, content),
      actions: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('Confirm'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
