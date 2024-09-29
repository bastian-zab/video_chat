import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/models/menu_model.dart';
import 'package:video_chat/pages/entry_point/components/components.dart';
import 'package:video_chat/providers/current_category_item_provider.dart';

import '../../../utilis/rive_utilis.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedCategory = ref.watch(currentCategoryItemProvider);
    Menu selectedBottonNav = bottomNavItems[selectedCategory];
    return SafeArea(
      child: Container(
        padding:
            const EdgeInsets.only(left: 12, top: 12, right: 12, bottom: 12),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.99),
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              offset: const Offset(0, 20),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              bottomNavItems.length,
              (index) {
                Menu navBar = bottomNavItems[index];
                return BtmNavItem(
                  riveOnInit: (artboard) {
                      navBar.rive.status = RiveUtils.getRiveInput(artboard,
                          stateMachineName: navBar.rive.stateMachineName);
                    },
                  navBar: navBar,
                  press: () {
                    RiveUtils.chnageSMIBoolState(navBar.rive.status!);

                    ref
                        .read(currentCategoryItemProvider.notifier)
                        .setCurrentCategory(index);
                  },
                  selectedNav: selectedBottonNav,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
