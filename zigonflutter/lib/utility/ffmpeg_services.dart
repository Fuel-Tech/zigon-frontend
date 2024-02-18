import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class FFmpegServices {
  cancelTasks() {
    FFmpegKit.cancel();
  }

  //Video Filter Service//
  videoFilterService(String inputPath, String outputPath,
      {String channelmixer =
          '1.030:-0.047:0.000:0.000:0.000:1.000:-0.534:0.008:0.000:0.000:1.000:0.000:0.000:0.000:-0.564:1.100'}) async {
    // final path = await _localPath;

    log(inputPath);
    var ip = 'file:$inputPath';
    var op = 'file:$outputPath';

    log("I/P: $ip");
    log("O/P: $op");

    if (await Permission.storage.request().isGranted) {
      String commandToExecute =
          '-i $ip -vf colorchannelmixer=$channelmixer -qscale 2 -y $op';

      log(commandToExecute);
      await FFmpegKit.execute(commandToExecute);
      op = op.replaceRange(0, 5, '');
      return op;
    } else if (await Permission.storage.isPermanentlyDenied ||
        await Permission.storage.isDenied) {
      log(Permission.storage.status.toString());

      openAppSettings();
    }
  }

  Future<Uint8List?> getVideoThumbnail({
    required String videoPath,
    required String thumbnailName,
    int timeMs = 0,
    int width = 128,
  }) async {
    log('GetVideoThumbnail');
    final Directory tempDir = await getTemporaryDirectory();
    final String thumbnailPath = '${tempDir.path}/$thumbnailName.jpg';

    await FFmpegKit.execute(
        '-y -i $videoPath -ss ${timeMs ~/ 1000} -vframes 1 -vf scale=$width:-1 $thumbnailPath');

    // if (resultCode == 0) {
    //   return File(thumbnailPath).readAsBytes();
    // } else {
    //   return null;
    // }
  }

  //Video Trim Service//
  Future trimVideo(
    String ipPath,
    int startTime,
    int endTime,
    String outputPath,
  ) async {
    final String inputPath = ipPath;

    int startTimeInMs = startTime;
    int durationInMs = (endTime - startTime).toInt();

    String command =
        '-y -i $inputPath -ss ${startTimeInMs}ms -t ${durationInMs}ms -qscale 2 -c copy $outputPath';

    FFmpegKit.execute(command);

    // if (resultCode == 0) {
    //   log('Trimming successful. Output file: $outputPath');
    //   return outputPath;
    // } else {
    //   log('Trimming failed with error code: $resultCode');
    // }
  }

  extractCoverService() {}

  Future<String?> rotateVideo(
      String inputPath, String outputPath, int angle) async {
// Calculate  the transpose value
    String command;
    int transposeValue;
    if (angle == 90) {
      command =
          '-i $inputPath -vf "transpose=1,format=yuv420p" -qscale 2 $outputPath';
    } else if (angle == 180) {
      command =
          '-i $inputPath -vf "hflip,vflip,format=yuv420p" -qscale 2 $outputPath';
    } else if (angle == 270) {
      command =
          '-i $inputPath -vf "transpose=3,format=yuv420p" -qscale 2 $outputPath';
    } else {
      command =
          '-i $inputPath -vf "hflip,vflip,format=yuv420p" -qscale 2 $outputPath';
    }

// // Build the FFmpeg command
//     List<String> command;
//     if (transposeValue != -1) {
//       command = [
//         '-i',
//         '/data/user/0/com.example.ffmpegvideoeditor/cache/tempeditfile.mp4',
//         '-vf',
//         'transpose=$transposeValue,format=yuv420p',
//         '/data/user/0/com.example.ffmpegvideoeditor/cache/temprotatedfile.mp4',
//       ];
//     } else {
//       // If no rotation is needed, just copy the input video to the output without any modifications
//       command = [
//         '-i',
//         '/data/user/0/com.example.ffmpegvideoeditor/cache/tempeditfile.mp4',
//         '-c',
//         'copy',
//         '/data/user/0/com.example.ffmpegvideoeditor/cache/temprotatedfile.mp4',
//       ];
//     }

    // command = '-i $inputPath -vf "transpose=2,format=yuv420p" $outputPath';
    // String command2 =
    // '-y -i $inputPath -vf "transpose=(($angle + 90) / 90),format=yuv420p" -codec:v libx264 -preset slow -crf 18 -codec:a copy $outputPath';
    FFmpegKit.execute(command);
  }

  cropVideo() {}
}

// colorchannelmixer=r0c0:r0c1:r0c2:r0c3:r1c0:r1c1:r1c2:r1c3:r2c0:r2c1:r2c2:r2c3:r3c0:r3c1:r3c2:r3c3 - 4x4
// colorchannelmixer=r0c0:r0c1:r0c2:r0c3:r0c4:r1c0:r1c1:r1c2:r1c3:r1c4:r2c0:r2c1:r2c2:r2c3:r2c4:r3c0:r3c1:r3c2:r3c3:r3c4 - 4x5
