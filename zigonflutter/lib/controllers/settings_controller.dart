import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:zigonflutter/ui/views/splash_view.dart';

import '../models/user_profile_model/user_profile_model.dart';
import '../utility/navigation_utility.dart';
import '../utility/network_utility.dart';
import '../utility/shared_prefs.dart';

class SettingsController extends GetxController {
  logOut() async {
    await SharedPrefHandler.getInstance().clearStorage();
    log("User Logged Out");
    Get.to(() => SplashScreen());
  }

  UserProfileModel? userProfileModel;

  ///FETCHED USER DETAILS
  Future<void> getUserDetails() async {
    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String path = "showUserDetail";
    String body = '''{
      "user_id": "$userID"
    }''';

    var response = await NetworkHandler.dioPost(path, body: body);
    response = jsonDecode(response);
    log(response.toString());
    if (response["code"] == 200) {
      userProfileModel = UserProfileModel.fromJson(response);
      update();
    }
    return;
  }
}
