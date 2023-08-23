import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zigonflutter/controllers/app_controller.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:zigonflutter/ui/views/profile_screen/profile_view.dart';
import 'package:zigonflutter/utility/app_utility.dart';

import '../ui/widgets/common_widgets.dart';
import 'navigation_utility.dart';

class ButtonHandler {
  static onTapHandler(
      {required ButtonTypes buttonTypes,
      SubButtonType? subButtonType,
      var value,
      required BuildContext context}) {
    final AppController buttonController = Get.find();
    // LOGIN NOT REQUIRED FUNCTIONS
    if (buttonTypes == ButtonTypes.slide ||
        buttonTypes == ButtonTypes.share ||
        buttonTypes == ButtonTypes.slidesList ||
        buttonTypes == ButtonTypes.setting) {
      if (buttonTypes == ButtonTypes.slide) {
        buttonController.navBarHandler(NavBarSelectionItem.slide);
        Get.toNamed(PageRouteList.slides);
        Get.find<SlideScreenController>().playActiveVideo();
      } else if (buttonTypes == ButtonTypes.share) {
        var shareUrl = value;
        Share.share('Check out this video from ZigOn - $shareUrl');
      } else if (buttonTypes == ButtonTypes.slidesList) {
      } else if (buttonTypes == ButtonTypes.setting) {}
    }
    // LOGIN REQUIRED FUNCTIONS
    else {
      if (AppUtil.isLoggedIn) {
        if (buttonTypes == ButtonTypes.camera) {
          Get.find<SlideScreenController>().stopActiveVideo();
          Get.toNamed(PageRouteList.camera);
        } else if (buttonTypes == ButtonTypes.discover) {
          Get.find<SlideScreenController>().stopActiveVideo();
          buttonController.navBarHandler(NavBarSelectionItem.discover);
          Get.toNamed(PageRouteList.discover);
        } else if (buttonTypes == ButtonTypes.notification) {
          Get.find<SlideScreenController>().stopActiveVideo();
          buttonController.navBarHandler(NavBarSelectionItem.notification);
          Get.toNamed(PageRouteList.notification);
        } else if (buttonTypes == ButtonTypes.userprofile) {
          Get.find<SlideScreenController>().stopActiveVideo();
          buttonController.navBarHandler(NavBarSelectionItem.userprofile);
          Get.to(() => ProfileView());
        } else if (buttonTypes == ButtonTypes.like) {
          Get.find<SlideScreenController>().toggleLike();
        } else if (buttonTypes == ButtonTypes.comment) {
          Get.find<SlideScreenController>().getComments(videoID: value);
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return CommonWidgets.commentDialogWidget(context);
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
    isScrollControlled: false,
    backgroundColor: const Color.fromARGB(255, 228, 228, 228),
    builder: (context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: GetBuilder<SlideScreenController>(builder: (controller) {
          return Wrap(
            children: [
              Container(
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
              ),
            ],
          );
        }),
      );
    },
  );
}

defaultLoginState(BuildContext context, SlideScreenController controller) {
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

otpLoginState(BuildContext context, SlideScreenController controller) {
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

emailLoginState(BuildContext context, SlideScreenController controller) {
  return Obx(
    () => Form(
      child: Column(
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
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
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
            padding: const EdgeInsets.symmetric(horizontal: 90),
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
                child: controller.isLoading.isTrue
                    ? const CircularProgressIndicator.adaptive(
                        backgroundColor: Colors.white,
                      )
                    : Text(
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
          TextButton(
              onPressed: () {
                Get.to(() => RegisterUserScreen());
              },
              child: RichText(
                text: TextSpan(
                    style: GoogleFonts.quicksand(color: AppUtil.secondary),
                    children: [
                      TextSpan(
                        text: " click here to get started!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                    text: "New here,"),
              ))
        ],
      ),
    ),
  );
}

createAccountState(SlideScreenController controller, BuildContext context) {
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

class RegisterUserScreen extends StatelessWidget {
  const RegisterUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sign up",
          style: GoogleFonts.quicksand(
              color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            // FIRSTNAME FIELD
            TextFormField(
              decoration: InputDecoration(
                hintText: "First Name",
                hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5)),
              ),
            ),
            // LASTNAME FIELD
            TextFormField(
              decoration: InputDecoration(
                hintText: "Last Name",
                hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: "User Name",
                hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Must contain atleast 5 letters',
              style: AppUtil.textStyle2().copyWith(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              readOnly: true,
              onTap: () {},
              decoration: InputDecoration(
                  hintText: "Brithday",
                  hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  suffixIcon: Icon(
                    Icons.calendar_month,
                    color: Colors.grey,
                  )),
            ),
            SizedBox(height: 6),
            Text(
              'Your birthday will not be shared with others using ZigOn',
              style: AppUtil.textStyle2().copyWith(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Your email will not be shared with others using ZigOn',
              style: AppUtil.textStyle2().copyWith(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Mobile No",
                hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Your email will not be shared with others using ZigOn',
              style: AppUtil.textStyle2().copyWith(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  )),
            ),
            SizedBox(height: 6),
            Text(
              'Your email will not be shared with others using ZigOn',
              style: AppUtil.textStyle2().copyWith(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 20),
            Checkbox(
              side: BorderSide(color: Colors.black),
              value: false,
              onChanged: (value) {},
            ).marginZero,
            Align(
              alignment: FractionalOffset.center,
              child: Text(
                'By checking this box\n you agree to our terms & conditions',
                textAlign: TextAlign.center,
                style: AppUtil.textStyle2().copyWith(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
            // Text('Username', style: AppUtil.textStyle2().copyWith(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),),
            // Text('This name will be publicaly visible, you can always change this later'),
          ],
        ),
      ),
    );
  }
}
