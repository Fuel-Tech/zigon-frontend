import 'dart:developer';

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/bottombar_controller.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:zigonflutter/ui/views/bottom_nav_bar/bottom_nav_bar.dart';

class DynamicLinkHandler {
  Future<String> shareSlideLink({required String videoId}) async {
    final String url = "https://com.fuel.zigonflutter?id=$videoId";
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      link: Uri.parse(url),
      uriPrefix: "https://zigonflutter.page.link",
      androidParameters: const AndroidParameters(
          packageName: "com.fuel.zigonflutter", minimumVersion: 0),
      iosParameters: const IOSParameters(
          bundleId: "com.fuel.zigonflutter", minimumVersion: "0"),
    );

    final FirebaseDynamicLinks firebaseDynamicLinks =
        FirebaseDynamicLinks.instance;
    final link = await firebaseDynamicLinks.buildShortLink(parameters);
    log(link.shortUrl.toString());
    return link.shortUrl.toString();
  }

  Future<void> initDynamicLink() async {
    final instanceLink = await FirebaseDynamicLinks.instance.getInitialLink();

    if (instanceLink != null) {
      final Uri refLink = instanceLink.link;
      log(refLink.toString());
      if (refLink.queryParameters.containsKey("id")) {
        if (Get.isRegistered<SlideScreenController>()) {
          Get.find<BottomBarController>().navBarController.index = 0;
          Get.find<SlideScreenController>().fetchMoreVideos(
              newStart: refLink.queryParameters["id"], refresh: true);
        }
      }
    }
  }
}
