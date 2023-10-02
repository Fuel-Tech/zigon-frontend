import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
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

  Future<void> refreshPage() async {
    await getUserDetails();
    await getUserVideos();
  }

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
  RxList<dynamic> likedVideos = [].obs;

  getUserVideos() async {
    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String path = 'showVideosAgainstUserID';
    Map<String, dynamic> body = {"user_id": "$userID"};

    var response = await NetworkHandler.dioPost(path, body: body);
    var json = jsonDecode(response);
    if (json["code"] == 200) {
      publicVideos.value = json["msg"]["public"];
      privateVideos.value = json["msg"]["private"];
    } else if (json["code"] == 201) {
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

  Future<void> getUserLikedVideos() async {
    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String path = 'showUserLikedVideos';
    Map<String, dynamic> body = {"user_id": userID, "starting_point": 0};

    var response = await NetworkHandler.dioPost(path, body: body);
    var json = jsonDecode(response);
    if (json['code'] == 200) {
      likedVideos.value = json["msg"];
    } else {
      log(json.toString());
      Get.snackbar(
        "Try again",
        "Unable to fetch slides you had liked, please try agian🫡",
        backgroundColor: Colors.white,
      );
    }
  }

  Future<void> reloadScreen() async {
    await getUserDetails();
    await getUserVideos();
    await getUserLikedVideos();
  }

  gotoTerms() {
    launchUrl(Uri.parse('https://zigon.in/terms_condition.html'));
  }

  Future<void> requestVerification() async {
    var response;
    var json;
    if (json["msg"] == 200) {
      Get.snackbar(
        "Requested Succussfully",
        "We have received your request and will be updated by our team in the next 7 days",
        backgroundColor: Colors.white,
      );
    } else {
      Get.snackbar(
        "Sorry, try again",
        "We were unable to proccess your request, please try again later",
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
    getUserLikedVideos();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    iniChecks();
    super.onInit();
  }
}
