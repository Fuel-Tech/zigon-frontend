import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/controllers/app_controller.dart';
import 'package:zigonflutter/controllers/settings_controller.dart';
import 'package:zigonflutter/utility/app_utility.dart';

class UserSettingsView extends StatelessWidget {
  UserSettingsView({Key? key}) : super(key: key);
  final SettingsController controller = Get.put(SettingsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppUtil.primary,
      body: GetBuilder<SettingsController>(builder: (ctrl) {
        return SafeArea(
          child: ctrl.isLoading
              ? SpinKitFadingCircle(
                  color: Colors.white,
                  size: 40,
                )
              : Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 28,
                                )),
                            const SizedBox(width: 15),
                            Text(
                              'Settings',
                              style: GoogleFonts.raleway(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        ctrl.isProfileEdited.value
                            ? GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.save,
                                      size: 26,
                                    ),
                                    Text(
                                      'Save',
                                      style: GoogleFonts.openSans(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            : SizedBox.shrink()
                      ],
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: ListView(
                        children: [
                          accountWidget(ctrl),
                          const SizedBox(height: 20),
                          supportWidget(),
                          const SizedBox(height: 20),
                          privacyWidget(ctrl),
                          const SizedBox(height: 20),
                          actionsWidget(),
                        ],
                      ),
                    ))
                  ],
                ),
        );
      }),
    );
  }
}

accountWidget(SettingsController ctrl) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Icon(
            Icons.home,
            color: AppUtil.secondary,
            size: 26,
          ),
          SizedBox(width: 5),
          Text(
            'Account',
            style: GoogleFonts.openSans(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppUtil.secondary),
          ),
        ],
      ),
      const SizedBox(height: 25),
      userDetailsWidget('User Name',
          value: 'Sreehari Rajeev', textController: ctrl.userNameCtrl),
      const SizedBox(height: 25),
      userDetailsWidget('First Name',
          value: 'Sreehari Rajeev', textController: ctrl.fistNameCtrl),
      const SizedBox(height: 25),
      userDetailsWidget('Birthday',
          value: 'Sreehari Rajeev', textController: ctrl.dobCtrl, isDob: true),
      const SizedBox(height: 25),
      userDetailsWidget('Mobile No',
          value: 'Sreehari Rajeev', textController: ctrl.mobileCtrl),
      const SizedBox(height: 25),
      userDetailsWidget('Email',
          value: 'Sreehari Rajeev', textController: ctrl.emailCtrl),
      const SizedBox(height: 25),
      settingsSubWidgets('Link Accounts', value: 'Click here'),
      const SizedBox(height: 25),
      settingsSubWidgets('Get The Badge', value: 'Click here'),
      const SizedBox(height: 25),
      settingsSubWidgets('Direct Message', value: 'Everyone'),
      const SizedBox(height: 25),
      settingsSubWidgets('Liked Video', value: 'Me Only'),
      const SizedBox(height: 25),
      settingsSubWidgets('Comment', value: 'Everyone'),
    ],
  );
}

privacyWidget(SettingsController ctrl) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Icon(
            Icons.privacy_tip,
            color: AppUtil.secondary,
            size: 26,
          ),
          SizedBox(width: 5),
          Text(
            'Privacy',
            style: GoogleFonts.openSans(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppUtil.secondary),
          ),
        ],
      ),
      const SizedBox(height: 25),
      settingsSubWidgets(
        'Terms & Conditions',
        value: 'Click here',
        function: () {
          ctrl.gotoTerms();
        },
      ),
      const SizedBox(height: 25),
      settingsSubWidgets(
        'Privacy Policy',
        value: 'Click here',
        function: () {
          ctrl.gotoTerms();
        },
      ),
    ],
  );
}

supportWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Icon(
            Icons.contact_support_rounded,
            color: AppUtil.secondary,
            size: 26,
          ),
          SizedBox(width: 5),
          Text(
            'Support & Feedback',
            style: GoogleFonts.openSans(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: AppUtil.secondary,
            ),
          ),
        ],
      ),
      const SizedBox(height: 25),
      settingsSubWidgets(
        'Report A Bug',
        value: 'Click here',
        function: Get.find<SettingsController>().reportABug,
      ),
      const SizedBox(height: 25),
      settingsSubWidgets(
        'Share Feedbacks',
        value: 'Click here',
        function: Get.find<SettingsController>().shareFeedback,
      ),
      const SizedBox(height: 25),
      settingsSubWidgets(
        'Talk To Us',
        value: 'Click here',
        function: Get.find<SettingsController>().talkToUs,
      ),
    ],
  );
}

actionsWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Icon(
            Icons.toggle_off_sharp,
            color: AppUtil.secondary,
            size: 26,
          ),
          SizedBox(width: 5),
          Text(
            'Actions',
            style: GoogleFonts.openSans(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppUtil.secondary),
          ),
        ],
      ),
      const SizedBox(height: 25),
      settingsSubWidgets('Permissions',
          value: 'Click here',
          function: Get.find<SettingsController>().permissionSettings),
      const SizedBox(height: 25),
      settingsSubWidgets('Delete Account',
          value: 'Click here',
          function: Get.find<SettingsController>().deleteAccountSnackBar),
      const SizedBox(height: 25),
      settingsSubWidgets('Log Out',
          value: 'Click here', function: Get.find<AppController>().logOut),
    ],
  );
}

settingsSubWidgets(String title, {Function()? function, String? value}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: GoogleFonts.openSans(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
      ),
      InkWell(
        onTap: function,
        child: Text(
          value!,
          style: GoogleFonts.openSans(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
      ),
    ],
  );
}

userDetailsWidget(
  String title, {
  Function()? function,
  String? value,
  required TextEditingController textController,
  bool isDob = false,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: GoogleFonts.openSans(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
      ),
      InkWell(
        child: SizedBox(
          width: Get.width * .45,
          child: TextFormField(
            onTap: () {
              if (isDob) {
                log("IN");
                Get.find<SettingsController>().selectDate(Get.context!);
              }
            },
            readOnly: isDob,
            controller: textController,
            textAlign: TextAlign.end,
            style: GoogleFonts.openSans(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    ],
  );
}
