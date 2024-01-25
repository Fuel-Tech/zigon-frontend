import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/utility/app_utility.dart';

import '../../controllers/profile_controller.dart';
import '../../controllers/single_slide_controller.dart';
import '../../utility/button_handler.dart';
import '../../utility/navigation_utility.dart';
import '../../utility/network_utility.dart';

class SlidesWidget {
  static watchAllSlidesButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ButtonHandler.onTapHandler(
            buttonTypes: ButtonTypes.slidesList, context: context);
      },
      child: Text(
        'Slides',
        style: AppUtil.textStyle1(
          textSize: 20,
          weight: FontWeight.w700,
        ),
      ),
    );
  }

  static onTopGradient(BuildContext context) {
    return Container(
      width: AppUtil.screenWidth(context),
      height: AppUtil.screenHeight(context),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.05),
            Colors.black.withOpacity(0.2),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.7),
          ],
          stops: [
            0.1,
            0.6,
            0.8,
            0.9,
          ],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
    );
  }

  static Widget settingsWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Settings Function
        ButtonHandler.onTapHandler(
            buttonTypes: ButtonTypes.setting,
            subButtonType: SubButtonType.openDialog,
            context: context);
      },
      child: Column(
        children: [
          Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
          const SizedBox(height: 1),
          Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
          const SizedBox(height: 1),
          Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }

  static watchFollowingSlidesButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.snackbar(
            'Bad Connectivity', 'Please check your internet connection');

        // ButtonHandler.onTapHandler(
        //     buttonTypes: ButtonTypes.followingSlidesList, context: context);
      },
      child: Text(
        'Following',
        style: AppUtil.textStyle1(
          textSize: 16,
          weight: FontWeight.w500,
        ),
      ),
    );
  }

  static liveButton() {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          const FaIcon(
            FontAwesomeIcons.video,
            color: Colors.amber,
            size: 16,
          ),
          const SizedBox(width: 3),
          Text(
            'Live',
            style: AppUtil.textStyle1(
              textSize: 16,
              weight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class RightToolBar extends StatelessWidget {
  RightToolBar({
    Key? key,
    required this.index,
    required this.controller,
  }) : super(key: key);
  final int index;
  final controller;
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
                        "videoId":
                            controller.slideListModel!.msg[index].video.id
                      },
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      controller.slideListModel!.msg[index].video.isVideoLiked
                          ? const Icon(Icons.favorite,
                              color: Colors.red, size: 30)
                          : const Icon(Icons.favorite_border_outlined,
                              color: Colors.white, size: 30),
                      const SizedBox(height: 3),
                      Text(
                        '${controller.slideListModel!.msg[index].video.like_count} ',
                        style: AppUtil.textStyle2(
                          textSize: 14,
                          weight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                controller.slideListModel!.msg[index].video.allow_comments ==
                        "true"
                    ? GestureDetector(
                        onTap: () {
                          log('Comment List');
                          ButtonHandler.onTapHandler(
                            context: context,
                            buttonTypes: ButtonTypes.comment,
                            subButtonType: SubButtonType.openDialog,
                            value:
                                controller.slideListModel!.msg[index].video.id,
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.mode_comment_outlined,
                                color: Colors.white, size: 30),
                            const SizedBox(height: 3),
                            Text(
                              '${controller.slideListModel!.msg[index].video.comment_count}',
                              style: AppUtil.textStyle2(
                                  textSize: 14, weight: FontWeight.w400),
                            )
                          ],
                        ),
                      )
                    : const SizedBox.shrink(),
                GestureDetector(
                  onTap: () {
                    log('Share');
                    final shareData = {
                      "videoId": controller.slideListModel!.msg[index].video.id
                    };
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
  BottomToolbar({Key? key, required this.index, this.controller})
      : super(key: key);
  final int index;
  final controller;
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
                  InkWell(
                    onTap: () async {
                      if (Get.isRegistered<ProfileController>()) {
                        Get.delete<ProfileController>();
                      }
                      controller.stopActiveVideo();
                      Get.toNamed(PageRouteList.profile, arguments: {
                        'id': controller.slideListModel!.msg[index].user.id,
                        "fromSlides": true,
                      });
                    },
                    child: Row(
                      children: [
                        controller.slideListModel?.msg[index].user
                                    .profile_pic ==
                                null
                            ? const CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/images/prodp.jpg'),
                              )
                            : CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(IMG_URL +
                                    controller.slideListModel!.msg[index].user
                                        .profile_pic!),
                              ),
                        SizedBox(width: 5),
                        Text(
                          '${controller.slideListModel!.msg[index].user.username}',
                          style: AppUtil.textStyle1(weight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 15),
                  const Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '${controller.slideListModel!.msg[0].video.view}',
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
                  '${controller.slideListModel!.msg[index].video.description}',
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
                      '${controller.slideListModel!.msg[index].sound.name}',
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
