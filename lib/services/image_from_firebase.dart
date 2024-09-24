 import 'package:firebase_storage/firebase_storage.dart';

Future<String> imageFromFirebase(String firebaseImagePath) async {
    final FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child(firebaseImagePath);
    String downloadUrl = await ref.getDownloadURL();
    return downloadUrl;
  }