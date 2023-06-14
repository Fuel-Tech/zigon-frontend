import 'package:get/get.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';

class ProfileController extends GetxController {
  bool userProfileSelected = true;
  ProfileTabSelected userProfileIsSelected = ProfileTabSelected.slides;

  @override
  void onInit() {
    // TODO: implement onInit
    Get.arguments != null ? userProfileSelected = false : null;
    super.onInit();
  }
}
