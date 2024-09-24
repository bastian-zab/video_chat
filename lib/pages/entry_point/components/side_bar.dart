import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/models/user_model.dart';
import 'package:video_chat/utilis/rive_utilis.dart';

import '../../../models/menu_model.dart';
import '../../../providers/current_category_item_provider.dart';
import 'info_card.dart';
import 'side_menu.dart';
import 'themes_menu.dart';

class SideBar extends ConsumerWidget {
  const SideBar({ required this.currentUser, super.key});
  final MyUser currentUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedCategory = ref.watch(currentCategoryItemProvider);
    Menu selectedSideMenu = sidebarMenus[selectedCategory];
    Color primaryColor = Theme.of(context).colorScheme.primary;
    return SafeArea(
      child: Container(
        width: 288,
        height: double.infinity,
        decoration: BoxDecoration(
          // color: Color(0xFF17203A),
          color: primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               InfoCard(currentUser: currentUser,),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20, bottom: 10),
                child: Text(
                  "Browse".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
              ...sidebarMenus.map((menu) => SideMenu(
                    menu: menu,
                    selectedMenu: selectedSideMenu,
                    press: () {
                      RiveUtils.chnageSMIBoolState(menu.rive.status!);
                      ref
                          .read(currentCategoryItemProvider.notifier)
                          .setCurrentCategory(sidebarMenus.indexOf(menu));
                    },
                    riveOnInit: (artboard) {
                      menu.rive.status = RiveUtils.getRiveInput(artboard,
                          stateMachineName: menu.rive.stateMachineName);
                    },
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20, bottom: 10),
                child: Text(
                  "Themes".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
              const ThemesMenu()
            ],
          ),
        ),
      ),
    );
  }
}
