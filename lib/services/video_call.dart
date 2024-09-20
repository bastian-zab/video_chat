
import 'package:stream_video_flutter/stream_video_flutter.dart';



Future<Call> videoCall() async {
  //ToDo : Uncomment permissions on Android.
  //requestPermission();

  var call = StreamVideo.instance.makeCall(
    callType: StreamCallType(),
    id: '3bNtsuuWiXnf',
  );

  await call.getOrCreate();

  // Created ahead
  return call;
}
