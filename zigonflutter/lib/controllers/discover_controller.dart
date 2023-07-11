import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:zigonflutter/models/slide-list-model/slide_list_model.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/network_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';

class DiscoverController extends GetxController {
  SlideListModel? set1;
  SlideListModel? set2;

  RxBool isLoading1 = true.obs;
  RxBool isLoading2 = true.obs;

  Future<void> getPopularVideo() async {
    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String url = 'showRelatedVideos';
    String body = '''{
      "user_id":${int.parse(userID)},
      "starting_point":0,
      "device_id":1,
      "limit":4
    }''';

    var response = await NetworkHandler.dioPost(url, body: body);
    var json = jsonDecode(response);

    log(json.toString());
    if (json["code"] == 200) {
      set1 = SlideListModel.fromJson(json);
      isLoading1.value = false;
    } else if (json['code'] == 201) {
      log("NO MORE VIDEOS TO SHOW!!!");
      isLoading1.value = false;
    }
  }

  Future<void> getTrendingVideo() async {
    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String url = 'showRelatedVideos';
    String body = '''{
      "user_id":${int.parse(userID)},
      "starting_point":0,
      "device_id":1,
      "limit":4
    }''';

    var response = await NetworkHandler.dioPost(url, body: body);
    var json = jsonDecode(response);
    if (json["code"] == 200) {
      set2 = SlideListModel.fromJson(json);
      isLoading2.value = false;
    } else if (json['code'] == 201) {
      log("NO MORE VIDEOS TO SHOW!!!");
      isLoading2.value = false;
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getPopularVideo();
    getTrendingVideo();
    super.onInit();
  }
}
