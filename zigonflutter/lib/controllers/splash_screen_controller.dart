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
    await showRelatedVideos();
    await isUserLoggedIn();
  }

  Future<void> showRelatedVideos() async {
    String userID = await SharedPrefHandler.getString(SharedPrefHandler.USERID) ?? '0';
    log("Getting video for slides_view");
    String endpoint = 'showRelatedVideos';
    String body = '''{
      "user_id":${int.tryParse(userID)},
      "starting_point":1,
      "device_id":1,
      "limit":3
    }''';
    var response = await NetworkHandler.dioPost(endpoint,body: body);
    var json = jsonDecode(response);
    slideListModel = SlideListModel.fromJson(json);
    return;
  }

  Future<void> isUserLoggedIn() async {
    log("Checking if user is Logged In");
    var userToken =
        await SharedPrefHandler.getString(SharedPrefHandler.USERTOKEN);
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
