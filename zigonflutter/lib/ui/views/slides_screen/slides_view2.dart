import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:card_swiper/card_swiper.dart';
import '../../../utility/app_utility.dart';
import '../../../utility/button_handler.dart';
import '../../widgets/slides_widgets.dart';
import 'video_player.dart';

class VideoSwiper extends StatelessWidget {
  const VideoSwiper({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: Obx(
        //   () => Get.find<SlideScreenController>().isFullScreen.value
        //       ? Container()
        //       : CommonWidgets.bottomFloatingBar(context),
        // ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: GetBuilder<SlideScreenController>(builder: (ctrl) {
          return Obx(
            () => ctrl.isVideoLoading.value
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : GestureDetector(
                    onTap: () {
                      log("VIDEO PLAYING: ${ctrl.isPlaying}");
                      ctrl.togglePause();
                    },
                    onDoubleTap: () {
                      // ctrl.toggleMute();
                      ButtonHandler.onTapHandler(
                          buttonTypes: ButtonTypes.like,
                          context: context,
                          value: {
                            "index": ctrl.currentIndex.value,
                            "videoId": ctrl.slideListModel!
                                .msg[ctrl.currentIndex.value].video.id
                          });
                    },
                    onLongPress: () {
                      ctrl.toggleFullScreen();
                      // bottomBarKey.currentState?.toggleNavBar();
                    },
                    child: RefreshIndicator(
                      onRefresh: () async {
                        await ctrl.fetchMoreVideos(refresh: true);
                      },
                      child: Swiper(
                        itemCount: ctrl.videoList.length,
                        itemBuilder: (BuildContext context, int index) {
                          log("CONDITONS: ${ctrl.videoList.length}");
                          if (ctrl.currentIndex.value == index) {
                            return Stack(
                              alignment: Alignment.center,
                              children: [
                                // VIDEO PLAYER
                                CachedVideoPlayer(
                                  thumb: ctrl
                                      .slideListModel!.msg[index].video.thum,
                                  videoUrl: ctrl.videoList[index],
                                  onInitialized: (controller) =>
                                      ctrl.updateIndex(index, controller),
                                ),

                                // ON TOP GRADIENT
                                Obx(() => AnimatedOpacity(
                                      opacity: Get.find<SlideScreenController>()
                                              .isFullScreen
                                              .value
                                          ? 0
                                          : 1,
                                      duration: Duration(milliseconds: 300),
                                      child:
                                          SlidesWidget.onTopGradient(context),
                                    )),
                                SafeArea(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: SizedBox(
                                      width: AppUtil.screenWidth(context),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SlidesWidget
                                                    .watchAllSlidesButton(
                                                  context,
                                                ),
                                                const SizedBox(width: 10),
                                                // SlidesWidget.watchFollowingSlidesButton(
                                                //     context),
                                              ],
                                            ),
                                            // SlidesWidget.liveButton(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // RIGHT TOOLBAR
                                Obx(
                                  () => AnimatedOpacity(
                                    opacity: ctrl.isFullScreen.value ? 0 : 1,
                                    duration: Duration(milliseconds: 300),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 70),
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
                                        padding:
                                            const EdgeInsets.only(bottom: 70),
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
                            ctrl.fetchMoreVideos();
                          }
                        },
                        loop: false,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        axisDirection: AxisDirection.down,
                      ),
                    ),
                  ),
          );
        }));
  }
}

likeAnimDialog() {
  Future.delayed(Duration(milliseconds: 400)).then((value) => Get.back());
  Get.dialog(
      Lottie.asset(
        "assets/images/like.json",
        frameRate: FrameRate(60),
        onLoaded: (p0) {},
      ),
      barrierDismissible: false,
      barrierColor: Colors.transparent);
}
