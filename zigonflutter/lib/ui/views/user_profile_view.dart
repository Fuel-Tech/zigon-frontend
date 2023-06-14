// // ignore_for_file: prefer_const_constructors
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter_font_icons/flutter_font_icons.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:zigonflutter/controllers/slides_controller.dart';
// import 'package:zigonflutter/ui/widgets/common_widgets.dart';
// import 'package:zigonflutter/ui/widgets/profile_widgets.dart';
// import 'package:zigonflutter/utility/app_utility.dart';
// import 'package:zigonflutter/utility/navigation_utility.dart';
// import 'package:zigonflutter/utility/network_utility.dart';

// class UserProfileView extends StatelessWidget with ProfileWidgets {
//   UserProfileView({Key? key}) : super(key: key);
//   final SlidesController slidesController = Get.put(SlidesController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       // floatingActionButton: CommonWidgets.bottomFloatingBar(context),
//       backgroundColor: const Color(0xff232323),
//       body: GetBuilder<SlidesController>(builder: (controller) {
//         return Column(
//           children: [
//             //Profile Header
//             Padding(
//               padding: const EdgeInsets.only(bottom: 20),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: AppUtil.secondary,
//                   gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment(0.8, 1),
//                     colors: <Color>[
//                       Color(0xffFF4E50),
//                       AppUtil.secondary,
//                     ], // Gradient from https://learnui.design/tools/gradient-generator.html
//                     tileMode: TileMode.mirror,
//                   ),
//                   borderRadius: BorderRadius.vertical(
//                     bottom: Radius.circular(40),
//                   ),
//                 ),
//                 padding: EdgeInsets.only(bottom: 10),
//                 child: SafeArea(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             CircleAvatar(
//                               radius: 55,
//                               backgroundColor: Colors.green,
//                               child: CircleAvatar(
//                                 radius: 50,
//                                 backgroundImage: NetworkImage(IMG_URL +
//                                     slidesController
//                                         .slideList!.msg[0].User.profile_pic),
//                               ),
//                             ),
//                             SizedBox(width: 5),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   slidesController.getUserFirstName +
//                                       '\n' +
//                                       slidesController.getUserLastName,
//                                   style: GoogleFonts.raleway(
//                                     fontSize: 22,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                                 Text(
//                                   slidesController.getUserProfileName,
//                                   style: GoogleFonts.raleway(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Icon(Icons.facebook),
//                             SizedBox(height: 5),
//                             Icon(Ionicons.logo_instagram),
//                             SizedBox(height: 5),
//                             GestureDetector(
//                               onTap: () {
//                                 Get.toNamed(PageRouteList.userSettings);
//                               },
//                               child: Transform.rotate(
//                                 angle: pi / 2,
//                                 child: Icon(Icons.more_vert_rounded),
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             //User Stats
//             Padding(
//               padding: const EdgeInsets.only(bottom: 30),
//               child: SizedBox(
//                 width: AppUtil.screenWidth(context),
//                 height: 50,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     userProfileStatsWidget(
//                         slidesController.getUserFollowingCount, 'Following'),
//                     VerticalDivider(
//                       color: AppUtil.secondary,
//                       thickness: 2,
//                     ),
//                     userProfileStatsWidget(
//                         slidesController.getUserVideoCount, 'Slides'),
//                     VerticalDivider(
//                       color: AppUtil.secondary,
//                       thickness: 2,
//                     ),
//                     userProfileStatsWidget(
//                         slidesController.getUserLikesCount, 'Likes'),
//                   ],
//                 ),
//               ),
//             ),
//             //List Nav Bar
//             Padding(
//               padding: const EdgeInsets.only(bottom: 30),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   userProfileNavBar(
//                     slidesController,
//                     'Slides',
//                     UserProfileIsSelected.slides,
//                   ),
//                   userProfileNavBar(
//                     slidesController,
//                     'Liked',
//                     UserProfileIsSelected.liked,
//                   ),
//                   userProfileNavBar(
//                     slidesController,
//                     'Saved',
//                     UserProfileIsSelected.saved,
//                   ),
//                 ],
//               ),
//             ),
//             //Slides List
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 12.0, right: 12.0),
//                 child: GridView.builder(
//                     shrinkWrap: true,
//                     padding: EdgeInsets.zero,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 3,
//                       crossAxisSpacing: 5,
//                       mainAxisSpacing: 5,
//                     ),
//                     physics: BouncingScrollPhysics(),
//                     itemCount: 1,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           Get.toNamed(PageRouteList.viewSlides);
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('assets/images/t1.JPG'),
//                                 fit: BoxFit.cover),
//                           ),
//                           child: Column(
//                             children: [Row()],
//                           ),
//                         ),
//                       );
//                     }),
//               ),
//             ),
//           ],
//         );
//       }),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: CommonWidgets.bottomFloatingBar(context),
//     );
//   }
// }

// userProfileNavBar(
//     SlidesController controller, String title, UserProfileIsSelected value) {
//   return GestureDetector(
//     onTap: () {
//       controller.userProfileSelector(value);
//     },
//     child: Container(
//       decoration: BoxDecoration(
//         color: controller.userProfileIsSelected == value
//             ? AppUtil.secondary
//             : Colors.transparent,
//         borderRadius: BorderRadius.circular(16),
//       ),
//       padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
//       child: Text(
//         title,
//         style: GoogleFonts.openSans(
//           fontSize: 16,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     ),
//   );
// }

// userProfileStatsWidget(String value, String title) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Text(
//         value,
//         style: AppUtil.textStyle2(textSize: 16, weight: FontWeight.w500),
//       ),
//       Text(
//         title,
//         style: AppUtil.textStyle1(
//             textSize: 14,
//             weight: FontWeight.w500,
//             textColor: AppUtil.lightTextColor),
//       ),
//     ],
//   );
// }
