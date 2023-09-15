import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:zigonflutter/ui/views/single_slide_view/single_slide_view.dart';
import 'package:zigonflutter/ui/views/slides_view.dart';
import 'package:zigonflutter/utility/network_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';
import 'package:zigonflutter/models/notifications_model/notifications_model.dart';

class NotificationController extends GetxController {
  DateTime now = DateTime.now();
  NotificationModel? notificationModel;
  bool isLoading = true;
  getNotifications() async {
    String userId =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);

    String url = "showAllNotifications";

    Map<String, String> body = {"user_id": userId, "starting_point": '0'};

    var response = await NetworkHandler.dioPost(url, body: body);
    var json;
    try {
      json = jsonDecode(response);
    } on Exception catch (e) {
      log("CATCH ERROR: $e");
    }
    if (json["code"] == 200) {
      notificationModel = NotificationModel.fromJson(json);
    } else {
      log("ERROR $json");
    }
    isLoading = false;
    update();
  }

  onNotificationTap(String type, {String? url}) {
    if (type.contains("video")) {
      Get.to(() => SlideBackground(videoUrl: url!),
          transition: Transition.upToDown);
    } else {}
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getNotifications();
  }
}
