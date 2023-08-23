import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/controllers/settings_controller.dart';

class UserSettingsView extends StatelessWidget {
  UserSettingsView({Key? key}) : super(key: key);
  final SettingsController settingsController = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppUtil.primary,
      body: SafeArea(
        child: Column(
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
                GestureDetector(
                  onTap: () {
                    settingsController.logOut();
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.logout_rounded,
                        size: 28,
                      ),
                      Text(
                        'Log Out',
                        style: GoogleFonts.openSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ListView(
                children: [
                  accountWidget(),
                  const SizedBox(height: 20),
                  supportWidget(),
                  const SizedBox(height: 20),
                  privacyWidget(),
                  const SizedBox(height: 20),
                  actionsWidget(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

accountWidget() {
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
      settingsSubWidgets('Name', value: 'Sreehari Rajeev'),
      const SizedBox(height: 25),
      settingsSubWidgets('Username', value: 'Sreehari Rajeev'),
      const SizedBox(height: 25),
      settingsSubWidgets('Birthday', value: '11/06/1998'),
      const SizedBox(height: 25),
      settingsSubWidgets('Mobile No', value: '7025136470'),
      const SizedBox(height: 25),
      settingsSubWidgets('Email', value: '-'),
      const SizedBox(height: 25),
      settingsSubWidgets('Link Accounts', value: 'Click here'),
      const SizedBox(height: 25),
      settingsSubWidgets('Get The Badge', value: 'Click here'),
      const SizedBox(height: 25),
      settingsSubWidgets('Direct Message', value: 'Everyone'),
      const SizedBox(height: 25),
      settingsSubWidgets('Duet', value: 'Following'),
      const SizedBox(height: 25),
      settingsSubWidgets('Liked Video', value: 'Me Only'),
      const SizedBox(height: 25),
      settingsSubWidgets('Comment', value: 'Everyone'),
    ],
  );
}

privacyWidget() {
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
      settingsSubWidgets('Terms & Conditions', value: 'Click here'),
      const SizedBox(height: 25),
      settingsSubWidgets('Privacy Policy', value: 'Click here'),
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
      settingsSubWidgets('Report A Bug', value: 'Click here'),
      const SizedBox(height: 25),
      settingsSubWidgets('Share Feedbacks', value: 'Click here'),
      const SizedBox(height: 25),
      settingsSubWidgets('Talk To Us', value: 'Click here'),
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
      settingsSubWidgets('Permissions', value: 'Click here'),
      const SizedBox(height: 25),
      settingsSubWidgets('Blocked', value: 'Click here'),
      const SizedBox(height: 25),
      settingsSubWidgets('Delete Account', value: 'Click here'),
    ],
  );
}

settingsSubWidgets(String title, {Function? function, String? value}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: GoogleFonts.openSans(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
      ),
      Text(
        value!,
        style: GoogleFonts.openSans(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
      ),
    ],
  );
}
