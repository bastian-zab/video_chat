
import 'package:stream_video_flutter/stream_video_flutter.dart';

import '../utilis/permissions.dart';



Future<Call> videoCall() async {
  
    requestPermission();

  var call = StreamVideo.instance.makeCall(
    callType: StreamCallType(),
    id: '3bNtsuuWiXnf',
  );

  await call.getOrCreate();

  // Created ahead
  return call;
}
