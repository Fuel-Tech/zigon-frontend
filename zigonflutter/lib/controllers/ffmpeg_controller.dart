import 'dart:developer';
import 'dart:io';

import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit_config.dart';
import 'package:ffmpeg_kit_flutter/return_code.dart';
import 'package:ffmpeg_kit_flutter/session.dart';
import 'package:get/get.dart';

class FFMPEGController extends GetxController {
  late File asset;
  f() {}

  compress(path, output) {
    FFmpegKit.executeAsync("-y -i $path -vcodec libx265 -crf 28 $output",
        (Session session) async {
      final returnCode = await session.getReturnCode();
      if (ReturnCode.isSuccess(returnCode)) {
        File lastVid = File(output);
        //SUCCESS
      } else if (ReturnCode.isCancel(returnCode)) {
        // CANCEL

      } else {
        FFmpegKitConfig.enableLogCallback((log) {
          final message = log.getMessage();
          print(message);
        });
        // ERROR

      }
    });
  }
}
