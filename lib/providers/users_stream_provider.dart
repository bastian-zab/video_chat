import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_chat/models/user_model.dart';

part 'users_stream_provider.g.dart';

@riverpod
class UsersStream extends _$UsersStream {
  CollectionReference<User> get _collection => FirebaseFirestore.instance
      .collection('Users')
      .withConverter<User>(
        fromFirestore: (ds, _) => User.fromFirestoreDoc(ds),
        toFirestore: (user, _) => user.toFirestoreMap(),
      );

  @override
  Stream<List<User>> build() {
    return _collection
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }
 

  Future<DocumentReference<User>> add(User user) async {
    return await _collection.add(user);

  }
 //Update will destroy data if already available
  Future<void> set(User user) async {
    await _collection.doc(user.id).set(user);
  }

  Future<void> delete(User user) async {
    await _collection.doc(user.id.toString()).delete();
  }
}