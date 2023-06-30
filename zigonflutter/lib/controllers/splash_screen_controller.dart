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
    int videoStatus = await showRelatedVideos();
    int loggedInStatus = await isUserLoggedIn();
    log("INITIAL CHECK COMPLETE :: $videoStatus : $loggedInStatus");
  }

  Future<int> showRelatedVideos() async {
    String userID = await SharedPrefHandler.getInstance()
            .getString(SharedPrefHandler.USERID) ??
        '0';
    log("Getting video for slides_view");
    String endpoint = 'showRelatedVideos';
    String body = '''{
      "user_id":$userID,
      "starting_point":0,
      "device_id":1,
      "limit":4
    }''';
    var response = await NetworkHandler.dioPost(endpoint, body: body);
    var json = jsonDecode(response);
    print(json.toString());
    if (json["code"] == 200) {
      slideListModel = SlideListModel.fromJson(json);
      return 0;
    } else if (json["code"] == 201) {
      slideListModel = null;
      return 1;
    } else {
      log("ERROR: $json");
      return 2;
    }
  }

  Future<int> isUserLoggedIn() async {
    log("Checking if user is Logged In");
    var userToken = await SharedPrefHandler.getInstance()
        .getString(SharedPrefHandler.USERTOKEN);
    log(userToken.toString());
    if (userToken == null || userToken == "USERTOKEN") {
      log('User Not Logged In');
      AppUtil.isLoggedIn = false;
      return 1;
    } else {
      log('User Logged In');
      AppUtil.isLoggedIn = true;
      return 0;
    }
  }
}
