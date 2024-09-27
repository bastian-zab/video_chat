
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_from_firebase_provider.g.dart';

@Riverpod(keepAlive: true)
class ImageFromFirebase extends _$ImageFromFirebase {

  @override
  
  FutureOr build(String firebaseImagePath) async {
    final FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child(firebaseImagePath);
    String downloadUrl = await ref.getDownloadURL();
    return downloadUrl;
  }
}