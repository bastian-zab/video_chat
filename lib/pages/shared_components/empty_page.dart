import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/pages/shared_components/my_custom_button.dart';
import 'package:video_chat/providers/current_category_item_provider.dart';

class EmptyPage extends ConsumerWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color primaryColor = Theme.of(context).colorScheme.primary;

    return Center(
      child: SizedBox(
        width: 200,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Empty",
              style: TextStyle(fontSize: 25, color: primaryColor),
            ),
            /* Icon(
                    Icons.ac_unit,
                    color: primaryColor,
                    size: 60,
                  ),*/
            MyCustomButton(
              onpressed: () {
                ref
                    .read(currentCategoryItemProvider.notifier)
                    .setCurrentCategory(1);
              },
              text: "Match New People",
            )
          ],
        ),
      ),
    );
  }
}
