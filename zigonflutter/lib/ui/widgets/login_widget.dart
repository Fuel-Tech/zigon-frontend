import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zigonflutter/utility/firebase/auth_services.dart';

import '../../controllers/slide_screen_controller.dart';
import '../../utility/app_utility.dart';
import '../views/register_view/register_view.dart';

class LoginWidgets {
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
                onTap: () {
                  AuthServices().siginInWithGoogle();
                },
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
        //Login with OTP - TODO: HIDDEN
        // GestureDetector(
        //   onTap: () {
        //     controller.loginTypeSelector(LoginTypes.otp);
        //   },
        //   child: Padding(
        //     padding: const EdgeInsets.all(12.0),
        //     child: Container(
        //       height: 55,
        //       decoration: BoxDecoration(
        //           color: Colors.black.withOpacity(0.6),
        //           borderRadius: BorderRadius.circular(10)),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Icon(
        //             Icons.mobile_friendly_outlined,
        //             color: Colors.white,
        //           ),
        //           Text(
        //             'Login in with OTP',
        //             style: GoogleFonts.quicksand(
        //                 fontSize: 17, color: Colors.white),
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
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
                    style: GoogleFonts.quicksand(
                        fontSize: 17, color: Colors.white),
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
                      borderSide:
                          BorderSide(width: 3, color: AppUtil.secondary),
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
                      borderSide:
                          BorderSide(width: 3, color: AppUtil.secondary),
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
                  Get.to(() => RegisterUserScreen(), arguments: {"email": ""});
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
}
