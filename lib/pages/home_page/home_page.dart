import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../providers/current_category_item_provider.dart';
import 'components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: SelectCategoryToShow(),
      ),
    );
  }
}

class SelectCategoryToShow extends ConsumerWidget {
  const SelectCategoryToShow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedCategory = ref.watch(currentCategoryItemProvider);
    return (selectedCategory == 4) ?  AboutTab() : const ShowMatches();
    //return Container();
  }
}

