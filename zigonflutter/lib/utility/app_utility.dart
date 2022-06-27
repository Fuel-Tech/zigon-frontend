import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AppUtil {
  static Color primary = const Color(0xff232323);
  static Color secondary = const Color(0xffECCE00);
  static Gradient buttonGradient = const LinearGradient(
      colors: [Color(0xFFFFDE00), Color(0xFF645701)], stops: [0.1, 0.9]);
  static Color recievedMsgColor = const Color(0xFFFFFFFF);
  static Color sendMsgColor = const Color(0xFF808080);
  static Color onlineGreen = const Color(0xFF199A2F);
  static Color lightTextColor = const Color(0xFF9E9E9E);

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  ///Text Style 1 - Raleway
  static TextStyle textStyle1(
      {double textSize = 16.0,
      FontWeight weight = FontWeight.w400,
      Color textColor = Colors.white}) {
    return GoogleFonts.raleway(
        fontSize: textSize, fontWeight: weight, color: textColor);
  }

  ///Text Style 2 - Quicksand
  static TextStyle textStyle2(
      {double textSize = 16.0,
      FontWeight weight = FontWeight.w400,
      Color textColor = Colors.white}) {
    return GoogleFonts.quicksand(
        fontSize: textSize, fontWeight: weight, color: textColor);
  }

  ///Gets Current Date
  static DateTime today = DateTime.now();

  ///Date Format - dd MM yyyy
  static DateFormat formatter1 = DateFormat('dd MMM yyyy');

  ///Date Format - yyyy-MM-dd
  static DateFormat formatter2 = DateFormat('yyyy-MM-dd');

  ///Gets Current Date in the format dd MMM yyyy
  static String getFormattedDate() {
    return formatter1.format(today);
  }
}
