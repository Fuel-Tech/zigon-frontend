import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/slides_controller.dart';
import '../../utility/app_utility.dart';
import '../widgets/common_widgets.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);
  final SlidesController slidesController = Get.put(SlidesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: CommonWidgets.bottomFloatingBar(context),
      backgroundColor: const Color(0xff232323),
      body: GetBuilder<SlidesController>(builder: (controller) {
        return Column(
          children: [
            //Profile Header
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: AppUtil.secondary,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color(0xffFF4E50),
                      AppUtil.secondary,
                    ], // Gradient from https://learnui.design/tools/gradient-generator.html
                    tileMode: TileMode.mirror,
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.all(20),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FirstName\nLastName',
                                style: GoogleFonts.raleway(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'UserID',
                                style: GoogleFonts.raleway(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppUtil.secondary,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(6),
                                    child: Text(
                                      'Following',
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppUtil.primary,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(6),
                                    child: Row(
                                      children: [
                                        Icon(Icons.message, size: 20),
                                        Text(
                                          'Message',
                                          style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(FlutterIcons.facebook_box_mco),
                          SizedBox(height: 5),
                          Icon(FlutterIcons.instagram_ant),
                          SizedBox(height: 5),
                          Transform.rotate(
                            angle: pi / 2,
                            child: Icon(Icons.more_vert_rounded),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            //User Stats
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SizedBox(
                width: AppUtil.screenWidth(context),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    profileStatsWidget('2', 'Followers'),
                    VerticalDivider(
                      color: AppUtil.secondary,
                      thickness: 2,
                    ),
                    profileStatsWidget('1', 'Posts'),
                    VerticalDivider(
                      color: AppUtil.secondary,
                      thickness: 2,
                    ),
                    profileStatsWidget('1', 'Likes'),
                  ],
                ),
              ),
            ),

            //Slides List
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemCount: 16,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ac1.JPG'),
                              fit: BoxFit.cover),
                        ),
                        child: Column(
                          children: [Row()],
                        ),
                      );
                    }),
              ),
            ),
          ],
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CommonWidgets.bottomFloatingBar(context),
    );
  }
}

profileStatsWidget(String value, String title) {
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
