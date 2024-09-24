/*import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallTwoPage extends StatelessWidget {
  const CallTwoPage(
      {super.key,
      required this.callID,
      required this.userName,
      required this.userID});
  final String callID, userID, userName;
  final int appID = 506525644;
  final String appSighn = "8629f3dd33d1fe6503ad8c20e5c9b2fd76d612869db0103d12df46acecab656b";
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          appID, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          appSighn, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userID,
      userName: userName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
*/