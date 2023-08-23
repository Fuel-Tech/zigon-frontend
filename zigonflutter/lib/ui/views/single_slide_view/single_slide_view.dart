import 'dart:developer';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../../controllers/slide_screen_controller.dart';
import '../../../utility/app_utility.dart';
import '../../../utility/button_handler.dart';
import '../../../utility/navigation_utility.dart';
import '../../../utility/network_utility.dart';
import '../../widgets/common_widgets.dart';
import '../../widgets/slides_widgets.dart';

class SingleSlideView extends StatefulWidget {
  final String videoUrl;

  SingleSlideView({required this.videoUrl});

  @override
  State<SingleSlideView> createState() => _SingleSlideViewState();
}

class _SingleSlideViewState extends State<SingleSlideView> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    initializeController();
  }

  Future<void> initializeController() async {
    log(widget.videoUrl);
    final file = await DefaultCacheManager().getSingleFile(widget.videoUrl);
    _controller = VideoPlayerController.file(file);
    _initializeVideoPlayerFuture = _controller!.initialize();
    setState(() {});
    _controller!.play();
    _controller!.setLooping(true);
  }
  // 642c6ab15ef311

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  setIt() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return VideoPlayer(_controller!);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class SlideBackground extends StatelessWidget {
  const SlideBackground({required this.videoUrl});
  final String videoUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        backgroundColor: Colors.black,
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: GetBuilder<SlideScreenController>(builder: (ctrl) {
          return Obx(
            () => ctrl.isVideoLoading.isTrue
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : GestureDetector(
                    onTap: () {
                      log("TAP DETECTED");
                      ctrl.toggleMute();
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // VIDEO PLAYER
                        SingleSlideView(
                          videoUrl: videoUrl,
                        ),
                        SlidesWidget.onTopGradient(context),
                        // SafeArea(
                        //   child: Align(
                        //     alignment: Alignment.topLeft,
                        //     child: SizedBox(
                        //       width: AppUtil.screenWidth(context),
                        //       child: Padding(
                        //         padding: const EdgeInsets.all(8.0),
                        //         child: Row(
                        //           mainAxisAlignment:
                        //               MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             Row(
                        //               children: [
                        //                 SlidesWidget.watchAllSlidesButton(
                        //                   context,
                        //                 ),
                        //                 const SizedBox(width: 10),
                        //                 // SlidesWidget.watchFollowingSlidesButton(
                        //                 //     context),
                        //               ],
                        //             ),
                        //             // SlidesWidget.liveButton(),
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        RightToolBar(
                          index: 0,
                        ),
                        BottomToolbar(
                          index: 0,
                        )
                      ],
                    ),
                  ),
          );
        }));
  }
}

class RightToolBar extends StatelessWidget {
  RightToolBar({
    Key? key,
    required this.index,
  }) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: FractionalOffset.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    ButtonHandler.onTapHandler(
                        buttonTypes: ButtonTypes.like, context: context);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      false
                          ? Icon(Icons.favorite, color: Colors.red, size: 30)
                          : Icon(Icons.favorite_border_outlined,
                              color: Colors.white, size: 30),
                      const SizedBox(height: 3),
                      Text(
                        '0 ',
                        style: AppUtil.textStyle2(
                          textSize: 14,
                          weight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                true
                    ? GestureDetector(
                        onTap: () {
                          log('Comment List');
                          ButtonHandler.onTapHandler(
                              context: context,
                              buttonTypes: ButtonTypes.comment,
                              subButtonType: SubButtonType.openDialog);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.mode_comment_outlined,
                                color: Colors.white, size: 30),
                            const SizedBox(height: 3),
                            Text(
                              '12 ',
                              style: AppUtil.textStyle2(
                                  textSize: 14, weight: FontWeight.w400),
                            )
                          ],
                        ),
                      )
                    : Container(),
                GestureDetector(
                  onTap: () {
                    log('Share');
                    List shareData = [""];
                    ButtonHandler.onTapHandler(
                        buttonTypes: ButtonTypes.share,
                        value: shareData,
                        context: context);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.share_outlined,
                          color: Colors.white, size: 30),
                      const SizedBox(height: 3),
                      Text(
                        'Share',
                        style: AppUtil.textStyle1(
                            textSize: 14, weight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SlidesWidget.settingsWidget(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomToolbar extends StatelessWidget {
  BottomToolbar({Key? key, required this.index}) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 55,
          bottom: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 5),
            //Name, tag, views, options
            GestureDetector(
              onTap: () {
                ButtonHandler.onTapHandler(
                    buttonTypes: ButtonTypes.profile, context: context);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //Profile picture
                  GestureDetector(
                    onTap: () {
                      if (index > 0) {
                        Get.toNamed(PageRouteList.profile);
                      }
                    },
                    child: true
                        ? const CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/prodp.jpg'),
                          )
                        : CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(""),
                          ),
                  ),
                  Text(
                    'harry',
                    style: AppUtil.textStyle1(weight: FontWeight.w600),
                  ),
                  const SizedBox(width: 25),
                  const Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                    size: 16,
                  ),
                  Text(
                    'harry',
                    style: AppUtil.textStyle2(textSize: 12),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 5),
            //Video Description
            FittedBox(
              child: SizedBox(
                width: AppUtil.screenWidth(context) / 1.5,
                child: Text(
                  'asdq21',
                  style: AppUtil.textStyle2(
                    textSize: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/disc.png'),
                ),
                const SizedBox(width: 5),
                FittedBox(
                  child: SizedBox(
                    width: AppUtil.screenWidth(context) / 1.5,
                    child: Text(
                      'song',
                      style: AppUtil.textStyle2(
                        textSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
