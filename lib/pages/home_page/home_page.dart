import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/user_model.dart';
import '../../utilis/constants.dart';

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
    return (selectedCategory == 4) ? const AboutTab() : const ShowMatches();
    //return Container();
  }
}

/*class ShowMatches extends ConsumerWidget {
  const ShowMatches({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedCategory = ref.watch(currentCategoryItemProvider);
    
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              homeTitles[selectedCategory],
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
                child: MatchesTile(
                  userToDisplay: operatedTestUser,
                  ontap: () {
                  
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/
