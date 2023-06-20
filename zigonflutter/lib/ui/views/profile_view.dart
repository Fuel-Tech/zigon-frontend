// ignore_for_file: prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/controllers/profile_controller.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';
import 'package:zigonflutter/ui/widgets/profile_widgets.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/navigation_utility.dart';

class ProfileView extends StatelessWidget with ProfileWidgets {
  ProfileView({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff232323),
        body: SafeArea(
          child: GetBuilder<SlidesController>(builder: (controller) {
            return Column(
              children: [
                //Profile Header
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohammed\nJassim',
                                style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                '@Jaachu_',
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
                                  Icon(Icons.facebook),
                                  SizedBox(width: 10),
                                  Icon(Ionicons.logo_instagram),
                                  SizedBox(width: 10),
                                  Icon(Icons.more_vert_rounded),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppUtil.primary,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.white),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.message,
                                  size: 16,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Message',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            decoration: BoxDecoration(
                              color: AppUtil.primary,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.white),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.message,
                                  size: 16,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Message',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12),
                //User Stats
                SizedBox(
                  width: AppUtil.screenWidth(context),
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      userProfileStatsWidget('0', 'Followers'),
                      VerticalDivider(
                        color: AppUtil.secondary,
                        thickness: 2,
                      ),
                      userProfileStatsWidget('4', 'Posts'),
                      VerticalDivider(
                        color: AppUtil.secondary,
                        thickness: 2,
                      ),
                      userProfileStatsWidget('12', 'Likes'),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                TabBar(
                  tabs: [
                    Text('Slides'),
                    Text('Liked'),
                    Text('Favouite'),
                  ],
                  indicatorColor: AppUtil.secondary,
                ),
                TabBarView(
                  children: [
                    Container(),
                    // GridView.builder(
                    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //       crossAxisCount: 3),
                    //       itemCount: 3,
                    //       shrinkWrap: true,
                    //   itemBuilder: (context, index) {
                    //     return Container(
                    //       color: Colors.red,
                    //     );
                    //   },
                    // ),
                    Container(),
                    Container(),
                  ],
                )
              ],
            );
          }),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CommonWidgets.bottomFloatingBar(context),
      ),
    );
  }
}

List t = ['t2', 't3', 't4'];

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

//List Nav Bar
// Padding(
//   padding: const EdgeInsets.only(bottom: 30),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       userProfileNavBar(
//         profileController,
//         'Slides',
//         ProfileTabSelected.slides,
//       ),
//       userProfileNavBar(
//         profileController,
//         'Liked',
//         ProfileTabSelected.liked,
//       ),
//       userProfileNavBar(
//         profileController,
//         'Saved',
//         ProfileTabSelected.saved,
//       ),
//     ],
//   ),
// ),
//Slides List
// Expanded(
//   child: Padding(
//     padding: const EdgeInsets.only(left: 12.0, right: 12.0),
//     child: GridView.builder(
//         shrinkWrap: true,
//         padding: EdgeInsets.zero,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 5,
//           mainAxisSpacing: 5,
//         ),
//         physics: BouncingScrollPhysics(),
//         itemCount: t.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               Get.toNamed(PageRouteList.viewSlides);
//             },
//             child: Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage(
//                         'assets/images/${t[index]}.JPG'),
//                     fit: BoxFit.cover),
//               ),
//               child: Column(
//                 children: [Row()],
//               ),
//             ),
//           );
//         }),
//   ),
// ),
