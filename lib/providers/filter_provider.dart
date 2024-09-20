import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'current_category_item_provider.dart';
import 'current_user_provider.dart';

import '../models/user_model.dart';

part 'filter_provider.g.dart';

@riverpod
class Filter extends _$Filter {
  @override
  List<User> build(List<User> users) {
    final currentUser = ref.read(currentUserProvider);
    final currentCategoryItem = ref.watch(currentCategoryItemProvider);

    if (currentCategoryItem == 0) {
      var matchesIDs = currentUser.matches;
      var matches = matchesIDs.map((x) {
        return users.firstWhere((y) => y.id == x);
      }).toList();
      return matches;
    } else if (currentCategoryItem == 1) {
      return users;
    } else {
      var requestsIDs = currentUser.requests;
      var requests = requestsIDs.map((x) {
        return users.firstWhere((y) => y.id == x);
      }).toList();
      return requests;
    }
  }

  /*void setCurrentCaegory(int itemIndex) {
    state = itemIndex;
  }*/
}
