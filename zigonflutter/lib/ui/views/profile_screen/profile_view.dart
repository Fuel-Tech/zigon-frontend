// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/controllers/profile_controller.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/ui/views/user_settings_screen.dart/user_settings_view.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';
import 'package:zigonflutter/ui/widgets/profile_widgets.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/network_utility.dart';

class ProfileView extends StatelessWidget with ProfileWidgets {
  ProfileView({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());
  final List<String> thumbs = [
    'https://images.pexels.com/photos/3889742/pexels-photo-3889742.jpeg',
    'https://images.pexels.com/photos/4871012/pexels-photo-4871012.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2499699/pexels-photo-2499699.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff232323),
        body: SafeArea(
          child: GetBuilder<ProfileController>(builder: (ctrl) {
            return Obx(
              () => profileController.isLoading.isTrue
                  ? const Center(
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          //Profile Header
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundImage: NetworkImage(IMG_URL +
                                          (ctrl.userProfileModel?.msg.User
                                                  .profile_pic ??
                                              '')),
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: Get.width * .38,
                                          child: Text(
                                            "${ctrl.userProfileModel?.msg.User.first_name ?? ''}",
                                            style: GoogleFonts.roboto(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            overflow: TextOverflow.clip,
                                          ),
                                        ),
                                        Text(
                                          "@${ctrl.userProfileModel!.msg.User.username}",
                                          style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                                onTap: () {},
                                                child: Icon(
                                                    Icons.play_arrow_rounded)),
                                            SizedBox(width: 20),
                                            InkWell(
                                                onTap: () {},
                                                child: Icon(
                                                    Ionicons.logo_instagram)),
                                            SizedBox(width: 20),
                                            ctrl.userProfileSelected
                                                ? Container()
                                                : InkWell(
                                                    onTap: () {
                                                      //  TODO: ADD POPMENU FOR BLOCK AND REPORT
                                                    },
                                                    child: Icon(Icons
                                                        .more_vert_rounded)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    //FOLLOW/UNFOLLOW / MESSAGES
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppUtil.secondary,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 8),
                                        child: Row(
                                          children: [
                                            Icon(
                                              ctrl.userProfileSelected
                                                  ? Icons.message
                                                  : Icons.add_box_rounded,
                                              size: 16,
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              ctrl.userProfileSelected
                                                  ? 'Chat'
                                                  : 'Follow',
                                              style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    // MESSAGE / SETTINGS
                                    GestureDetector(
                                      onTap: () {
                                        ctrl.userProfileSelected
                                            ? Get.to(() => UserSettingsView())
                                            : null;
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppUtil.primary,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 8),
                                        child: Row(
                                          children: [
                                            Icon(
                                              ctrl.userProfileSelected
                                                  ? Icons.settings
                                                  : Icons.message,
                                              size: 16,
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              ctrl.userProfileSelected
                                                  ? 'Settings'
                                                  : 'Chat',
                                              style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          //User Stats
                          SizedBox(
                            width: AppUtil.screenWidth(context),
                            height: 45,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                userProfileStatsWidget(
                                    ctrl.userProfileModel!.msg.User
                                        .followers_count!
                                        .toStringAsFixed(0),
                                    'Followers'),
                                VerticalDivider(
                                  color: AppUtil.secondary,
                                  thickness: 2,
                                ),
                                userProfileStatsWidget(
                                    ctrl.userProfileModel!.msg.User.video_count!
                                        .toStringAsFixed(0),
                                    'Posts'),
                                VerticalDivider(
                                  color: AppUtil.secondary,
                                  thickness: 2,
                                ),
                                userProfileStatsWidget(
                                    ctrl.userProfileModel!.msg.User.likes_count!
                                        .toStringAsFixed(0),
                                    'Likes'),
                              ],
                            ),
                          ),

                          SizedBox(height: 30),
                          TabBar(
                            tabs: const [
                              Text('Slides'),
                              Text('Liked'),
                              Text('Favouite'),
                            ],
                            indicatorColor: AppUtil.secondary,
                            indicatorWeight: 4,
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 9 / 16,
                                  ),
                                  itemCount: thumbs.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return slideGridWidgets(
                                      thumbUrl: thumbs[index],
                                      likes: '2k',
                                      comments: '12',
                                      views: '32k',
                                    );
                                  },
                                ),
                                GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 9 / 16,
                                  ),
                                  itemCount: thumbs.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return slideGridWidgets(
                                      thumbUrl: thumbs[index],
                                      likes: '2k',
                                      comments: '12',
                                      views: '32k',
                                    );
                                  },
                                ),
                                GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          childAspectRatio: 9 / 16),
                                  itemCount: thumbs.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return slideGridWidgets(
                                      thumbUrl: thumbs[index],
                                      likes: '2k',
                                      comments: '12',
                                      views: '32k',
                                    );
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
            );
          }),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonWidgets.bottomFloatingBar(context),
      ),
    );
  }
}

List t = ['t2', 't3', 't4'];

slideGridWidgets({
  String thumbUrl = '',
  String likes = '0',
  String comments = '0',
  String views = '0',
}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          thumbUrl,
        ),
        fit: BoxFit.cover,
        // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),

        filterQuality: FilterQuality.low,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Icon(Icons.remove_red_eye),
              Text('$views'),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.message_rounded),
              Text('$comments'),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.favorite),
              Text('$likes'),
            ],
          ),
        ],
      ),
    ),
  );
}

userProfileNavBar(
    ProfileController controller, String title, ProfileTabSelected value) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        color: controller.userProfileIsSelected == value
            ? AppUtil.secondary
            : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
      child: Text(
        title,
        style: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

userProfileStatsWidget(String value, String title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        value,
        style: AppUtil.textStyle2(textSize: 16, weight: FontWeight.w500),
      ),
      Text(
        title,
        style: AppUtil.textStyle1(
            textSize: 14,
            weight: FontWeight.w500,
            textColor: AppUtil.lightTextColor),
      ),
    ],
  );
}
