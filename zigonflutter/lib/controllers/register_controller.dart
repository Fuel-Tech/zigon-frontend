import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:zigonflutter/ui/views/splash_view.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';
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

  DateFormat format = DateFormat("yyyy-MM-dd");
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

  addProfileImage() {
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

  File? file;

  pickImage(bool isCamera) async {
    ImagePicker _picker = ImagePicker();

    if (isCamera) {
      XFile? xfile = await _picker.pickImage(source: ImageSource.camera);
      if (xfile != null) {
        file = File(xfile.path);
      }
    } else {
      XFile? xfile = await _picker.pickImage(source: ImageSource.gallery);
      if (xfile != null) {
        file = File(xfile.path);
      }
    }
    Get.back();
    update();
  }

  uploadImage(String id) async {
    List<int> bytes = file!.readAsBytesSync();

    String base64 = base64Encode(bytes);
    base64 = "data:image/jpeg;base64,$base64";
    log(base64.toString());

    String path = "addUserImage";
    Map<String, dynamic> body = {
      "user_id": id,
      "profile_pic_small": base64,
      "profile_pic": base64
    };

    var response = await NetworkHandler.dioPost(path, body: body);
    log(response.toString());
  }

  Future<void> registerUser() async {
    CommonWidgets.loadingDialog();
    String url = "registerUser";

    Map<String, String> body = {
      "dob": dobCtrl.text,
      "username": usernameCtrl.text,
      "first_name": firstNameCtrl.text,
      "last_name": lastNameCtrl.text,
      "email": emailCtrl.text,
      "password": passwordCtrl.text
    };

    if (fromSocial) {
      body.addAll(
          {"social": social, "social_id": socialId, "auth_token": authToken});
    }

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
      await uploadImage(json["msg"]["User"]["id"]);
      Get.offAllNamed(PageRouteList.splash);
    } else if (json["code"] == 201) {
      CommonWidgets.hideDialog();
      Get.snackbar(
        "Hey",
        "There is already an account under this email, try signing in",
        colorText: Colors.white,
        backgroundColor: AppUtil.primary,
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  String social = '';
  String socialId = '';
  String authToken = '';
  bool fromSocial = false;

  @override
  void onInit() {
    // TODO: implement onInit

    String? email = Get.arguments["email"];

    if (email != "") {
      fromSocial = true;
      emailCtrl.text = email!;
      social = Get.arguments["social"];
      socialId = Get.arguments["socialId"];
      authToken = Get.arguments["authToken"];
    }
    super.onInit();
  }
}
