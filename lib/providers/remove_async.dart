import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user_model.dart';

part 'remove_async.g.dart';

@riverpod
class RemoveAsync extends _$RemoveAsync {
  @override
  MyUser build() {
    return testUser0;
  }
    void setUser(MyUser user) {
    state = user;
  }
}
