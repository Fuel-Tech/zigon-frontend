import 'dart:developer';

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class SlidesController extends GetxController {
  bool isinit = false;
  late VideoPlayerController videoPlayerController;
  List videoList = [
    'assets/videos/v1.mp4',
    'assets/videos/v2.mp4',
    'assets/videos/v3.mp4',
    'assets/videos/v4.mp4',
    'assets/videos/v5.mp4',
  ];

  List playingVideoList = [];

  @override
  void onInit() {
    videoPlayerController = VideoPlayerController.asset(videoList[1])
      ..initialize().then((value) => update());
    videoPlayerController.setLooping(true);
    Future.delayed(const Duration(seconds: 1))
        .then((value) => videoPlayerController.play());
    super.onInit();
  }

  togglePlayVideo() {
    log('m');
    if (videoPlayerController.value.isPlaying) {
      videoPlayerController.pause();
    } else {
      videoPlayerController.play();
    }
    update();
  }

  checkIfInit() {
    isinit = videoPlayerController.value.isInitialized;
    update();
  }

  getAspectRatio() {
    return videoPlayerController.value.aspectRatio;
  }
}
