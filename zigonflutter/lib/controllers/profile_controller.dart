import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zigonflutter/models/user_profile_model/user_profile_model.dart';
import 'package:zigonflutter/utility/network_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';
import 'package:image_picker/image_picker.dart';

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

  bool isFollowing = false;
  bool btnPressed = false;

  ///TOGGLE FOLLOW
  Future<void> toggleFollow() async {
    String senderId =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    isFollowing = !isFollowing;
    btnPressed = true;
    update();
    String url = 'followUser';
    String body = '''{
      "sender_id": "$senderId",
      "receiver_id": "$userID"
    }''';

    var response = await NetworkHandler.dioPost(url, body: body);
    response = jsonDecode(response);
    if (response["code"] == 200) {
      btnPressed = false;
    } else {
      isFollowing = !isFollowing;
      btnPressed = false;
      update();
    }
  }

  ///FETCH USER DETAILS
  Future<void> getUserDetails() async {
    String path = "showUserDetail";
    String body;
    if (userProfileSelected) {
      body = '''{
        "user_id": "$userID"
      }''';
    } else {
      body = '''{
        "user_id": "${SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID)}",
        "other_user_id": "$userID"
      }''';
    }

    var response = await NetworkHandler.dioPost(path, body: body);
    response = jsonDecode(response);
    log(response.toString());
    if (response["code"] == 200) {
      userProfileModel = UserProfileModel.fromJson(response);
      if (userProfileModel!.msg.User.button == "following") {
        isFollowing = true;
      }
      isLoading.value = false;

      update();
    }
    return;
  }

  RxList<dynamic> publicVideos = [].obs;
  RxList<dynamic> privateVideos = [].obs;
  RxList<dynamic> likedVideos = [].obs;

  getUserVideos() async {
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
        "Unable to fetch your slides, please try agian🫡",
        backgroundColor: Colors.white,
        colorText: Colors.black,
      );
    }
  }

  Future<void> getUserLikedVideos() async {
    String path = 'showUserLikedVideos';
    Map<String, dynamic> body = {"user_id": userID, "starting_point": 0};

    var response = await NetworkHandler.dioPost(path, body: body);
    var json = jsonDecode(response);
    if (json['code'] == 200) {
      likedVideos.value = json["msg"];
    } else if (json['code'] == 201) {
      log("NO LIKED VIDEOS");
    } else {
      log(json.toString());
      Get.snackbar(
        "Try again",
        "Unable to fetch slides you have liked, please try agian🫡",
        backgroundColor: Colors.white,
        colorText: Colors.black,
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

  File? file;

  pickImage(bool isCamera) async {
    ImagePicker _picker = ImagePicker();

    if (isCamera) {
      XFile? xfile = await _picker.pickImage(source: ImageSource.camera);
      if (xfile != null) {
        file = File(xfile.path);
        uploadImage();
      }
    } else {
      XFile? xfile = await _picker.pickImage(source: ImageSource.gallery);
      if (xfile != null) {
        file = File(xfile.path);
        uploadImage();
      }
    }
    Get.back();
    update();
  }

  RxBool isAddingImage = false.obs;

  uploadImage() async {
    isAddingImage.value = true;

    List<int> bytes = file!.readAsBytesSync();

    String base64 = base64Encode(bytes);
    base64 = "data:image/jpeg;base64,$base64";
    log(base64.toString());

    String userId =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String path = "addUserImage";
    Map<String, dynamic> body = {
      "user_id": userId,
      "profile_pic_small": base64,
      "profile_pic": base64
    };

    var response = await NetworkHandler.dioPost(path, body: body);
    log(response.toString());
    isAddingImage.value = false;
  }

  editProfilePicture() {
    Get.dialog(
      Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () async {
                        pickImage(true);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          "Capture from camera",
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        pickImage(false);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          "Pick from Gallery",
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  iniChecks() {
    userProfileSelected = Get.arguments == null ? true : false;

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
    iniChecks();
    super.onInit();
  }
}

enum ProfileNavBarItem { slides, liked, saved }

enum ProfileTabSelected { slides, liked, saved }
