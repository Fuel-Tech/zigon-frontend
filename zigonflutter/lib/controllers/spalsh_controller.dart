import 'package:get/get.dart';
import 'package:zigonflutter/utility/navigation_utility.dart';

class SplashController extends GetxController {
  splashCheck() {
    Future.delayed(const Duration(seconds: 5))
        .then((value) => Get.offAndToNamed(PageRouteList.slides));
  }

  @override
  void onInit() {
    splashCheck();
    super.onInit();
  }
}
