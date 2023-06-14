import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:zigonflutter/models/user_profile_model/user_profile_model.dart';
import 'package:zigonflutter/utility/navigation_utility.dart';
import 'package:zigonflutter/utility/network_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';

import '../models/comment-list-model/comment_list_model.dart';
import '../models/slide-list-model/slide_list_model.dart';

class SlidesController extends GetxController with TextFieldControllers {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  List playlist = [' '];
  List dummyVideo = [
    'assets/videos/v1.mp4',
    'assets/videos/v2.mp4',
    'assets/videos/v3.mp4',
    'assets/videos/v4.mp4',
  ];

  List dummyVideo0 = [
    'assets/videos/v5.mp4',
    'assets/videos/v6.mp4',
    'assets/videos/v7.mp4',
  ];
  bool isLoading = false;
  List previousCache = []; //Upper Cache
  List forwardCache = []; //Lower Cache
  bool isAndroid = false;
  bool isIOS = false;

  @override
  void onInit() {
    super.onInit();
    if (Platform.isAndroid) {
      isAndroid = true;
    } else if (Platform.isIOS) {
      isIOS = true;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
  }

  ///Splash Check Function
  initializeApp() async {
    await isUserLoggedIn();
    await getVideos();
    Get.offAndToNamed(PageRouteList.slides);
  }

  //------------------------------------------------------------------------------------------------------------------------------

  bool isLoggedIn = false;

  logOut() async {
    await SharedPrefHandler.clearStorage();
    log("User Logged Out");
    Get.toNamed(PageRouteList.splash);
  }

  isUserLoggedIn() async {
    var userToken =
        await SharedPrefHandler.getString(SharedPrefHandler.USERTOKEN);
    log(userToken.toString());
    if (userToken == null || userToken == "USERTOKEN") {
      log('User Not Logged In');
      isLoggedIn = false;
    } else {
      log('User Logged In');
      isLoggedIn = true;
      await getUsedDetails();
    }
  }

  UserProfileModel? userProfileModel;

  userLogin() async {
    log("loggin in");
    String path = 'login';
    String body = '''{
      "email": "${emailFieldController.text}",
      "password":"${passwordFieldController.text}"
    }''';
    // var body = {"email": "jassimpv@gmail.com", "password": "123@123"};
    log(body.toString());
    var response = await NetworkHandler.dioAuth(path, body: body);
    log(response.toString());
    var json = jsonDecode(response);
    userProfileModel = UserProfileModel.fromJson(json);
    await SharedPrefHandler.setString(
        userProfileModel!.msg.User.auth_token.toString(),
        SharedPrefHandler.USERTOKEN);
    await SharedPrefHandler.setString(
        userProfileModel!.msg.User.id.toString(), SharedPrefHandler.USERID);
    log('User Auth Token Saved');
    isLoggedIn = true;
    Get.offAllNamed(PageRouteList.splash);
  }

  get getUserFirstName => userProfileModel?.msg.User.first_name ?? '';
  get getUserLastName => userProfileModel?.msg.User.last_name ?? '';
  get getUserProfileName => userProfileModel?.msg.User.username ?? '';
  get getUserGender => userProfileModel?.msg.User.gender ?? '';
  get getUserLikesCount =>
      userProfileModel?.msg.User.likes_count!.toStringAsFixed(0) ?? '';
  get getUserFollowersCount =>
      userProfileModel?.msg.User.followers_count!.toStringAsFixed(0) ?? '';
  get getUserFollowingCount =>
      userProfileModel?.msg.User.following_count!.toStringAsFixed(0) ?? '';
  get getUserVideoCount =>
      userProfileModel?.msg.User.following_count!.toStringAsFixed(0) ?? '';

  ///Load videos from Server
  SlideListModel? slideList;
  getVideos() async {
    log('Getting Videoss');
    String postUrl = 'showRelatedVideos';
    // String body = '''{
    //   "user_id": "1",
    //   "starting_point": "0"
    // }''';

    var response = await NetworkHandler.dioPost(postUrl);
    var json = jsonDecode(response.toString());
    // log(json.toString());
    if (json["code"] == 200) {
      slideList = SlideListModel.fromJson(json);
    }
  }

  getUsedDetails() async {
    String? userID =
        await SharedPrefHandler.getString(SharedPrefHandler.USERID);
    log(userID ?? "Null");
    String path = 'showUserDetail';
    String body = '''{
      "user_id": "$userID"
    }''';
    log(body);
    var response = await NetworkHandler.dioPost(path, body: body);
    log(response.toString());
    var json = jsonDecode(response.toString().replaceFirst('1', ''));
    userProfileModel = UserProfileModel.fromJson(json);
    return;
  }

  loadNextVideoTemp() async {
    Dio dio = Dio();
    String postUrl = 'https://mocki.io/v1/b7fe12e9-ba5f-4a26-a005-2f96a301aea0';
    try {
      var response = await dio.get(postUrl);
      log(response.toString());
      if (response.statusCode == 200) {
        slideList = SlideListModel.fromJson(response.data);
        // getLikeCountForVideoByIndex(0);
        Get.toNamed(PageRouteList.slides);
        log(slideList.toString());
      }
    } catch (e) {
      log(e.toString());
    }
  }

  //Likes
  // int likeCountForCurrentVideo = 0;
  // getLikeCountForVideoByIndex(int index) {
  //   likeCountForCurrentVideo = slideList!.slideList[index].slideLikes;
  //   update();
  // }

  ///Comments
  CommentListModel? commentList;
  getComments() async {
    Dio dio = Dio();
    String postUrl = 'https://mocki.io/v1/ba663eae-94c4-4176-a73c-9e167ef48697';
    try {
      var response = await dio.get(postUrl);
      log(response.toString());
      if (response.statusCode == 200) {
        commentList = CommentListModel.fromJson(response.data);
        Get.toNamed(PageRouteList.slides);
        // log(commentList.toString());
        update();
      }
    } catch (e) {}
  }

  // bool userLiked = false;
  // bool isLiked = false;
  // likeButtonHandler(var index) {
  //   if (isLiked) {
  //     log('Update Liked status to disliked');
  //     likeCountForCurrentVideo--;
  //     isLiked = false;
  //   } else {
  //     log('Update Liked status to liked');
  //     likeCountForCurrentVideo++;
  //     isLiked = true;
  //   }
  //   update();
  // }

  ///Initalize VideoplayerController, add video to controller and play.
  Future<void> initalizeVideoPlayer() async {
    log('Initalizing Video Player.......');
    videoPlayerController = VideoPlayerController.asset('assets/videos/v6.mp4');
    await Future.wait([videoPlayerController.initialize()]);

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: true,
        autoInitialize: true,
        showControls: false,
        showOptions: true);

    update();
    log('Video Player Initalized');
  }

  pausePlayer() {
    chewieController!.pause();
    update();
  }

  ///Load Videos to the Playlist
  loadPlaylist() {
    if (playlist.length >= 2) {
      if (playlist.length == 2) {
        loadNextVideos();
        log('Loaded Next Videos');
      }
    } else {
      //load (length of playlist - 1) videos to the list from postion 2nd position
      playlist.addAll(dummyVideo);
      log('Loaded Next Videos');
    }
    return;
  }

  loadNextVideos() {
    log('Getting Video');
    playlist.addAll(dummyVideo0);
  }

  dragUphandeler() {
    log(playlist[0].toString());
    previousCache.insert(0, playlist[0]);
    playlist.removeAt(0);
    // log(playlist[1] ?? 'null');
    log(previousCache.toString());
  }

  dragDownHandler() {
    if (playlist[0] == ' ') {
      playlist.clear();
      playlist.add(' ');
      loadPlaylist();
    } else {
      playlist.add(previousCache[0]);
      previousCache.add(playlist.last);
      playlist.last = null;
      playlist.length;
    }
  }

  testfn() {
    loadPlaylist();

    log(playlist.length.toString());
    log(playlist[1]);
    log(previousCache.toString());
    log(forwardCache.toString());
  }
  // -------------------------------------------

  var selectedNavBarItem = NavBarSelectionItem.slide;

  navBarHandler(var value) {
    selectedNavBarItem = value;
    update();
  }

  //----------------------------------------------------

  bool isTest = false;

  isTestHandle() {
    if (isTest) {
      isTest = false;
    } else {
      isTest = true;
    }
    update();
  }

  //LOGIN SHEET HANDLER----------------------------------------------------
  LoginTypes loginType = LoginTypes.none;

  loginTypeSelector(LoginTypes selectedType) {
    loginType = selectedType;
    update();
    // if (selectedType == LoginTypes.email) {
    //   loginType = LoginTypes.email;
    // } else if (selectedType == LoginTypes.otp) {
    //   loginType = LoginTypes.email;
    // } else if (selectedType == LoginTypes.google) {
    // } else if (selectedType == LoginTypes.apple) {}
  }

  // loginWithEmail(String email, String password) async {
  //   log('Logging in with Email');
  //   String path = 'login';
  //   String body = '''{}''';
  // }

  //-------------------------------------------------------

  //USER PROFILE PAGE CONTROLLERS---------------------------------

  ProfileTabSelected userProfileIsSelected = ProfileTabSelected.slides;

  userProfileSelector(ProfileTabSelected isSelected) {
    userProfileIsSelected = isSelected;
    update();
  }
}

enum ProfileTabSelected { slides, liked, saved }

enum LoginTypes { google, apple, email, otp, none, createAccount }

enum NavBarSelectionItem {
  slide,
  discover,
  addSlide,
  notification,
  profile,
  userprofile,
}

class PlayerController extends GetxController {
  @override
  Future<void> initializeVideoPlayerFuture(String videoUrl) async {
    slidesPlayerController = VideoPlayerController.network(videoUrl);

    await slidesPlayerController!.initialize().then((value) => {update()});
    update();
    return;
  }

  VideoPlayerController? slidesPlayerController;

  Future<void> initializeVideoPlayerFuture2(String videoUrl) async {
    slidesPlayerController = VideoPlayerController.network(
        'https://assets.mixkit.co/videos/preview/mixkit-tree-with-yellow-flowers-1173-large.mp4');

    await slidesPlayerController!.initialize().then((value) => {update()});
    update();
    return;
  }

  VideoPlayerController? slidesPlayerController2;
}

class TextFieldControllers {
  TextEditingController emailFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();
  TextEditingController otpFieldController = TextEditingController();

  clearTextControllers() {
    emailFieldController.clear();
    passwordFieldController.clear();
    otpFieldController.clear();
  }
}

enum ProfileNavBarItem { slides, liked, saved }
