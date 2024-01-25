import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:zigonflutter/ui/views/splash_view.dart';
import 'package:zigonflutter/utility/navigation_utility.dart';
import 'package:zigonflutter/utility/network_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';

import '../utility/app_utility.dart';

class RegisterController extends GetxController {
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  TextEditingController firstNameCtrl = TextEditingController();
  TextEditingController lastNameCtrl = TextEditingController();
  TextEditingController dobCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController usernameCtrl = TextEditingController();
  RxBool agreedToTerms = false.obs;
  RxBool isPasswordVisible = false.obs;
  RxBool isLoading = false.obs;

  toggleTermsBox(bool value) {
    agreedToTerms.value = value;
  }

  DateFormat format = DateFormat("dd/MM/yyyy");
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

  RxBool isHidden = true.obs;
  toggleHidePassword() {
    isHidden.value = !isHidden.value;
  }

  Future<void> registerUser() async {
    String url = "registerUser";

    Map<String, String> body = {
      "dob": dobCtrl.text,
      "username": usernameCtrl.text,
      "email": emailCtrl.text,
      "password": passwordCtrl.text
    };

    var response = await NetworkHandler.dioPost(url, body: body);
    log("Res:$response");

    var json = jsonDecode(response);
    if (json["code"] == 200) {
      SharedPrefHandler.getInstance().setString(
        json["msg"]["User"]["auth_token"],
        SharedPrefHandler.USERTOKEN,
      );
      SharedPrefHandler.getInstance().setString(
        json["msg"]["User"]["id"],
        SharedPrefHandler.USERID,
      );
      Get.offAllNamed(PageRouteList.splash);
    } else if (json["code"] == 201) {
      isLoading.value = false;
      Get.snackbar(
        "Hey",
        "There is already an account under this email, try signing in",
        colorText: Colors.white,
        backgroundColor: AppUtil.primary,
        snackPosition: SnackPosition.TOP,
      );
    }
  }
}
