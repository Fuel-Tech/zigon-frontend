import 'package:get/get.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/models/user_profile_model/user_profile_model.dart';
import 'package:zigonflutter/utility/network_utility.dart';
import 'package:zigonflutter/utility/shared_prefs.dart';

class ProfileController extends GetxController {
  bool userProfileSelected = true;
  String? userID;
  ProfileTabSelected userProfileIsSelected = ProfileTabSelected.slides;
  RxBool isLoading = true.obs;
  UserProfileModel? userProfileModel;

  ///FETCHED USER DETAILS
  Future<void> getUserDetails() async {
    String path = "showUserDetails";
    String body = '''{
      "user_id: $userID
    }''';

    var response = await NetworkHandler.dioPost(path, body: body);

    if (response["code"] == 200) {
      userProfileModel = UserProfileModel.fromJson(response);
      isLoading.value = false;
      update();
    }
    return;
  }

  iniChecks() {
    Get.arguments != null ? userProfileSelected = false : null;
    if (userProfileSelected) {
      userID =
          SharedPrefHandler.getInstance().getString(SharedPrefHandler.USERID);
    } else {
      userID = Get.arguments["id"];
    }
    getUserDetails();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    iniChecks();
    super.onInit();
  }
}
