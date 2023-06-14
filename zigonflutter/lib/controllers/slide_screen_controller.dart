import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';

import '../models/slide-list-model/slide_list_model.dart';
import '../utility/network_utility.dart';

class SlideScreenController extends GetxController with WidgetsBindingObserver {
  SlideListModel? slideListModel;
  RxList<String> videoList = RxList<String>();
  int startingPoint = 1;

  setVideoData(SlideListModel data) {
    try {
      if (slideListModel == null) {
        slideListModel = data;
      } else {
        slideListModel = SlideListModel(
          code: slideListModel!.code,
          msg: [...slideListModel!.msg, ...data.msg],
        );
      }
      List<String> temp = [];
      log(slideListModel!.msg.length.toString());
      for (int i = 0; i < slideListModel!.msg.length; i++) {
        log(slideListModel!.msg[i].Video.video);
        temp.add(slideListModel!.msg[i].Video.video);
      }
      videoList.addAll(temp);
    } catch (e) {
      log("Error while setting videos: $e");
    }
  }

  Future<void> fetchMoreVideos() async {
    String userID =
        await SharedPrefHandler.getString(SharedPrefHandler.USERID) ?? '0';
    startingPoint = startingPoint + 1;
    log("Getting video for slides_view");
    String endpoint = 'showRelatedVideos';
    String body = '''{
      "user_id":${int.tryParse(userID)},
      "starting_point":$startingPoint,
      "device_id":1,
      "limit":3
    }''';
    var response = await NetworkHandler.dioPost(endpoint, body: body);

    var json = jsonDecode(response);
    var newSlideListModel = SlideListModel.fromJson(json);
    setVideoData(newSlideListModel);
    // slideListModel = SlideListModel.fromJson(json);
    // setVideoData(slideListModel!);
    return;
  }

  //VIDEO PLAYER HANDLERS

  final currentIndex = 0.obs;
  VideoPlayerController? activeVideoController;

  void updateIndex(int index, VideoPlayerController? videoController) {
    currentIndex.value = index;
    activeVideoController = videoController;
  }

  void stopActiveVideo() {
    activeVideoController?.pause();
  }

  void playActiveVideo() {
    activeVideoController?.play();
  }

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      playActiveVideo();
    } else if (state == AppLifecycleState.paused) {
      stopActiveVideo();
    }
  }
}
