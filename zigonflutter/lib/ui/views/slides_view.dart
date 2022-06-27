// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';
import 'package:zigonflutter/ui/widgets/slides_widgets.dart';
import 'package:zigonflutter/utility/app_utility.dart';

class SlidesView extends StatelessWidget with SlidesWidget {
  SlidesView({Key? key}) : super(key: key);
  final SlidesController slidesController = Get.put(SlidesController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SlidesController>(builder: (controller) {
      return Scaffold(
        backgroundColor: AppUtil.primary,
        body: slidesController.videoPlayerController.value.isInitialized
            ? GestureDetector(
                onTap: () {
                  slidesController.togglePlayVideo();
                },
                child: Stack(
                  children: [
                    SizedBox(
                      child:
                          VideoPlayer(slidesController.videoPlayerController),
                    ),
                    onTopGradient(context),
                    //Top Tools
                    SafeArea(
                      child: SizedBox(
                        width: AppUtil.screenWidth(context),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  watchAllSlidesButton(),
                                  const SizedBox(width: 10),
                                  watchFollowingSlidesButton(),
                                ],
                              ),
                              liveButton(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Right Tools
                    SafeArea(
                      child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: SizedBox(
                            height: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.favorite,
                                        color: Colors.white, size: 35),
                                    SizedBox(height: 3),
                                    Text('125K',
                                        style: AppUtil.textStyle2(
                                            textSize: 14,
                                            weight: FontWeight.w400))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.comment,
                                        color: Colors.white, size: 35),
                                    SizedBox(height: 3),
                                    Text(
                                      '251',
                                      style: AppUtil.textStyle2(
                                          textSize: 14,
                                          weight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    log('message');
                                  },
                                  child: Column(
                                    children: [
                                      Icon(Icons.share,
                                          color: Colors.white, size: 35),
                                      SizedBox(height: 3),
                                      Text(
                                        'Share',
                                        style: AppUtil.textStyle1(
                                            textSize: 14,
                                            weight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage('assets/images/disc.png'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ), //User Details Widgets

                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 55,
                          bottom: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Profile picture
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/prodp.jpg'),
                            ),
                            SizedBox(height: 5),
                            //Name, tag, views, options
                            Row(
                              children: [
                                Text(
                                  '@SamAD_',
                                  style: AppUtil.textStyle1(
                                      weight: FontWeight.w600),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                Text(
                                  '125K',
                                  style: AppUtil.textStyle2(textSize: 12),
                                ),
                                SizedBox(width: 10),
                                settingsWidget(),
                              ],
                            ),
                            //Video Description
                            Text(
                              'Making a slide is so much more than just danicing. Learning the moves, picking the right audio and putting it all together with the best outfits really makes your contant uniquely yours.',
                              style: AppUtil.textStyle2(
                                textSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // floatingActionButton: CommonWidgets.bottomFloatingBar(context),
        bottomNavigationBar: CommonWidgets.bottomFloatingBar(context),
        extendBody: true,
      );
    });
  }
}
