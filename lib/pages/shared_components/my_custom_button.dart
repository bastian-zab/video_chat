import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({
    super.key,
    required this.onpressed,
    required this.text,
  });

  final void Function() onpressed;
  final String text;
  final kPadding = 20.0;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: const WidgetStatePropertyAll(
          Size(50, 4),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsets.only(
              left: kPadding ,
              right: kPadding ,
              bottom: getValueForScreenType(
                  context: context,
                  mobile: kPadding,
                  desktop: kPadding,
                  tablet: kPadding),
              top: getValueForScreenType(
                  context: context,
                  mobile: kPadding,
                  desktop: kPadding,
                  tablet: kPadding)),
        ),
      ),
      onPressed: onpressed,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
