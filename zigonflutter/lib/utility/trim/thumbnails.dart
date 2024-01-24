import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:zigonflutter/utility/ffmpeg_services.dart';
import 'controller.dart';
import 'cover_data.dart';

Stream<List<Uint8List>> generateTrimThumbnails(
  VideoEditorController controller, {
  required int quantity,
}) async* {
  final String path = controller.file.path;
  final double eachPart = controller.videoDuration.inMilliseconds / quantity;
  List<Uint8List> byteList = [];
  FFmpegServices fFmpegServices = FFmpegServices();
  for (int i = 1; i <= quantity; i++) {
    try {
      final Uint8List? bytes = await fFmpegServices.getVideoThumbnail(
        videoPath: path,
        thumbnailName: "$i",
        timeMs: (eachPart * i).toInt(),
      );
      if (bytes != null) {
        byteList.add(bytes);
      }
    } catch (e) {
      debugPrint(e.toString());
    }

    yield byteList;
  }
}

Stream<List<CoverData>> generateCoverThumbnails(
  VideoEditorController controller, {
  required int quantity,
}) async* {
  final int duration = controller.isTrimmed
      ? controller.trimmedDuration.inMilliseconds
      : controller.videoDuration.inMilliseconds;
  final double eachPart = duration / quantity;
  List<CoverData> byteList = [];

  for (int i = 0; i < quantity; i++) {
    try {
      final CoverData bytes = await generateSingleCoverThumbnail(
        controller.file.path,
        timeMs: (controller.isTrimmed
                ? (eachPart * i) + controller.startTrim.inMilliseconds
                : (eachPart * i))
            .toInt(),
        quality: controller.coverThumbnailsQuality,
      );

      if (bytes.thumbData != null) {
        byteList.add(bytes);
      }
    } catch (e) {
      debugPrint(e.toString());
    }

    yield byteList;
  }
}

/// Generate a cover at [timeMs] in video
///
/// Returns a [CoverData] depending on [timeMs] milliseconds
Future<CoverData> generateSingleCoverThumbnail(
  String filePath, {
  int timeMs = 0,
  int quality = 10,
}) async {
  FFmpegServices fFmpegServices = FFmpegServices();
  final Uint8List? thumbData = await fFmpegServices.getVideoThumbnail(
    videoPath: filePath,
    thumbnailName: "one",
    timeMs: timeMs,
  );
  // final Uint8List? thumbData = await VideoThumbnail.thumbnailData(
  //   imageFormat: ImageFormat.JPEG,
  //   video: filePath,
  //   timeMs: timeMs,
  //   quality: quality,
  // );

  return CoverData(thumbData: thumbData, timeMs: timeMs);
}
