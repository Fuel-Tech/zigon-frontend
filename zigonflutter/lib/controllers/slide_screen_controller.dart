import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:zigonflutter/main.dart';
import 'package:zigonflutter/ui/views/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';

import '../models/comment-list-model/comment_list_model.dart';
import '../models/slide-list-model/slide_list_model.dart';
import '../utility/navigation_utility.dart';
import '../utility/network_utility.dart';

class SlideScreenController extends GetxController {
  SlideListModel? slideListModel;
  RxList<String> videoList = RxList<String>();
  int startingPoint = 1;
  RxBool isVideoLoading = false.obs;

  setVideoData(SlideListModel? data, {bool refresh = false}) {
    try {
      if (data != null) {
        if (slideListModel == null || refresh == true) {
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
        isVideoLoading.value = false;
        update();
      }
    } catch (e) {
      log("Error while setting videos: $e");
    }
  }

  Future<void> fetchMoreVideos({String? newStart, bool refresh = false}) async {
    log("CONDITONS: NEWSTART=$newStart -- REFRESH=$refresh");
    if (refresh) {
      isVideoLoading.value = true;
      startingPoint = 0;
    } else {
      startingPoint = startingPoint + 1;
    }
    log("CONDITONS: STARTING POINT=$startingPoint");

    String userID = await SharedPrefHandler.getInstance()
            .getString(SharedPrefHandler.USERID) ??
        '0';

    log("Getting video for slides_view");
    String endpoint = 'showRelatedVideos';
    String body = '';
    if (newStart == null) {
      body = '''{
      "user_id":${int.tryParse(userID)},
      "starting_point":$startingPoint,
      "device_id":1,
      "limit":4
    }''';
    } else {
      body = '''{
      "user_id":${int.tryParse(userID)},
      "starting_point":$startingPoint,
      "device_id":1,
      "limit":4,
      "video_id": $newStart
    }''';
    }

    var response = await NetworkHandler.dioPost(endpoint, body: body);
    log("CONDITONS: $body");
    var json = jsonDecode(response);
    if (json['code'] == 200) {
      var newSlideListModel = SlideListModel.fromJson(json);
      log("CONDITONS: COUNTS ${newSlideListModel.msg.length}");
      setVideoData(newSlideListModel, refresh: false);
    } else if (json['code'] == 201) {
      log("NO MORE VIDEOS TO SHOW!!!");
    }
    // slideListModel = SlideListModel.fromJson(json);
    // setVideoData(slideListModel!);
    return;
  }

  RxBool commentLoader = false.obs;
  // COMMENTS
  CommentListModel? commentList;
  getComments({required String videoID}) async {
    String userId =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    commentLoader.value = true;
    String postUrl = 'showVideoComments';
    Map<String, String> body = {"video_id": videoID, "user_id": userId};
    var response = await NetworkHandler.dioPost(postUrl, body: body);
    var json = jsonDecode(response);
    log(json.toString());
    if (json['code'] == 200) {
      commentList = CommentListModel.fromJson(json);
      // log(commentList.toString());
      update();
    } else if (json["code"] == 201) {
      log("No comments yet");
    } else {
      Get.snackbar("Try Again",
          "Unable to fetch comments, check your network and try agian🫡",
          colorText: Colors.black, backgroundColor: Colors.white);
    }

    commentLoader.value = false;
  }

  getTime(DateTime dt) {
    return timeago.format(dt);
  }

  TextEditingController commentFieldController = TextEditingController();

  RxBool addingComment = false.obs;

  Future<void> addComment(String videoId, String comment) async {
    addingComment.value = true;
    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String url = "postCommentOnVideo";
    Map<String, String> body = {
      "video_id": videoId,
      "user_id": userID,
      "comment": comment
    };

    var response = await NetworkHandler.dioPost(url, body: body);
    log(response.toString());
    var json = jsonDecode(response);
    if (json['code'] == 200) {
      log(json.toString());
      getComments(videoID: videoId);
      update();
    } else {
      Get.snackbar(
        "Try Again",
        "Unable to comment, check your network and try again🫡",
        backgroundColor: Colors.white,
        colorText: Colors.black,
      );
    }
    commentFieldController.clear();
    addingComment.value = false;
  }

  Future<void> addCommentLike(String commentId) async {
    String userId =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String url = "likeComment";
    Map<String, String> body = {"comment_id": commentId, "user_id": userId};

    var response = await NetworkHandler.dioPost(url, body: body);
    var json = jsonDecode(response);
    if (json["code"] == 200) {
      log("comment like api called");
    } else {
      log("unable to like");
    }
  }

  // USER LOGIN HANDLER
  TextEditingController emailFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();
  RxBool isLoading = false.obs;
  userLogin() async {
    isLoading.value = true;
    log("loggin in");
    String path = 'login';
    String body = '''{
      "email":"${emailFieldController.text}",
      "password":"${passwordFieldController.text}",
      "fcm":"$fcmToken"
    }''';
    // var body = {"email": "jassimpv@gmail.com", "password": "123@123"};
    log(body.toString());
    try {
      var response = await NetworkHandler.dioAuth(path, body: body);
      log(response.toString());
      var json = jsonDecode(response);
      if (json["code"] == 200) {
        await SharedPrefHandler.getInstance().setString(
            json["msg"]["User"]["auth_token"].toString(),
            SharedPrefHandler.USERTOKEN);
        await SharedPrefHandler.getInstance().setString(
            json["msg"]["User"]["id"].toString(), SharedPrefHandler.USERID);
        log('User Auth Token Saved');
        AppUtil.isLoggedIn = true;
        Get.offAllNamed(PageRouteList.splash);
      } else if (json["code"] == 201) {
        Get.snackbar(
          "Invalid Login",
          "Incorrect login details",
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        log(json.toString());
        Get.snackbar(
          "Unable to login",
          "Please try again later",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } on Exception catch (e) {
      log("LOGIN ERROR CATCHED:: $e");
    }
    isLoading.value = false;
  }

  RxBool toggleLikeActivate = false.obs;
  toggleLike({required String videoID, required int index}) async {
    // toggleLikeActivate.value = false;
    if (toggleLikeActivate.isFalse) {
      addRemoveLike(slideListModel!.msg[index].video.isVideoLiked, index);
      toggleLikeActivate.value = true;
      await toggleLikeApi(videoID: videoID);
      toggleLikeActivate.value = false;
    }
  }

  addRemoveLike(bool likeStatus, int index) {
    if (!likeStatus) {
      final originalVideo = slideListModel!.msg[index]
          .video; // Assuming you want to increment the like count of the first video
      final updatedVideo = originalVideo.copyWith(
        like_count: originalVideo.like_count + 1,
        isVideoLiked: !originalVideo.isVideoLiked,
      );

      final updatedMsg =
          slideListModel!.msg[index].copyWith(video: updatedVideo);
      final updatedMsgList =
          slideListModel!.msg.toList(); // Create a copy of the list
      updatedMsgList[index] =
          updatedMsg; // Update the first Msg object in the list

      slideListModel = slideListModel!.copyWith(msg: updatedMsgList);
    } else {
      final originalVideo = slideListModel!.msg[index]
          .video; // Assuming you want to increment the like count of the first video
      final updatedVideo = originalVideo.copyWith(
        like_count: originalVideo.like_count - 1,
        isVideoLiked: !originalVideo.isVideoLiked,
      );

      final updatedMsg =
          slideListModel!.msg[index].copyWith(video: updatedVideo);
      final updatedMsgList =
          slideListModel!.msg.toList(); // Create a copy of the list
      updatedMsgList[index] =
          updatedMsg; // Update the first Msg object in the list

      slideListModel = slideListModel!.copyWith(msg: updatedMsgList);
    }
    update();
  }

  Future<void> toggleLikeApi({required String videoID}) async {
    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String url = "likeVideo";

    Map<String, String> body = {"video_id": videoID, "user_id": userID};

    var response = await NetworkHandler.dioPost(url, body: body);
    var json = jsonDecode(response);
    log("$json");
    if (json["code"] == 200) {
      log("video like api called");
    } else {
      log("UNABLE TO LIKE");
    }
  }

  LoginTypes loginType = LoginTypes.none;

  loginTypeSelector(LoginTypes selectedType) {
    loginType = selectedType;
    update();
  }

  //VIDEO PLAYER HANDLERS

  final currentIndex = 0.obs;
  VideoPlayerController? activeVideoController;
  void updateIndex(int index, VideoPlayerController? videoController) {
    currentIndex.value = index;
    activeVideoController = videoController;
  }

  void stopActiveVideo() {
    log("VIDEO STATUS: STOPPED");
    isPlaying = false;
    activeVideoController?.pause();
  }

  RxBool isFullScreen = false.obs;
  toggleFullScreen() {
    isFullScreen.value = !isFullScreen.value;
    bottomBarKey.currentState!.toggleNavBar();
    log("FULLSCREEN: $isFullScreen");
  }

  resetMute() {
    activeVideoController!.setVolume(1.0);
  }

  toggleMute() {
    if (activeVideoController!.value.volume == 0.0) {
      activeVideoController!.setVolume(1.0);
    } else {
      activeVideoController!.setVolume(0.0);
    }
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

  void playActiveVideo() {
    log("VIDEO STATUS: PLAYING");
    activeVideoController?.play();
  }

  void handleRouteChange(String route) {
    if (route == PageRouteList.slides) {
      playActiveVideo();
    } else {
      stopActiveVideo();
    }
  }

  bool isAndroid = false;
  bool isIOS = false;

  @override
  void onInit() {
    log("SLIDE CTRL INITALIZED!!!");
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
    if (Platform.isAndroid) {
      isAndroid = true;
    } else if (Platform.isIOS) {
      isIOS = true;
    }
    super.onInit();
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if (state == AppLifecycleState.resumed) {
  //     playActiveVideo();
  //   } else if (state == AppLifecycleState.paused) {
  //     stopActiveVideo();
  //   }
  // }
}

enum LoginTypes { google, apple, email, otp, none, createAccount }
