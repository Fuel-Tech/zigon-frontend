import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zigonflutter/controllers/profile_controller.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/ui/views/splash_view.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';

import '../models/user_profile_model/user_profile_model.dart';
import '../utility/network_utility.dart';
import '../utility/shared_prefs.dart';

class SettingsController extends GetxController {
  RxBool isProfileEdited = false.obs;
  UserProfileModel? userProfileModel;

  TextEditingController userNameCtrl = TextEditingController();
  TextEditingController fistNameCtrl = TextEditingController();
  TextEditingController lastNameCtrl = TextEditingController();
  TextEditingController genderCtrl = TextEditingController();
  TextEditingController dobCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController bioCtrl = TextEditingController();
  bool isLoading = true;

  ///UPDATES USER PROFILE
  Future<void> updateProfile() async {
    String path = "editProfile";
    String body = """{
      "username": "",
      "user_id":"1",
      "first_name":"MOhammed Jassim",
      "last_name":"PV",
      "gender": "Male",
      "website":".com",
      "bio":"iam jassimpv" 
    }""";

    try {
      var response = await NetworkHandler.dioPost(path, body: body);
      response = jsonDecode(response);
      log(response.toString());

      if (response["code"] == 200) {
        Get.find<ProfileController>().getUserDetails();
      }
    } catch (e) {
      log("UPDATE PROFILE ERROR CATCH\n$e");
    }
  }

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
      userNameCtrl.text = userProfileModel!.msg.User.username;
      fistNameCtrl.text = userProfileModel!.msg.User.first_name;
      lastNameCtrl.text = userProfileModel!.msg.User.last_name;
      dobCtrl.text = userProfileModel!.msg.User.dob;
      bioCtrl.text = userProfileModel!.msg.User.bio;
      mobileCtrl.text = userProfileModel!.msg.User.phone;
      emailCtrl.text = userProfileModel!.msg.User.email;
      isLoading = false;
      update();
    }
    return;
  }

  gotoTerms() {
    launchUrl(Uri.parse('http://zigon.in/terms_condition.html'));
  }

  Future<void> reportABug() async {
    String userId =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    DateTime now = DateTime.now();
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'info@zigon.in', // recipient email address
      query: encodeQueryParameters(<String, String>{
        'subject': 'BUG REPORT: $now',
        'body':
            "SCREEN: 'PLEASE ENTER THE SCREEN NAME'\n\nBUG: 'Please describe the bug you faced'\n\n\n\nUSER: $userId (DO.NOT.CHANGE.THIS.VALUE)"
      }),
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  Future<void> shareFeedback() async {
    String userId =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    DateTime now = DateTime.now();
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'info@zigon.in', // recipient email address
      query: encodeQueryParameters(<String, String>{
        'subject': 'Feedback: $now',
        'body': "'\n\n\n\nUSER: $userId (DO.NOT.CHANGE.THIS.VALUE)"
      }),
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  Future<void> talkToUs() async {
    String userId =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    DateTime now = DateTime.now();
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'info@zigon.in', // recipient email address
      query: encodeQueryParameters(
          <String, String>{'subject': 'Just Texting', 'body': "Hi ZigOn\n"}),
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  // Helper function to URL encode the query parameters
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  deleteAccountSnackBar() {
    Get.snackbar("-", "Delete account option is not currently available");
  }

  DateFormat format = DateFormat("dd-MMM-yyyy");
  DateTime selectedDate = DateTime.now();
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1940),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      selectedDate = picked;
      dobCtrl.text = format.format(picked);
    }
  }

  permissionSettings() {
    openAppSettings();
  }

  logOut() async {
    await SharedPrefHandler.getInstance().clearStorage();
    log("User Logged Out");
    Get.offAll(() => SplashScreen());
  }

  initalizeSettings() async {
    await getUserDetails();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    initalizeSettings();
    super.onInit();
  }
}
