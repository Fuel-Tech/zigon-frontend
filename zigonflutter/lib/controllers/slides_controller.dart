import 'dart:developer';

import 'package:chewie/chewie.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:zigonflutter/utility/navigation_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';

import '../models/comment-list-model/comment_list_model.dart';
import '../models/slide-list-model/slide_list_model.dart';

class SlidesController extends GetxController {
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

  List previousCache = []; //Upper Cache
  List forwardCache = []; //Lower Cache

  @override
  void onInit() {
    super.onInit();
    isUserLoggedIn();
    getVideos();
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

  //App Initialized Function
  initializeApp() async {
    //GetSlides
    //Load Slides to Playlist
    await loadPlaylist(); //Playlist loaded
    //Initialize VideoPlayerController and Play first video from the Playlist
    await initalizeVideoPlayer();
    //Goto Slides Page
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Get.toNamed(PageRouteList.slides));
  }

  //------------------------------------------------------------------------------------------------------------------------------

  bool isLoggedIn = false;

  isUserLoggedIn() async {
    var userToken =
        await SharedPrefHandler.getString(SharedPrefHandler.USERTOKEN);
    if (userToken == null || userToken == "USERTOKEN") {
      isLoggedIn = false;
    } else {
      isLoggedIn = true;
    }
  }

  ///Load videos from Server
  ///
  ///videoURL, videoDuration, videoName, videoTags, videoDescription, videoLikes, videoComments[], audioName, audio, audioID,metadata[username, userID, userTag]
  SlideListModel? slideList;
  getVideos() async {
    Dio dio = Dio();
    String postUrl = 'https://mocki.io/v1/0ba63d27-1cfe-4f14-8f00-8ab2d578b892';
    try {
      var response = await dio.get(postUrl);
      log(response.toString());
      if (response.statusCode == 200) {
        slideList = SlideListModel.fromJson(response.data);
        getLikeCountForVideoByIndex(0);
        Get.toNamed(PageRouteList.slides);
        log(slideList.toString());
      }
    } catch (e) {
      log(e.toString());
    }
  }

  loadNextVideoTemp() async {
    Dio dio = Dio();
    String postUrl = 'https://mocki.io/v1/b7fe12e9-ba5f-4a26-a005-2f96a301aea0';
    try {
      var response = await dio.get(postUrl);
      log(response.toString());
      if (response.statusCode == 200) {
        slideList = SlideListModel.fromJson(response.data);
        getLikeCountForVideoByIndex(0);
        Get.toNamed(PageRouteList.slides);
        log(slideList.toString());
      }
    } catch (e) {
      log(e.toString());
    }
  }

  //Likes
  int likeCountForCurrentVideo = 0;
  getLikeCountForVideoByIndex(int index) {
    likeCountForCurrentVideo = slideList!.slideList[index].slideLikes;
    update();
  }

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

  bool userLiked = false;
  bool isLiked = false;
  likeButtonHandler(var index) {
    if (isLiked) {
      log('Update Liked status to disliked');
      likeCountForCurrentVideo--;
      isLiked = false;
    } else {
      log('Update Liked status to liked');
      likeCountForCurrentVideo++;
      isLiked = true;
    }
    update();
  }

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
}
