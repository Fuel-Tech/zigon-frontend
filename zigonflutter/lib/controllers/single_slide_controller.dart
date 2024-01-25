import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../models/slide-list-model/slide_list_model.dart';
import '../utility/navigation_utility.dart';
import '../utility/network_utility.dart';
import '../utility/shared_prefs.dart';

class SingleSlideController extends GetxController {
  RxBool isLoading = true.obs;
  SlideListModel? slideListModel;
  String? videoId;
  RxList<String> videoList = RxList<String>();

  void stopActiveVideo() {
    log("VIDEO STATUS: STOPPED");
    isPlaying = false;
    activeVideoController?.pause();
  }

  bool isPlaying = true;
  togglePause() {
    if (isPlaying) {
      activeVideoController!.pause();
      isPlaying = false;
    } else {
      activeVideoController!.play();
      isPlaying = true;
    }
  }

  RxBool isFullScreen = false.obs;
  toggleFullScreen() {
    isFullScreen.value = !isFullScreen.value;
    // bottomBarKey.currentState!.toggleNavBar();
    log("FULLSCREEN: $isFullScreen");
  }

  final currentIndex = 0.obs;
  VideoPlayerController? activeVideoController;
  void updateIndex(int index, VideoPlayerController? videoController) {
    currentIndex.value = index;
    activeVideoController = videoController;
  }

  int startingPoint = 0;
  Future<void> fetchMoreVideos({int? newStart, bool refresh = false}) async {
    String userID = await SharedPrefHandler.getInstance()
            .getString(SharedPrefHandler.USERID) ??
        '0';

    log("Getting video for slides_view");
    String endpoint = 'showRelatedVideos';
    String body;
    if (startingPoint == 0) {
      body = '''{
      "user_id":${int.tryParse(userID)},
      "starting_point":$startingPoint,
      "device_id":1,
      "limit":4,
      "video_id": $videoId
    }''';
    } else {
      body = '''{
      "user_id":${int.tryParse(userID)},
      "starting_point":$startingPoint,
      "device_id":1,
      "limit":4
    }''';
    }

    var response = await NetworkHandler.dioPost(endpoint, body: body);
    var json = jsonDecode(response);
    if (json['code'] == 200) {
      var newSlideListModel = SlideListModel.fromJson(json);
      setVideoData(newSlideListModel, refresh: refresh);
    } else if (json['code'] == 201) {
      log("NO MORE VIDEOS TO SHOW!!!");
    }
    // slideListModel = SlideListModel.fromJson(json);
    // setVideoData(slideListModel!);
    return;
  }

  setVideoData(SlideListModel? data, {bool refresh = false}) {
    try {
      if (data != null) {
        if (slideListModel == null || refresh) {
          slideListModel = data;
        } else {
          slideListModel = SlideListModel(
            code: slideListModel!.code,
            msg: [...slideListModel!.msg, ...data.msg],
          );
        }
        List<String> temp = [];
        for (int i = 0; i < data.msg.length; i++) {
          temp.add(data.msg[i].video.video);
        }
        if (refresh) {
          videoList.clear();
        }
        videoList.addAll(temp);
      }
      isLoading.value = false;
      update();
    } catch (e) {
      log("Error while setting videos: $e");
    }
  }

  void playActiveVideo() {
    log("VIDEO STATUS: PLAYING");
    activeVideoController?.play();
  }

  bool isAndroid = false;
  bool isIOS = false;
  initalize() async {
    if (Platform.isAndroid) {
      isAndroid = true;
    } else if (Platform.isIOS) {
      isIOS = true;
    }
    videoId = Get.arguments["videoId"];
    await fetchMoreVideos();
    Get.routing.current;
    log("INIT ROUTING ${Get.routing.current}");
    Get.routing.obs.listen((routing) {
      log("CURRENT ROUTE ${routing.current}");
      if (routing.current == PageRouteList.slides) {
        playActiveVideo();
      } else {
        stopActiveVideo();
      }
    });
  }

  @override
  void onInit() {
    initalize();
    super.onInit();
  }
}
