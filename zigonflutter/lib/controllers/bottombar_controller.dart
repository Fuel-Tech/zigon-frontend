import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class BottomBarController extends GetxController {
  PersistentTabController navBarController =
      PersistentTabController(initialIndex: 0);

  bool hideNavBar = false;

  toggleNavBar() {
    hideNavBar = !hideNavBar;
    update();
  }

  bool cameraView = false;
  
}
