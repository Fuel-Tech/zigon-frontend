import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/button_handler.dart';

class CommonWidgets {
  static Widget bottomFloatingBar(BuildContext context) {
    final SlidesController appController = Get.put(SlidesController());
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4.0,
            sigmaY: 4.0,
          ),
          child: GetBuilder<SlidesController>(builder: (controller) {
            return Container(
              width: AppUtil.screenWidth(context) - 20,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Slide Icon
                  GestureDetector(
                    onTap: () {
                      ButtonHandler.onTapHandler(
                          buttonTypes: ButtonTypes.slide, context: context);
                    },
                    child: FaIcon(
                      FontAwesomeIcons.film,
                      color: appController.selectedNavBarItem ==
                              NavBarSelectionItem.slide
                          ? Colors.white
                          : Colors.grey,
                      size: 20,
                    ),
                  ),

                  //Discover Icon
                  GestureDetector(
                    onTap: () {
                      //Goto Discover Page
                      ButtonHandler.onTapHandler(
                          buttonTypes: ButtonTypes.discover, context: context);
                    },
                    child: FaIcon(
                      FontAwesomeIcons.earthAsia,
                      color: appController.selectedNavBarItem ==
                              NavBarSelectionItem.discover
                          ? Colors.white
                          : Colors.grey,
                      size: 20,
                    ),
                  ),

                  //Add Slides Icon
                  GestureDetector(
                    onTap: () {
                      //Add Slides Function
                      ButtonHandler.onTapHandler(
                          buttonTypes: ButtonTypes.camera, context: context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        gradient: AppUtil.buttonGradient,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: const FaIcon(
                        FontAwesomeIcons.video,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),

                  //Notification Icon
                  GestureDetector(
                    onTap: () {
                      //Goto Notification Page
                      ButtonHandler.onTapHandler(
                          buttonTypes: ButtonTypes.notification,
                          context: context);
                    },
                    child: FaIcon(
                      FontAwesomeIcons.bell,
                      color: appController.selectedNavBarItem ==
                              NavBarSelectionItem.notification
                          ? Colors.white
                          : Colors.grey,
                      size: 20,
                    ),
                  ),

                  //Profile Icon
                  GestureDetector(
                    onTap: () {
                      ButtonHandler.onTapHandler(
                          buttonTypes: ButtonTypes.userprofile,
                          context: context);
                    },
                    child: FaIcon(
                      FontAwesomeIcons.user,
                      color: appController.selectedNavBarItem ==
                              NavBarSelectionItem.profile
                          ? Colors.white
                          : Colors.grey,
                      size: 20,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  static showDialogBox(BuildContext context,
      {ButtonTypes? buttonTypes, var values, SubButtonType? subButtonType}) {
    final SlidesController slidesController = Get.find();
    showDialog(
      context: context,
      builder: (_) => GetBuilder<SlidesController>(builder: (controller) {
        return SimpleDialog(
          backgroundColor: Colors.transparent,
          alignment: Alignment.bottomCenter,
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
          contentPadding: EdgeInsets.zero,
          children: [commentDialogWidget(context, slidesController)],
        );
      }),
    );
  }

  static Widget bottomSheetWidget(BuildContext context) {
    return BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            color: Colors.red,
            height: 100,
          );
        });
  }

  static commentDialogWidget(
      BuildContext context, SlidesController slidesController) {
    return Container(
      width: AppUtil.screenWidth(context),
      height: AppUtil.screenHeight(context) / 1.5,
      decoration: BoxDecoration(
        color: AppUtil.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Comments',
                style: AppUtil.textStyle1(
                  weight: FontWeight.w500,
                  textSize: 20,
                ),
              ),
            ),
            Divider(),
            const SizedBox(height: 20),
            slidesController.commentList == null
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount:
                          slidesController.commentList!.commentList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 24,
                                    backgroundImage: NetworkImage(
                                        '${slidesController.commentList!.commentList[index].userPic}'),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '${slidesController.commentList!.commentList[index].commentUser}',
                                            style: AppUtil.textStyle2(
                                                weight: FontWeight.w600),
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            '${slidesController.commentList!.commentList[index].comment}',
                                            style: AppUtil.textStyle2(
                                                weight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${slidesController.commentList!.commentList[index].commentedTime}',
                                            style: AppUtil.textStyle2(
                                              textColor: Colors.grey,
                                              textSize: 12,
                                              weight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            '${slidesController.commentList!.commentList[index].commentLike} likes',
                                            style: AppUtil.textStyle2(
                                              textColor: Colors.grey,
                                              textSize: 12,
                                              weight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            'Reply',
                                            style: AppUtil.textStyle2(
                                              textColor: Colors.grey,
                                              textSize: 12,
                                              weight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
