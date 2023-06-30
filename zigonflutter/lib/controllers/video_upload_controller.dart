import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:zigonflutter/controllers/app_controller.dart';
import 'package:zigonflutter/ui/views/slides_screen/slides_view2.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';
import 'package:textfield_tags/textfield_tags.dart';

class VideoUploadController extends GetxController {
  TextEditingController descriptionController = TextEditingController();
  RxBool allowComments = true.obs;
  RxBool isPrivate = false.obs;
  RxString privatePublic = "Is Public".obs;
  RxBool publishAudio = false.obs;
  final TextfieldTagsController textfieldTagsController =
      TextfieldTagsController();
  toggleAllowComents(bool value) {
    allowComments.value = value;
  }

  togglePublishAudio(bool value) {
    publishAudio.value = value;
  }

  toggleIsPublic(bool value) {
    isPrivate.value = value;
    if (isPrivate.isTrue) {
      privatePublic.value = "Is Private";
    } else {
      privatePublic.value = "Is Public";
    }
  }

  ///POST VIDEO
  Future<void> postVideo() async {
    String privacyType = '';
    if (isPrivate.isTrue) {
      privacyType = "private";
    } else {
      privacyType = "public";
    }

    int audio_to_list = 0;
    if (publishAudio.isTrue) {
      audio_to_list = 1;
    }
    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String url = 'postvideo';
    dio.MultipartFile multipartFile =
        await dio.MultipartFile.fromFile(Get.arguments["file"].path);
//TODO: SOUND ID
    dio.FormData body = dio.FormData.fromMap({
      "video": multipartFile,
      "user_id": userID,
      "sound_id": "0",
      "description": descriptionController.text,
      "allow_duet": "0",
      "allow_comments": allowComments.value,
      "privacy_type": privacyType,
      "audio_to_list": audio_to_list
    });

    Get.find<AppController>().uploadVideo(url, body: body);

    Get.offUntil(MaterialPageRoute(
      builder: (context) {
        return VideoSwiper();
      },
    ), (route) => false);

    // var response = await NetworkHandler.dioPost(url, body: body);

    // if (response["code"] == 200) {
    //   Get.snackbar("Video Uploaded", "Dear User, your video has been uploaded");
    // } else {
    //   Get.snackbar(
    //       "Unable to upload", "Please check your network & try again later");
    // }
  }

  initCheck() {
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
