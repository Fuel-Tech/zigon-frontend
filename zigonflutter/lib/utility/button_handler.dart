import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/utility/app_utility.dart';

import '../ui/widgets/common_widgets.dart';
import 'navigation_utility.dart';

class ButtonHandler {
  static onTapHandler(
      {required ButtonTypes buttonTypes,
      SubButtonType? subButtonType,
      var value,
      required BuildContext context}) {
    final SlidesController buttonController = Get.find();
    if (buttonTypes == ButtonTypes.slide ||
        buttonTypes == ButtonTypes.share ||
        buttonTypes == ButtonTypes.slidesList ||
        buttonTypes == ButtonTypes.setting) {
      if (buttonTypes == ButtonTypes.slide) {
        buttonController.navBarHandler(NavBarSelectionItem.slide);
        Get.toNamed(PageRouteList.slides);
      } else if (buttonTypes == ButtonTypes.share) {
        var shareUrl = value;
        Share.share('Check out this video from ZigOn - $shareUrl');
      } else if (buttonTypes == ButtonTypes.slidesList) {
      } else if (buttonTypes == ButtonTypes.setting) {}
    } else {
      if (buttonController.isLoggedIn) {
        if (buttonTypes == ButtonTypes.camera) {
          Get.toNamed(PageRouteList.camera);
        } else if (buttonTypes == ButtonTypes.discover) {
          buttonController.navBarHandler(NavBarSelectionItem.discover);
          Get.toNamed(PageRouteList.discover);
        } else if (buttonTypes == ButtonTypes.notification) {
          buttonController.navBarHandler(NavBarSelectionItem.notification);
          Get.toNamed(PageRouteList.notification);
        } else if (buttonTypes == ButtonTypes.userprofile) {
          buttonController.navBarHandler(NavBarSelectionItem.userprofile);
          Get.toNamed(PageRouteList.userProfile);
        } else if (buttonTypes == ButtonTypes.like) {
          // buttonController.likeButtonHandler(0);
        } else if (buttonTypes == ButtonTypes.comment) {
          buttonController.getComments();
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return CommonWidgets.commentDialogWidget(
                  context, buttonController);
            },
          );
        } else if (buttonTypes == ButtonTypes.followingSlidesList) {
        } else if (buttonTypes == ButtonTypes.slidesList) {
        } else if (buttonTypes == ButtonTypes.live) {
        } else if (buttonTypes == ButtonTypes.profile) {}
      } else {
        loginBottomSheet(context);
      }
    }
  }
}

loginBottomSheet(BuildContext context) {
  //Pop Login Dialog Box
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Color.fromARGB(255, 228, 228, 228),
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: GetBuilder<SlidesController>(builder: (controller) {
            return Container(
              height: AppUtil.screenHeight(context) / 2.4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: controller.loginType == LoginTypes.none
                    ? defaultLoginState(context, controller)
                    : controller.loginType == LoginTypes.email
                        ? emailLoginState(context, controller)
                        : controller.loginType == LoginTypes.otp
                            ? otpLoginState(context, controller)
                            : controller.loginType == LoginTypes.createAccount
                                ? createAccountState(controller, context)
                                : defaultLoginState(context, controller),
              ),
            );
          }),
        );
      });
}

defaultLoginState(BuildContext context, SlidesController controller) {
  return Column(
    children: [
      //Login With Google or Apple
      controller.isIOS
          ? GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Ionicons.logo_apple,
                        color: Colors.white,
                      ),
                      Text(
                        'Login With Apple ID',
                        style: GoogleFonts.quicksand(
                            fontSize: 17, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            )
          : GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Ionicons.logo_google,
                        color: Colors.white,
                      ),
                      Text(
                        'Login With Google',
                        style: GoogleFonts.quicksand(
                            fontSize: 17, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
      //Login with OTP
      GestureDetector(
        onTap: () {
          controller.loginTypeSelector(LoginTypes.otp);
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mobile_friendly_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Login in with OTP',
                  style:
                      GoogleFonts.quicksand(fontSize: 17, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
      //Login With Email
      GestureDetector(
        onTap: () {
          controller.loginTypeSelector(LoginTypes.email);
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                Text(
                  'Login in with Email',
                  style:
                      GoogleFonts.quicksand(fontSize: 17, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),

      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () async {
            Uri url = Uri.parse("https://google.in");
            await launchUrl(url);
          },
          child: Text(
            'Terms & Conditions',
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ),
      )
    ],
  );
}

otpLoginState(BuildContext context, SlidesController controller) {
  return ListView(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                controller.loginTypeSelector(LoginTypes.none);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
                size: 24,
              )),
          Text(
            'Login with OTP',
            style: GoogleFonts.raleway(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.transparent,
              )),
        ],
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          elevation: 4,
          child: TextFormField(
            controller: controller.emailFieldController,
            keyboardType: TextInputType.phone,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              isDense: true,
              hintText: 'Mobile NO.',
              hintStyle: TextStyle(color: Colors.grey.shade500),
              filled: true,
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: AppUtil.secondary),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          elevation: 4,
          child: TextFormField(
            controller: controller.emailFieldController,
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              isDense: true,
              hintText: 'OTP',
              hintStyle: TextStyle(color: Colors.grey.shade500),
              filled: true,
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: AppUtil.secondary),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ),
      SizedBox(height: 30),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: GestureDetector(
          onTap: () async {},
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                color: AppUtil.secondary,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    offset: Offset(0, 4),
                    blurRadius: 6.0,
                  )
                ]),
            alignment: Alignment.center,
            child: Text(
              'Get OTP',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      Text('Retry')
    ],
  );
}

emailLoginState(BuildContext context, SlidesController controller) {
  return Form(
    child: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  controller.loginTypeSelector(LoginTypes.none);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                  size: 24,
                )),
            Text(
              'Login with email',
              style: GoogleFonts.raleway(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.transparent,
                )),
          ],
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            elevation: 4,
            child: TextFormField(
              controller: controller.emailFieldController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey.shade500),
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: AppUtil.secondary),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            elevation: 4,
            child: TextFormField(
              controller: controller.passwordFieldController,
              obscureText: true,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey.shade500),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: AppUtil.secondary),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: GestureDetector(
            onTap: () async {
              await controller.userLogin();
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: AppUtil.secondary,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      offset: Offset(0, 4),
                      blurRadius: 6.0,
                    )
                  ]),
              alignment: Alignment.center,
              child: Text(
                'Login',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    ),
  );
}

createAccountState(SlidesController controller, BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                controller.loginTypeSelector(LoginTypes.none);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
                size: 24,
              )),
          Text(
            'Create Account',
            style: GoogleFonts.raleway(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
    ],
  );
}

enum SubButtonType {
  navigatePage,
  openDialog,
  toggleFunction,
  google,
  email,
  apple,
  mobile,
  forget
}

enum ButtonTypes {
  camera,
  slide,
  discover,
  notification,
  userprofile,
  profile,
  like,
  comment,
  share,
  followingSlidesList,
  slidesList,
  live,
  login,
  setting,
}
