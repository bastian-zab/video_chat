import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_chat/providers/users_stream_provider.dart';

import '../models/user_model.dart';
import '../services/firebase_auth.dart';

part 'current_user_provider.g.dart';

@riverpod
class CurrentUser extends _$CurrentUser {
  var currentUser = AuthService().currentSighnedInUser;

  @override
  MyUser build() {
    var users = ref.read(usersStreamProvider.notifier) ;
    var usingID = currentUser?.uid;
    return testUser0;
  }
}
