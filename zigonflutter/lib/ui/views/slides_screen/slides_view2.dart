import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';
import '../../../utility/app_utility.dart';
import '../../../utility/button_handler.dart';
import '../../../utility/navigation_utility.dart';
import '../../../utility/network_utility.dart';
import '../../widgets/slides_widgets.dart';
import 'video_player.dart';

class VideoSwiper extends StatelessWidget {
  VideoSwiper({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonWidgets.bottomFloatingBar(context),
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
                    child: RefreshIndicator(
                      onRefresh: () async {
                        await ctrl.fetchMoreVideos(newStart: 0, refresh: true);
                      },
                      child: Swiper(
                        itemCount: ctrl.videoList.length,
                        itemBuilder: (BuildContext context, int index) {
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
                                SlidesWidget.onTopGradient(context),
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
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 70),
                                  child: RightToolBar(
                                    index: index,
                                    slideScreenController: ctrl,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 70),
                                  child: BottomToolbar(
                                    index: index,
                                    slideScreenControler: ctrl,
                                  ),
                                )
                              ],
                            );
                          } else {
                            return Container(); // Empty container for better performance
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

class RightToolBar extends StatelessWidget {
  RightToolBar(
      {Key? key, required this.index, required this.slideScreenController})
      : super(key: key);
  int index;
  SlideScreenController slideScreenController;
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
                      buttonTypes: ButtonTypes.like,
                      context: context,
                      value: {
                        "index": index,
                        "videoId": slideScreenController
                            .slideListModel!.msg[index].video.id
                      },
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      slideScreenController
                              .slideListModel!.msg[index].video.isVideoLiked
                          ? const Icon(Icons.favorite,
                              color: Colors.red, size: 30)
                          : const Icon(Icons.favorite_border_outlined,
                              color: Colors.white, size: 30),
                      const SizedBox(height: 3),
                      Text(
                        '${slideScreenController.slideListModel!.msg[index].video.like_count} ',
                        style: AppUtil.textStyle2(
                          textSize: 14,
                          weight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                slideScreenController
                            .slideListModel!.msg[index].video.allow_comments ==
                        "true"
                    ? GestureDetector(
                        onTap: () {
                          log('Comment List');
                          ButtonHandler.onTapHandler(
                            context: context,
                            buttonTypes: ButtonTypes.comment,
                            subButtonType: SubButtonType.openDialog,
                            value: slideScreenController
                                .slideListModel!.msg[index].video.id,
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.mode_comment_outlined,
                                color: Colors.white, size: 30),
                            const SizedBox(height: 3),
                            Text(
                              '${slideScreenController.slideListModel!.msg[index].video.comment_count}',
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
                    List shareData = [
                      slideScreenController
                          .slideListModel!.msg[index].video.video
                    ];
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
  BottomToolbar(
      {Key? key, required this.index, required this.slideScreenControler})
      : super(key: key);
  int index;
  SlideScreenController slideScreenControler;
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Profile picture
                  GestureDetector(
                    onTap: () {
                      if (index > 0) {
                        Get.toNamed(PageRouteList.profile);
                      }
                    },
                    child: slideScreenControler
                                .slideListModel?.msg[index].user.profile_pic ==
                            null
                        ? const CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/prodp.jpg'),
                          )
                        : CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(IMG_URL +
                                slideScreenControler.slideListModel!.msg[index]
                                    .user.profile_pic!),
                          ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '${slideScreenControler.slideListModel!.msg[index].user.username}',
                    style: AppUtil.textStyle1(weight: FontWeight.w600),
                  ),
                  const SizedBox(width: 25),
                  const Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                    size: 16,
                  ),
                  Text(
                    '${slideScreenControler.slideListModel!.msg[0].video.view}',
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
                  '${slideScreenControler.slideListModel!.msg[index].video.description}',
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
                      '${slideScreenControler.slideListModel!.msg[index].sound.name}',
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
