// ignore_for_file: prefer_const_constructors
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/controllers/profile_controller.dart';
import 'package:zigonflutter/controllers/slide_screen_controller.dart';
import 'package:zigonflutter/ui/views/single_slide_view/single_slide_view.dart';
import 'package:zigonflutter/ui/views/user_settings_screen.dart/user_settings_view.dart';
import 'package:zigonflutter/ui/widgets/profile_widgets.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/network_utility.dart';

class ProfileView extends StatelessWidget with ProfileWidgets {
  ProfileView({Key? key, this.isFromSlides = false}) : super(key: key);
  final bool isFromSlides;
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ProfileController());
    return WillPopScope(
      onWillPop: () async {
        if (Get.arguments != null) {
          if (Get.arguments['fromSlides']) {
            Get.find<SlideScreenController>().playActiveVideo();
          }
        }
        return true;
      },
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color(0xff232323),
          body: SafeArea(
            child: GetBuilder<ProfileController>(builder: (ctrl) {
              return Obx(
                () => ctrl.isLoading.isTrue
                    ? Center(
                        child: SpinKitFadingCircle(
                        color: AppUtil.secondary,
                      ))
                    : Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: RefreshIndicator(
                          onRefresh: () async {
                            await ctrl.reloadScreen();
                          },
                          child: LayoutBuilder(builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return SingleChildScrollView(
                              physics: AlwaysScrollableScrollPhysics(),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                    minHeight: constraints.maxHeight),
                                child: Column(
                                  children: [
                                    //Profile Header
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    if (ctrl.isAddingImage
                                                        .isFalse) {
                                                      ctrl.editProfilePicture();
                                                    }
                                                  },
                                                  child: Container(
                                                    width: 100,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.amber,
                                                    ),
                                                    child: ctrl.file != null
                                                        ? Obx(
                                                            () => ClipOval(
                                                              child: Stack(
                                                                children: [
                                                                  Positioned(
                                                                    left: 0,
                                                                    right: 0,
                                                                    child: Image
                                                                        .file(
                                                                      fit: BoxFit
                                                                          .fill,
                                                                      ctrl.file!,
                                                                    ),
                                                                  ),
                                                                  ctrl.isAddingImage
                                                                              .value ==
                                                                          true
                                                                      ? CircularProgressIndicator()
                                                                      : SizedBox
                                                                          .shrink()
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        : ClipOval(
                                                            child:
                                                                CachedNetworkImage(
                                                              imageUrl: IMG_URL +
                                                                  (ctrl
                                                                          .userProfileModel
                                                                          ?.msg
                                                                          .User
                                                                          .profile_pic ??
                                                                      ''),
                                                              fit: BoxFit.cover,
                                                              errorWidget:
                                                                  (context, url,
                                                                      error) {
                                                                return ClipOval(
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/images/prodp.jpg",
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                  )),
                                              SizedBox(width: 8),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 10),
                                                  SizedBox(
                                                    width: Get.width * .38,
                                                    child: Text(
                                                      "${ctrl.userProfileModel?.msg.User.first_name ?? ''}",
                                                      style: GoogleFonts.roboto(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                      overflow:
                                                          TextOverflow.clip,
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "@${ctrl.userProfileModel!.msg.User.username}",
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      InkWell(
                                                          onTap: () {},
                                                          child: Icon(
                                                            Ionicons
                                                                .logo_instagram,
                                                          )),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              //FOLLOW/UNFOLLOW / MESSAGES
                                              SizedBox(height: 10),
                                              GestureDetector(
                                                onTap: () {
                                                  if (ctrl
                                                      .userProfileSelected) {
                                                    Get.snackbar("Server - 500",
                                                        "Chat MODULE DISABLED");
                                                  } else {
                                                    ctrl.toggleFollow();
                                                  }
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: AppUtil.secondary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: Colors.white),
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 6,
                                                      horizontal: 8),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        ctrl.userProfileSelected
                                                            ? Icons.message
                                                            : Icons
                                                                .add_box_rounded,
                                                        size: 16,
                                                      ),
                                                      SizedBox(width: 4),
                                                      Text(
                                                        ctrl.userProfileSelected
                                                            ? 'Chat'
                                                            : ctrl.isFollowing
                                                                ? 'Unfollow'
                                                                : 'Follow',
                                                        style:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                                      ? Get.to(() =>
                                                          UserSettingsView())
                                                      : null;
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: AppUtil.primary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: Colors.white),
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 6,
                                                      horizontal: 8),
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
                                                        style:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
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
                                              ctrl.userProfileModel!.msg.User
                                                  .video_count!
                                                  .toStringAsFixed(0),
                                              'Posts'),
                                          VerticalDivider(
                                            color: AppUtil.secondary,
                                            thickness: 2,
                                          ),
                                          ctrl.userProfileSelected
                                              ? userProfileStatsWidget(
                                                  ctrl.userProfileModel!.msg
                                                      .User.following_count!
                                                      .toStringAsFixed(0),
                                                  'Following')
                                              : userProfileStatsWidget(
                                                  ctrl.userProfileModel!.msg
                                                      .User.likes_count!
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
                                        Text('Private'),
                                      ],
                                      indicatorColor: AppUtil.secondary,
                                      indicatorWeight: 4,
                                    ),
                                    Obx(
                                      () => SizedBox(
                                        height: constraints.maxHeight -
                                            AppBar().preferredSize.height -
                                            150,
                                        child: TabBarView(
                                          children: [
                                            // SLIDES
                                            ctrl.publicVideos.isEmpty
                                                ? Center(
                                                    child: Text(
                                                        'You have no slides to show'))
                                                : GridView.builder(
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3,
                                                      childAspectRatio: 9 / 16,
                                                    ),
                                                    itemCount: ctrl
                                                        .publicVideos.length,
                                                    shrinkWrap: true,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return slideGridWidgets(
                                                        thumbUrl:
                                                            ctrl.publicVideos[
                                                                        index]
                                                                    ['Video']
                                                                ["thum"],
                                                        likes: ctrl
                                                            .publicVideos[index]
                                                                ['Video']
                                                                ["like_count"]
                                                            .toString(),
                                                        comments: ctrl
                                                            .publicVideos[index]
                                                                ['Video'][
                                                                "comment_count"]
                                                            .toString(),
                                                        views: ctrl
                                                            .publicVideos[index]
                                                                ['Video']
                                                                ["view"]
                                                            .toString(),
                                                        videoId: ctrl
                                                            .publicVideos[index]
                                                                ['Video']["id"]
                                                            .toString(),
                                                      );
                                                    },
                                                  ),
                                            // LIKED
                                            ctrl.likedVideos.isEmpty
                                                ? Center(
                                                    child: Text(
                                                        'You have not liked any slides yet'))
                                                : GridView.builder(
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3,
                                                      childAspectRatio: 9 / 16,
                                                    ),
                                                    itemCount:
                                                        ctrl.likedVideos.length,
                                                    shrinkWrap: true,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return slideGridWidgets(
                                                        thumbUrl:
                                                            ctrl.likedVideos[
                                                                        index]
                                                                    ["Video"]
                                                                ['thum'],
                                                        likes: ctrl
                                                            .likedVideos[index]
                                                                ["Video"]
                                                                ['like_count']
                                                            .toString(),
                                                        comments: '12',
                                                        views: ctrl.likedVideos[
                                                                index]["Video"]
                                                            ['view'],
                                                        videoId: ctrl
                                                            .likedVideos[index]
                                                                ['Video']["id"]
                                                            .toString(),
                                                      );
                                                    },
                                                  ),
                                            // PRIVATE
                                            ctrl.privateVideos.isEmpty
                                                ? Center(
                                                    child: Text(
                                                        'You have no slides to show'))
                                                : GridView.builder(
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                            crossAxisCount: 3,
                                                            childAspectRatio:
                                                                9 / 16),
                                                    itemCount: ctrl
                                                        .privateVideos.length,
                                                    shrinkWrap: true,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return slideGridWidgets(
                                                        thumbUrl:
                                                            ctrl.privateVideos[
                                                                        index]
                                                                    ['Video']
                                                                ["thum"],
                                                        likes: ctrl
                                                            .privateVideos[
                                                                index]['Video']
                                                                ["like_count"]
                                                            .toString(),
                                                        comments: ctrl
                                                            .privateVideos[
                                                                index]['Video'][
                                                                "comment_count"]
                                                            .toString(),
                                                        views: ctrl
                                                            .privateVideos[
                                                                index]['Video']
                                                                ["view"]
                                                            .toString(),
                                                        videoId: ctrl
                                                            .privateVideos[
                                                                index]['Video']
                                                                ["id"]
                                                            .toString(),
                                                      );
                                                    },
                                                  ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
              );
            }),
          ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          // floatingActionButton: CommonWidgets.bottomFloatingBar(context),
        ),
      ),
    );
  }
}

List t = ['t2', 't3', 't4'];

class SlideListWidget extends StatefulWidget {
  SlideListWidget({
    super.key,
  });
  @override
  State<SlideListWidget> createState() => _SlideListWidgetState();
}

class _SlideListWidgetState extends State<SlideListWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

slideGridWidgets({
  required String thumbUrl,
  String likes = '0',
  String comments = '0',
  String views = '0',
  required String videoId,
}) {
  return GestureDetector(
    onTap: () {
      Get.to(
        () => SlideBackground(),
        arguments: {"videoId": videoId},
        transition: Transition.upToDown,
      );
    },
    onLongPress: () {
      log("PRESSED");
      showMenu(
        context: Get.context!,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        position: const RelativeRect.fromLTRB(100, 70, 0, 0),
        color: AppUtil.primary,
        items: [
          PopupMenuItem(child: Text('Delete')),
          PopupMenuItem(child: Text('Make private')),
        ],
      );
    },
    child: AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            thumbUrl,
          ),
          fit: BoxFit.cover,
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
