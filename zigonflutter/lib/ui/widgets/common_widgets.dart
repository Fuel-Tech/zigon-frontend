import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/controllers/app_controller.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/button_handler.dart';

class CommonWidgets {
  static Widget bottomFloatingBar(BuildContext context) {
    final AppController appController = Get.put(AppController());
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4.0,
            sigmaY: 4.0,
          ),
          child: GetBuilder<AppController>(builder: (controller) {
            return Container(
              width: AppUtil.screenWidth(context) - 20,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(40),
              ),
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Slide Icon
                  GestureDetector(
                    onTap: () {
                      ButtonHandler.onTapHandler(
                          buttonTypes: ButtonTypes.slide, context: context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: FaIcon(
                        FontAwesomeIcons.film,
                        color: appController.selectedNavBarItem ==
                                NavBarSelectionItem.slide
                            ? Colors.white
                            : Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),

                  //Discover Icon
                  GestureDetector(
                    onTap: () {
                      //Goto Discover Page
                      ButtonHandler.onTapHandler(
                          buttonTypes: ButtonTypes.discover, context: context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: FaIcon(
                        FontAwesomeIcons.earthAsia,
                        color: appController.selectedNavBarItem ==
                                NavBarSelectionItem.discover
                            ? Colors.white
                            : Colors.grey,
                        size: 20,
                      ),
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
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: FaIcon(
                        FontAwesomeIcons.bell,
                        color: appController.selectedNavBarItem ==
                                NavBarSelectionItem.notification
                            ? Colors.white
                            : Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),

                  //Profile Icon
                  GestureDetector(
                    onTap: () {
                      ButtonHandler.onTapHandler(
                          buttonTypes: ButtonTypes.userprofile,
                          context: context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: appController.selectedNavBarItem ==
                                NavBarSelectionItem.userprofile
                            ? Colors.white
                            : Colors.grey,
                        size: 20,
                      ),
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
    showDialog(
      context: context,
      builder: (_) => GetBuilder<AppController>(builder: (controller) {
        return SimpleDialog(
          backgroundColor: Colors.transparent,
          alignment: Alignment.bottomCenter,
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
          contentPadding: EdgeInsets.zero,
          children: [commentDialogWidget(context)],
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

  static commentDialogWidget(BuildContext context) {
    final SlideScreenController slideScreenController = Get.find();
    return GetBuilder<SlideScreenController>(builder: (ctrl) {
      return Container(
        width: AppUtil.screenWidth(context),
        height: AppUtil.screenHeight(context),
        decoration: BoxDecoration(
          color: AppUtil.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
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
            Obx(
              () => slideScreenController.commentLoader.value
                  ? CircularProgressIndicator(
                      color: AppUtil.secondary,
                    )
                  : Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        // physics: BouncingScrollPhysics(),
                        physics: BouncingScrollPhysics(),
                        itemCount:
                            slideScreenController.commentList?.msg.length ?? 0,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // PROFILE PIC
                                    CircleAvatar(
                                      backgroundColor: Colors.amber,
                                      radius: 24,
                                      backgroundImage: NetworkImage(
                                          '${slideScreenController.commentList!.msg[index].user.profilePicSmall}'),
                                    ),
                                    const SizedBox(width: 10),
                                    // NAME, COMMENT, DATE, LIKE, REPLY BTN
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${slideScreenController.commentList!.msg[index].user.userName}',
                                          style: AppUtil.textStyle2(
                                              weight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 5),
                                        SizedBox(
                                          width: Get.width - 150,
                                          child: Text(
                                            '${slideScreenController.commentList!.msg[index].comment}',
                                            style: AppUtil.textStyle2(
                                                weight: FontWeight.w400),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              slideScreenController.getTime(
                                                  slideScreenController
                                                      .commentList!
                                                      .msg[index]
                                                      .created),
                                              style: AppUtil.textStyle2(
                                                textColor: Colors.grey,
                                                textSize: 12,
                                                weight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            Text(
                                              '${slideScreenController.commentList!.msg[index].likeCount} likes',
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
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: false
                                          ? Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                            )
                                          : Icon(Icons.favorite_outline),
                                    ),
                                    Text(
                                        "${slideScreenController.commentList!.msg[index].likeCount}")
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: TextFormField(
                controller: ctrl.commentFieldController,
                decoration: InputDecoration(
                    suffixIcon: Obx(
                      () => ctrl.addingComment.isTrue
                          ? CircularProgressIndicator(
                              color: AppUtil.secondary,
                            )
                          : IconButton(
                              onPressed: () {
                                if (ctrl.commentFieldController.text
                                        .removeAllWhitespace !=
                                    '') {
                                  ctrl.addComment(
                                      ctrl
                                          .slideListModel!
                                          .msg[ctrl.currentIndex.value]
                                          .video
                                          .id,
                                      ctrl.commentFieldController.text);
                                }
                              },
                              icon: Icon(
                                Icons.send,
                                size: 30,
                                color: ctrl.commentFieldController.text
                                            .removeAllWhitespace ==
                                        ''
                                    ? Colors.grey
                                    : AppUtil.secondary,
                              ),
                            ),
                    ),
                    isDense: true,
                    hintText: 'Add comment...',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )),
              ),
            )
          ],
        ),
      );
    });
  }

  static AppBar customAppBar({
    required String title,
    Color appbarColor = AppUtil.primary,
    List<Widget>? action,
  }) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.raleway(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      elevation: 0,
      scrolledUnderElevation: 2,
      shadowColor: Colors.white,
      backgroundColor: appbarColor,
      actions: action,
    );
  }
}
