import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';

String BASE_URL = 'http://zigon.in/mobile/api/';
String IMG_URL = 'http://zigon.in/mobile/';

class NetworkHandler {
  static final Dio dio = Dio();

  static dioPost(var path, {var body, String userToken = ''}) async {
    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID) ??
            '0';
    String token = SharedPrefHandler.getInstance()
            .getString(SharedPrefHandler.USERTOKEN) ??
        '0';

    Map<String, dynamic> headers = {
      "Api-Key": AppUtil.API_KEY,
      "User-Id": userID,
      "Auth-Token": token,
      "device": AppUtil.DEVICE,
      "version": AppUtil.APP_VERSION,
      "ip": AppUtil.IP,
      "device-token": AppUtil.DEVICE_TOKEN,
      "content-type": "application/json"
    };

    dio.options.headers.addAll(headers);

    String postUrl = BASE_URL + path;
    log('DIO POST URL: $postUrl');
    log('DIO POST BODY: $body');

    Response<dynamic> response;
    if (body == null) {
      response = await dio.post(postUrl);
    } else {
      response = await dio.post(postUrl, data: body);
    }

    log("Status Code: ${response.statusCode}");

    if (response.statusCode == 200) {
      log("data: ${response.data}");
      return response.data;
    } else if (response.statusCode == 201) {
      log('$postUrl - Created');
    } else if (response.statusCode == 204) {
      log('$postUrl - Success - No Content');
    } else {
      log('DIO-POST $postUrl FAILED\nStatus Code: ${response.statusCode}\nData: ${response.data}');
    }
  }

  static dioAuth(var path, {String? body}) async {
    Map<String, dynamic> headers = {
      "Api-Key": AppUtil.API_KEY,
      "device": AppUtil.DEVICE,
      "version": AppUtil.APP_VERSION,
      "ip": AppUtil.IP,
      "device-token": AppUtil.DEVICE_TOKEN,
      "content-type": "application/json"
    };
    dio.options.headers.addAll(headers);

    var postURL = BASE_URL + path;
    log('DIO-AUTH - POST URL: $postURL');

    try {
      var response = await dio.post(postURL, data: body);
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        log('DIO-AUTH SUCCESS');
        return response.data;
      } else {
        log('DIO-AUTH FAILED\nStatus Code: ${response.statusCode}\nData: ${response.data}');
      }
    } on Exception catch (e) {
      log('Exception');
    }
  }
}
