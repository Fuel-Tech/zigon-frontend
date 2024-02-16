import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/notification_controller.dart';
import 'package:zigonflutter/ui/views/notifications_view/notifications_view.dart';

import '../../main.dart';

FirebaseMessaging fcm = FirebaseMessaging.instance;

class FcmService {
  Future<void> startFCMService() async {
    await FirebaseMessaging.instance.requestPermission();
    fcmToken = await FirebaseMessaging.instance.getToken();

    log("Fcm service started:$fcmToken");
    try {
      RemoteMessage? initialMessage = await fcm.getInitialMessage();
      if (initialMessage != null) {
        fcmHandleMethod(initialMessage);
      }
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        fcmHandleMethod(message);
      });

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        fcmHandleMethod(message);
      });
    } catch (e) {
      log(e.toString());
    }
  }
}

fcmHandleMethod(RemoteMessage message) {
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
}
