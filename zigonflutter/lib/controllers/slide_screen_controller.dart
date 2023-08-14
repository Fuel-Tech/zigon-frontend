import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
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

  setVideoData(SlideListModel? data) {
    try {
      if (data != null) {
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
          log(slideListModel!.msg[i].video.video);
          temp.add(slideListModel!.msg[i].video.video);
        }
        videoList.addAll(temp);
      }
    } catch (e) {
      log("Error while setting videos: $e");
    }
  }

  Future<void> fetchMoreVideos() async {
    isLoading.value = true;
    String userID = await SharedPrefHandler.getInstance()
            .getString(SharedPrefHandler.USERID) ??
        '0';
    startingPoint = startingPoint + 1;
    log("Getting video for slides_view");
    String endpoint = 'showRelatedVideos';
    String body = '''{
      "user_id":${int.tryParse(userID)},
      "starting_point":$startingPoint,
      "device_id":1,
      "limit":4
    }''';
    var response = await NetworkHandler.dioPost(endpoint, body: body);
    if (response['code'] == 200) {
      var json = jsonDecode(response);
      var newSlideListModel = SlideListModel.fromJson(json);
      setVideoData(newSlideListModel);
      isLoading.value = false;
    } else if (response['code'] == 201) {
      log("NO MORE VIDEOS TO SHOW!!!");
    }
    // slideListModel = SlideListModel.fromJson(json);
    // setVideoData(slideListModel!);
    return;
  }

  RxBool commentLoader = false.obs;
  // COMMENTS
  CommentListModel? commentList;
  getComments() async {
    commentLoader.value = true;
    Dio dio = Dio();
    String postUrl = 'https://mocki.io/v1/ba663eae-94c4-4176-a73c-9e167ef48697';

    var response = await dio.get(postUrl);
    log(response.toString());
    if (response.statusCode == 200) {
      commentList = CommentListModel.fromJson(response.data);
      Get.toNamed(PageRouteList.slides);
      // log(commentList.toString());
      update();
    } else {
      Get.snackbar("Try Again",
          "Unable to fetch comments, check your network and try agian🫡",
          colorText: Colors.black, backgroundColor: Colors.white);
    }

    commentLoader.value = false;
  }

  TextEditingController commentFieldController = TextEditingController();

  RxBool addingComment = false.obs;
  Future<void> addComment(String videoId, String comment) async {
    addingComment.value = true;
    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String url = "postCommentOnVideo";
    String body = '''{
      "video_id": $videoId,
      "user_id": $userID,
      "comment": $comment
    }''';

    var response = await NetworkHandler.dioPost(url, body: body);
    log(response.toString());
    var json = jsonDecode(response);
    if (json['code'] == 200) {
      log(json.toString());
      getComments();
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

  // USER LOGIN HANDLER
  TextEditingController emailFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();
  RxBool isLoading = false.obs;
  userLogin() async {
    isLoading.value = true;
    log("loggin in");
    String path = 'login';
    String body = '''{
      "email": "${emailFieldController.text}",
      "password":"${passwordFieldController.text}"
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

  RxBool isLiked = false.obs;
  toggleLike() {
    isLiked.value = !isLiked.value;
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
    activeVideoController?.pause();
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
    super.onInit();
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
  }

  @override
  void onClose() {
    super.onClose();
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
