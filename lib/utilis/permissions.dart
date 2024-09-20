import 'package:permission_handler/permission_handler.dart';

Future<void> requestPermission() async {
  // You can request multiple permissions at once.
  // ignore: unused_local_variable
  Map<Permission, PermissionStatus> statuses = await [
    Permission.camera,
    Permission.audio,
    //Permission.bluetooth,
    Permission.microphone,
  ].request();
  
}
