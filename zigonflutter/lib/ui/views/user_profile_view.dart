// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';
import 'package:zigonflutter/ui/widgets/profile_widgets.dart';
import 'package:zigonflutter/utility/app_utility.dart';

class UserProfileView extends StatelessWidget with ProfileWidgets {
  const UserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: CommonWidgets.bottomFloatingBar(context),
      backgroundColor: const Color(0xff232323),
      body: Column(
        children: [
          //Profile Header/Banner
          Container(
            color: Colors.white,
          ),
          SafeArea(
            
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(48),
                bottomRight: Radius.circular(48),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(48),
                    bottomRight: Radius.circular(48),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/probg.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4.0,
                    sigmaY: 4.0,
                  ),
                  child: Container(
                    color: Colors.white,
                    width: AppUtil.screenWidth(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        profilePictureWidget('assets/images/prodp2.jpeg'),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            userNameWidget('Sreehari\nRajeev'),
                            userIDWidget('@Harry101_'),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                instagramWidget(),
                                SizedBox(width: 16),
                                youtubeWidget(),
                                SizedBox(width: 20),
                                // settingsWidget()
                              ],
                            ),
                            SizedBox(height: 10),
                            // editProfileButton(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          //Profile Stats
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: SizedBox(
              width: AppUtil.screenWidth(context),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2',
                        style: AppUtil.textStyle2(
                            textSize: 16, weight: FontWeight.w500),
                      ),
                      Text(
                        'Followers',
                        style: AppUtil.textStyle1(
                            textSize: 14,
                            weight: FontWeight.w500,
                            textColor: AppUtil.lightTextColor),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: AppUtil.secondary,
                    thickness: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1',
                        style: AppUtil.textStyle2(
                            textSize: 16, weight: FontWeight.w500),
                      ),
                      Text(
                        'Posts',
                        style: AppUtil.textStyle1(
                            textSize: 14,
                            weight: FontWeight.w500,
                            textColor: AppUtil.lightTextColor),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: AppUtil.secondary,
                    thickness: 2,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1',
                        style: AppUtil.textStyle2(
                            textSize: 16, weight: FontWeight.w500),
                      ),
                      Text(
                        'Likes',
                        style: AppUtil.textStyle1(
                            textSize: 14,
                            weight: FontWeight.w500,
                            textColor: AppUtil.lightTextColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          //Slides List
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  physics: BouncingScrollPhysics(),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/ac1.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row()
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CommonWidgets.bottomFloatingBar(context),
    );
  }
}
