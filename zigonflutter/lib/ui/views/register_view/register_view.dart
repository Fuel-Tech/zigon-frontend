import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zigonflutter/controllers/register_controller.dart';

import '../../../utility/app_utility.dart';

class RegisterUserScreen extends StatelessWidget {
  RegisterUserScreen({super.key});
  final RegisterController ctrl = Get.put(RegisterController());
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
        child: Form(
          key: ctrl.registerFormKey,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                    ctrl.addProfileImage();
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0, 4),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    child: FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ctrl.file == null
                            ? Text("Add Profile Image",
                                style: AppUtil.textStyle2()
                                    .copyWith(color: Colors.black))
                            : ClipRRect(
                                child: Image.file(
                                  fit: BoxFit.fill,
                                  ctrl.file!,
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: ctrl.usernameCtrl,
                validator: (value) {
                  if (value.toString().removeAllWhitespace.isEmpty) {
                    return "User name cannot be empty";
                  } else if (value.toString().removeAllWhitespace.length < 5) {
                    return "Username must have more then 5 characters";
                  }
                  return null;
                },
                style: TextStyle(color: Colors.black),
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
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: ctrl.firstNameCtrl,
                validator: (value) {
                  if (value.toString().removeAllWhitespace.isEmpty) {
                    return "First Name cannot be empty";
                  }
                  return null;
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "First Name",
                  hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: ctrl.lastNameCtrl,
                validator: (value) {
                  if (value.toString().removeAllWhitespace.isEmpty) {
                    return "Last Name cannot be empty";
                  }
                  return null;
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Last Name",
                  hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: ctrl.dobCtrl,
                validator: (value) {
                  if (value.toString().removeAllWhitespace.isEmpty) {
                    return "DOB cannot be empty";
                  }
                  return null;
                },
                style: TextStyle(color: Colors.black),
                readOnly: true,
                onTap: () {
                  ctrl.selectDate(context);
                },
                decoration: InputDecoration(
                    hintText: "Brithday",
                    hintStyle:
                        AppUtil.textStyle2().copyWith(color: Colors.black),
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
                controller: ctrl.emailCtrl,
                validator: (value) {
                  if (value.toString().removeAllWhitespace.isEmpty) {
                    return "Email name cannot be empty";
                  } else if (!value.toString().isEmail) {
                    return "Is not a valid email";
                  }
                  return null;
                },
                style: TextStyle(color: Colors.black),
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

              Obx(
                () => TextFormField(
                  controller: ctrl.passwordCtrl,
                  style: TextStyle(color: Colors.black),
                  obscureText: ctrl.isHidden.value,
                  validator: (value) {
                    if (value.toString().removeAllWhitespace.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.toString().removeAllWhitespace.length <
                        5) {
                      return "Passord should have more than 5 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle:
                          AppUtil.textStyle2().copyWith(color: Colors.black),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          ctrl.toggleHidePassword();
                        },
                        icon: ctrl.isHidden.value
                            ? Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              )
                            : Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              ),
                      )),
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Must contain atleast one symbol and number',
                style: AppUtil.textStyle2().copyWith(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => Checkbox(
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      return AppUtil.secondary;
                    }
                  }),
                  side: BorderSide(color: Colors.black),
                  value: ctrl.agreedToTerms.value,
                  onChanged: (value) {
                    ctrl.toggleTermsBox(value!);
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse('https://zigon.in/terms_condition.html'));
                },
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "By checking this box you agree to our\n"),
                        TextSpan(
                          text: " Terms & Conditions",
                          style: AppUtil.textStyle2().copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                      style: AppUtil.textStyle2().copyWith(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    )),
              ),
              SizedBox(height: 25),
              Obx(
                () => GestureDetector(
                  onTap: () {
                    if (ctrl.registerFormKey.currentState!.validate()) {
                      if (ctrl.agreedToTerms.isTrue) {
                        ctrl.registerUser();
                      } else {
                        Get.snackbar(
                          "Required",
                          "Please agree to terms & conditions before signing up",
                          colorText: Colors.white,
                          backgroundColor: AppUtil.primary,
                          snackPosition: SnackPosition.TOP,
                        );
                      }
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppUtil.primary,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 4),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    child: ctrl.isLoading.value
                        ? CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text("Sign Up"),
                  ),
                ),
              ),

              // Text('Username', style: AppUtil.textStyle2().copyWith(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),),
              // Text('This name will be publicaly visible, you can always change this later'),
            ],
          ),
        ),
      ),
    );
  }
}

              // // FIRSTNAME FIELD
              // TextFormField(
              //   controller: ctrl.firstNameCtrl,
              //   style: TextStyle(color: Colors.black),
              //   validator: (value) {
              //     if (value.toString().removeAllWhitespace.isEmpty) {
              //       return "First name cannot be empty";
              //     }
              //     return null;
              //   },
              //   decoration: InputDecoration(
              //     hintText: "First Name",
              //     hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
              //     border: const OutlineInputBorder(
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(4),
              //         topRight: Radius.circular(4),
              //         bottomLeft: Radius.circular(0),
              //         bottomRight: Radius.circular(0),
              //       ),
              //       borderSide: BorderSide(color: Colors.grey, width: 0.5),
              //     ),
              //     enabledBorder: const OutlineInputBorder(
              //         borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(4),
              //           topRight: Radius.circular(4),
              //           bottomLeft: Radius.circular(0),
              //           bottomRight: Radius.circular(0),
              //         ),
              //         borderSide: BorderSide(color: Colors.grey, width: 0.5)),
              //   ),
              // ),
              // // LASTNAME FIELD
              // TextFormField(
              //   controller: ctrl.lastNameCtrl,
              //   validator: (value) {
              //     if (value.toString().removeAllWhitespace.isEmpty) {
              //       return "Last name cannot be empty";
              //     }
              //     return null;
              //   },
              //   style: TextStyle(color: Colors.black),
              //   decoration: InputDecoration(
              //     hintText: "Last Name",
              //     hintStyle: AppUtil.textStyle2().copyWith(color: Colors.black),
              //     border: const OutlineInputBorder(
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(0),
              //         topRight: Radius.circular(0),
              //         bottomLeft: Radius.circular(4),
              //         bottomRight: Radius.circular(4),
              //       ),
              //       borderSide: BorderSide(color: Colors.grey, width: 0.5),
              //     ),
              //     enabledBorder: const OutlineInputBorder(
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(0),
              //         topRight: Radius.circular(0),
              //         bottomLeft: Radius.circular(4),
              //         bottomRight: Radius.circular(4),
              //       ),
              //       borderSide: BorderSide(color: Colors.grey, width: 0.5),
              //     ),
              //   ),
              // ),

              // SizedBox(height: 20),
