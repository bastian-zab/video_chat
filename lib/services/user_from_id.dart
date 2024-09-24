import 'package:video_chat/models/user_model.dart';

MyUser userFromID(List<MyUser> data, String id) {
  
  var user = data.firstWhere((user) => user.id == id,);
  return user;
}
