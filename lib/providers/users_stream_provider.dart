import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_chat/models/user_model.dart';

part 'users_stream_provider.g.dart';

@riverpod
class UsersStream extends _$UsersStream {
  CollectionReference<MyUser> get _collection =>
      FirebaseFirestore.instance.collection('Users').withConverter<MyUser>(
            fromFirestore: (ds, _) => MyUser.fromFirestoreDoc(ds),
            toFirestore: (user, _) => user.toFirestoreMap(),
          );

  @override
  Stream<List<MyUser>> build() {
    return _collection
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }

  Future<DocumentReference<MyUser>> add(MyUser user) async {
    return await _collection.add(user);
  }

  //Update will destroy data if already available
  Future<void> set(MyUser user) async {
    await _collection.doc(user.id).set(user);
  }

  Future<void> delete(MyUser user) async {
    await _collection.doc(user.id.toString()).delete();
  }

  Future<MyUser> getUserFromID(String uID) async {
    var doc = await _collection.doc(uID).get();
    MyUser myUser = MyUser.fromFirestoreDoc(doc);
    return myUser;
  }
}
