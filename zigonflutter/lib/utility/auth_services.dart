import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  // GOOGLE AUTH
  siginInWithGoogle() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    log("Google Auth Creds\nAccess Token: ${gAuth.accessToken}\nID Token: ${gAuth.idToken}\nEmail${gUser.email}");
  }
}
