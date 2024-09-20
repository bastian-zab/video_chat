import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_category_item_provider.g.dart';

@riverpod
class CurrentCategoryItem extends _$CurrentCategoryItem {
  @override
  int build() {
    return 0;
  }

  void setCurrentCategory(int itemIndex) {
    state = itemIndex;
  }
}