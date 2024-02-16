import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zigonflutter/ui/views/register_view/register_view.dart';
import 'package:zigonflutter/utility/network_utility.dart';

class AuthServices {
  // GOOGLE AUTH
  siginInWithGoogle() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    log("Google Auth Creds\nAccess Token: ${gAuth.accessToken}\nID Token: ${gAuth.idToken}\nEmail${gUser.email}");
    tryLogin(gAuth.accessToken!, gAuth.idToken!, "google");
  }

  Future<void> tryLogin(String accessToken, String id, String social) async {
    String path = "registerUser";
    Map<String, dynamic> body = {
      "social": social,
      "social_id": id,
      "auth_token": accessToken
    };

    var response = await NetworkHandler.dioPost(path, body: body);
    response = jsonDecode(response);
    if (response["code"] == 201) {
      Get.to(
        () => RegisterUserScreen(),
        transition: Transition.downToUp,
      );
    }
  }
}
