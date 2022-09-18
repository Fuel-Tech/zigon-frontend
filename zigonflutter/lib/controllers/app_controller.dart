import 'package:get/get.dart';

enum NavBarSelectionItem { slide, discover, addSlide, notification, profile }

class AppController extends GetxController {
  var selectedNavBarItem = NavBarSelectionItem.slide;

  navBarHandler(var value) {
    selectedNavBarItem = value;
    update();
  }
}
