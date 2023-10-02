import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:zigonflutter/controllers/app_controller.dart';
import 'package:zigonflutter/ui/views/slides_screen/slides_view2.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';
import 'package:textfield_tags/textfield_tags.dart';

class VideoUploadController extends GetxController {
  TextEditingController descriptionController = TextEditingController();
  RxBool allowComments = true.obs;
  RxBool isPrivate = false.obs;
  RxString privatePublic = "Is Public".obs;
  RxBool publishAudio = false.obs;
  var thumbImage;
  late File uploadFile;
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

  RxBool isProccessing = false.obs;

  ///POST VIDEO
  Future<void> postVideo(BuildContext context) async {
    isProccessing.value = true;

    Get.defaultDialog(
      title: "Uploading",
      barrierDismissible: false,
      content: Obx(() {
        if (isProccessing.value) {
          return const Text("Processing...please wait.");
        } else {
          return Column(
            children: [
              Text(
                  "Progress: ${(Get.find<AppController>().uploadProgress.value * 100).toStringAsFixed(2)}%"),
              SizedBox(height: 20), // Adds some spacing
              LinearProgressIndicator(
                color: AppUtil.secondary,
                value: Get.find<AppController>().uploadProgress.value,
                minHeight: 10.0,
              ),
            ],
          );
        }
      }),
    );

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
        await dio.MultipartFile.fromFile(uploadFile.path);
    isProccessing.value = false;
    //TODO: SOUND ID
    dio.FormData body = dio.FormData.fromMap({
      "video": multipartFile,
      "user_id": userID,
      "sound_id": "0",
      "description": descriptionController.text,
      "allow_duet": "0",
      "hashtags_json": jsonEncode(textfieldTagsController.getTags),
      "allow_comments": allowComments.value,
      "privacy_type": privacyType,
      "audio_to_list": audio_to_list
    });

    await Get.find<AppController>().uploadVideo(url, body: body);
    Get.back();
    Get.back();
  }

  initCheck() {
    uploadFile = Get.arguments["file"];
    thumbImage = Get.arguments["thumb"];
    // update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initCheck();
  }
}
