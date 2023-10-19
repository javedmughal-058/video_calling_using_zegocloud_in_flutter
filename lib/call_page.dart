import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  final String localUserId;
  final String id;
  const CallPage({super.key, required this.id, required this.localUserId});

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 343231983,
      appSign:
          "523f634bbf9ec3c8e6c32833ffee0485636e6d00e152c3af8e8226bab0d50ecc",
      userID: 'user_id',
      userName: 'user_$localUserId',
      callID: id,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
