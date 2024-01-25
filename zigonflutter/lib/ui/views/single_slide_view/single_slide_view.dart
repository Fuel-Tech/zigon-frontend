import 'dart:developer';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../../../controllers/single_slide_controller.dart';
import '../../widgets/slides_widgets.dart';

class SlideBackground extends StatelessWidget {
  SlideBackground({super.key});
  final SingleSlideController controller = Get.put(SingleSlideController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: GetBuilder<SingleSlideController>(builder: (ctrl) {
          return Obx(
            () => ctrl.isLoading.isTrue
                ? Center(
                    child: SpinKitDoubleBounce(
                    color: Colors.white,
                  ))
                : GestureDetector(
                    onTap: () {
                      ctrl.togglePause();
                    },
                    onLongPress: () {
                      ctrl.toggleFullScreen();
                    },
                    child: Swiper(
                      itemCount: ctrl.videoList.length,
                      itemBuilder: (context, index) {
                        if (controller.currentIndex.value == index) {
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              // VIDEO PLAYER
                              SingleSlideView(
                                thumb:
                                    ctrl.slideListModel!.msg[index].video.thum,
                                videoUrl: ctrl.videoList[index],
                                onInitialized: (controller) =>
                                    ctrl.updateIndex(index, controller),
                              ),

                              // ON TOP GRADIENT
                              Obx(() => AnimatedOpacity(
                                    opacity: ctrl.isFullScreen.value ? 0 : 1,
                                    duration: Duration(milliseconds: 300),
                                    child: SlidesWidget.onTopGradient(context),
                                  )),

                              // RIGHT TOOLBAR
                              Obx(
                                () => AnimatedOpacity(
                                  opacity: ctrl.isFullScreen.value ? 0 : 1,
                                  duration: Duration(milliseconds: 300),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 70),
                                    child: RightToolBar(
                                      index: index,
                                      controller: ctrl,
                                    ),
                                  ),
                                ),
                              ),

                              // BOTTOM TOOLBAR
                              Obx(() => AnimatedOpacity(
                                    opacity: ctrl.isFullScreen.value ? 0 : 1,
                                    duration: Duration(milliseconds: 300),
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 0),
                                      child: BottomToolbar(
                                        index: index,
                                        controller: ctrl,
                                      ),
                                    ),
                                  )),
                            ],
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                      onIndexChanged: (index) {
                        ctrl.stopActiveVideo();
                        ctrl.updateIndex(index, null);
                        if (index == ctrl.videoList.length - 1) {
                          log("Last Video");
                          ctrl.fetchMoreVideos(newStart: ctrl.startingPoint++);
                        }
                      },
                      loop: false,
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      axisDirection: AxisDirection.down,
                    ),
                  ),
          );
        }));
  }
}

class SingleSlideView extends StatefulWidget {
  final String videoUrl;
  final String thumb;
  final Function(VideoPlayerController)? onInitialized;
  SingleSlideView(
      {required this.videoUrl, required this.thumb, this.onInitialized});

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
    _initializeVideoPlayerFuture = _controller!.initialize().then((_) {
      setState(() {});
      widget.onInitialized?.call(_controller!);
      _controller!.play();
      _controller!.setLooping(true);
    });
  }
  // 642c6ab15ef311

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_initializeVideoPlayerFuture == null || _controller == null) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.thumb),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return VideoPlayer(_controller!);
        } else {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.thumb),
                fit: BoxFit.fill,
              ),
            ),
          );
        }
      },
    );
  }
}
