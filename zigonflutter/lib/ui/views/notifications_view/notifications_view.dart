import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/controllers/notification_controller.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';
import 'package:zigonflutter/utility/app_utility.dart';

class NotificationsView extends StatelessWidget {
  NotificationsView({Key? key}) : super(key: key);
  final NotificationController notificationController =
      Get.put(NotificationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonWidgets.bottomFloatingBar(context),
      backgroundColor: AppUtil.primary,
      extendBodyBehindAppBar: true,
      appBar: CommonWidgets.customAppBar(title: 'Notifications'),
      body: GetBuilder<NotificationController>(builder: (controller) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                        child: GestureDetector(
                          onTap: () {
                            Get.snackbar('Bad Connectivity',
                                'Please check your internet connection.');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        AppUtil.formatter1
                                            .format(notificationController.now),
                                        style: GoogleFonts.raleway(),
                                      ),
                                      Text(
                                        AppUtil.timeFormat
                                            .format(notificationController.now),
                                        style: GoogleFonts.raleway(),
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
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                          child: Text(
                                              'Jaachu_, commented on your video "Good One Bro".'))
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
