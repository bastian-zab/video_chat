import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../models/user_model.dart';
import '../../providers/current_category_item_provider.dart';
import 'components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.currentUser, required this.userData});
    final MyUser currentUser;
     final List<MyUser> userData;

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SelectCategoryToShow(currentUser: currentUser, userData: userData,),
      ),
    );
  }
}

class SelectCategoryToShow extends ConsumerWidget {
  const SelectCategoryToShow({super.key, required this.currentUser, required this.userData});
    final MyUser currentUser;
     final List<MyUser> userData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedCategory = ref.watch(currentCategoryItemProvider);
    return (selectedCategory == 4) ?  AboutTab() : ShowMatches(currentUser: currentUser,dataAlt: userData,);
    //return Container();
  }
}

