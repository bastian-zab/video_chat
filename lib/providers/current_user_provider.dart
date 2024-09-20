import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user_model.dart';

part 'current_user_provider.g.dart';

@riverpod
class CurrentUser extends _$CurrentUser {
  @override
  User build() {
    return testUser0;
  }

  void setCurrentUser(User user) {
    state = user;
  }
}