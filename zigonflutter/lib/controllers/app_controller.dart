import 'package:get/get.dart';
import 'package:zigonflutter/utility/network_utility.dart';
import 'package:dio/dio.dart' as dio;
import '../utility/app_utility.dart';
import '../utility/shared_prefs.dart';

class AppController extends GetxController {
  var selectedNavBarItem = NavBarSelectionItem.slide;
  RxDouble uploadProgress = 0.0.obs;
  RxBool isUploadingVideo = false.obs;
  navBarHandler(var value) {
    selectedNavBarItem = value;
    update();
  }

  Future<void> uploadVideo(
    var path, {
    required dio.FormData body,
  }) async {
    final dios = NetworkHandler.dio;

    String userID =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    String userToken =
        SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERTOKEN);

    Map<String, dynamic> headers = {
      "Api-Key": AppUtil.API_KEY,
      "User-Id": userID,
      "Auth-Token": userToken,
      "device": AppUtil.DEVICE,
      "version": AppUtil.APP_VERSION,
      "ip": AppUtil.IP,
      "device-token": AppUtil.DEVICE_TOKEN,
      "content-type": "application/json"
    };
    dios.options.headers.addAll(headers);

    String postUrl = BASE_URL + path;
    isUploadingVideo.value = true;
    await dios.post(postUrl, data: body, onSendProgress: (sent, total) {
      uploadProgress.value = sent / total;
    }).then((value) => Get.back());
    isUploadingVideo.value = false;
  }
}

class Dio {}

enum NavBarSelectionItem {
  slide,
  discover,
  addSlide,
  notification,
  profile,
  userprofile,
}
