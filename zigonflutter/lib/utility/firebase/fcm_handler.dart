import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/notification_controller.dart';
import 'package:zigonflutter/ui/views/notifications_view/notifications_view.dart';

class FcmService {
  FirebaseMessaging fcm = FirebaseMessaging.instance;
  Future<void> startFCMService(BuildContext context) async {
    fcm.onTokenRefresh.listen((token) {
      // updateFCMToken(token);
    });

    try {
      RemoteMessage? initialMessage = await fcm.getInitialMessage();
      if (initialMessage != null) {}
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        log("Notification datass ${message.notification!.title}");
        log("Notification datass ${message.notification!.body}");
        Get.snackbar(
          'Notification',
          message.notification!.title.toString(),
          backgroundColor: Colors.white,
          colorText: Colors.black,
          onTap: (snack) {
            Get.to(() => NotificationsView());
          },
        );

        if (Get.isRegistered<NotificationController>()) {
          Get.find<NotificationController>().getNotifications();
        }
      });

      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        log("saddqwdqda");
        // Navigator.pushReplacement(
        //     navigatorKey.currentState!.context,
        //     MaterialPageRoute(
        //         builder: (_) => StoryTellerBottom(
        //               false,
        //               notificationTab: true,
        //               key: bottomNavigationKey,
        //             )));
      });
    } catch (e, stack) {}
  }

  // Future<void> updateFCMToken(String token) async {
  //   String userID =
  //       SharedPref.getInstance().getStringValueFromSF(SharedPref.USERID);
  //   String url = UrlUtils.UPDATE_FCM_TOKEN;
  //   Map<String, String> body = {
  //     //"uid": userID,
  //     "fcmToken": token,
  //   };

  //   ApiUtils().post(url: url, body: body);
  // }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message: ${message.messageId}');
}
