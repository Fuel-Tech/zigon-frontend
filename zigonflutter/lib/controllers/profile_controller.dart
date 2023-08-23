import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/models/user_profile_model/user_profile_model.dart';
import 'package:zigonflutter/utility/network_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';

class ProfileController extends GetxController {
  bool userProfileSelected = true;
  String? userID;
  ProfileTabSelected userProfileIsSelected = ProfileTabSelected.slides;
  RxBool isLoading = true.obs;
  UserProfileModel? userProfileModel;

  ///FETCHED USER DETAILS
  Future<void> getUserDetails() async {
    String path = "showUserDetail";
    String body = '''{
      "user_id": "$userID"
    }''';

    var response = await NetworkHandler.dioPost(path, body: body);
    response = jsonDecode(response);
    log(response.toString());
    if (response["code"] == 200) {
      userProfileModel = UserProfileModel.fromJson(response);
      isLoading.value = false;
      update();
    }
    return;
  }

  RxList<dynamic> publicVideos = [].obs;
  RxList<dynamic> privateVideos = [].obs;

  getUserVideos() async {
    String path = 'showVideosAgainstUserID';
    Map<String, dynamic> body = {"user_id": "8"};

    var response = await NetworkHandler.dioPost(path, body: body);
    var json = jsonDecode(response);
    if (json["code"] == 200) {
      publicVideos.value = json["msg"]["public"];
      privateVideos.value = json["msg"]["private"];
    } else if (response["code"] == 201) {
      log(json["msg"]);
    } else {
      log(json.toString());
      Get.snackbar(
        "Try again",
        "Unable to fetch the videos, please try agian🫡",
        backgroundColor: Colors.white,
      );
    }
  }

  iniChecks() {
    Get.arguments != null ? userProfileSelected = false : null;
    if (userProfileSelected) {
      userID =
          SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    } else {
      userID = Get.arguments["id"];
    }
    getUserDetails();
    getUserVideos();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    iniChecks();
    super.onInit();
  }
}
