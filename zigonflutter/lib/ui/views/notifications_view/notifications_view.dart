import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/controllers/notification_controller.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';
import 'package:zigonflutter/utility/app_utility.dart';

class NotificationsView extends StatelessWidget {
  NotificationsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => NotificationController());

    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: CommonWidgets.bottomFloatingBar(context),
      backgroundColor: AppUtil.primary,
      extendBodyBehindAppBar: true,
      appBar: CommonWidgets.customAppBar(title: 'Notifications'),
      body: GetBuilder<NotificationController>(builder: (ctrl) {
        return ctrl.isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: AppUtil.secondary,
                ),
              )
            : Column(
                children: [
                  Expanded(
                    child: ctrl.notificationModel == null
                        ? Center(
                            child: Text(
                              "No notifications for now",
                              style: GoogleFonts.quicksand(color: Colors.white),
                            ),
                          )
                        : ListView.builder(
                            itemCount: ctrl.notificationModel?.msg.length ?? 0,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  child: BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                                    child: GestureDetector(
                                      onTap: () {
                                        // TODO: NOTIFICATION HANDLER
                                        ctrl.onNotificationTap(
                                            ctrl.notificationModel!.msg[index]
                                                .notification.type,
                                            value: {
                                              "video": ctrl.notificationModel!
                                                  .msg[index].video.video,
                                              "username": ctrl
                                                  .notificationModel!
                                                  .msg[index]
                                                  .receiver[0]
                                                  .userName,
                                              "thumb": ctrl.notificationModel!
                                                  .msg[index].video.thum,
                                              "likeCount": "0",
                                              "commentCount": "0",
                                              "description": ctrl
                                                  .notificationModel!
                                                  .msg[index]
                                                  .video
                                                  .description,
                                              "sound": "sound",
                                              "soundId": ctrl.notificationModel!
                                                  .msg[index].video.soundId,
                                              "profilePic": ctrl
                                                  .notificationModel!
                                                  .msg[index]
                                                  .receiver[0]
                                                  .profilePic,
                                            });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    AppUtil.formatter1.format(
                                                      ctrl
                                                          .notificationModel!
                                                          .msg[index]
                                                          .notification
                                                          .created,
                                                    ),
                                                    style:
                                                        GoogleFonts.raleway(),
                                                  ),
                                                  Text(
                                                    AppUtil.timeFormat
                                                        .format(ctrl.now),
                                                    style:
                                                        GoogleFonts.raleway(),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 20,
                                                    backgroundImage:
                                                        NetworkImage(
                                                      ctrl
                                                          .notificationModel!
                                                          .msg[index]
                                                          .sender[0]
                                                          .profilePic,
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Expanded(
                                                    child: Text(
                                                      ctrl
                                                          .notificationModel!
                                                          .msg[index]
                                                          .notification
                                                          .string,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                  SizedBox(height: 50)
                ],
              );
      }),
    );
  }
}
