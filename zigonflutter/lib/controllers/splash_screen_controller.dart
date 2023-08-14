import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:zigonflutter/utility/network_utility.dart';

import '../models/slide-list-model/slide_list_model.dart';
import '../utility/app_utility.dart';
import '../utility/shared_prefs.dart';

class SplashScreenController extends GetxController {
  SlideListModel? slideListModel;

  initilizeapp() async {
    await isUserLoggedIn();
    await showRelatedVideos();
    log("INITIAL CHECK COMPLETE");
  }

  showRelatedVideos() async {
    String userID = await SharedPrefHandler.getInstance()
            .getString(SharedPrefHandler.USERID) ??
        '0';
    log(userID);
    log("Getting video for slides_view");
    String endpoint = 'showRelatedVideos';
    String body = '''{
      "user_id":$userID,
      "starting_point":0,
      "device_id":1,
      "limit":4
    }''';
    var response = await NetworkHandler.dioPost(endpoint, body: body);

    Map<String, dynamic> json = jsonDecode(response);
    if (json["code"] == 200) {
      slideListModel = SlideListModel.fromJson(json);

      log("SUCCESS 200");
    } else if (json["code"] == 201) {
      slideListModel = null;
    } else {
      log("ERROR: ${json["code"]}");
    }
  }

  isUserLoggedIn() async {
    log("Checking if user is Logged In");
    var userToken = await SharedPrefHandler.getInstance()
        .getString(SharedPrefHandler.USERTOKEN);
    log(userToken.toString());
    if (userToken == null || userToken == "USERTOKEN") {
      log('User Not Logged In');
      AppUtil.isLoggedIn = false;
    } else {
      log('User Logged In');
      AppUtil.isLoggedIn = true;
    }
  }
}
