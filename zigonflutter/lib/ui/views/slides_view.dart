// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/ui/widgets/common_widgets.dart';
import 'package:zigonflutter/ui/widgets/slides_widgets.dart';
import 'package:zigonflutter/utility/app_utility.dart';

class SlidesView extends StatelessWidget {
  SlidesView({Key? key}) : super(key: key);
  final SlidesController slidesController = Get.put(SlidesController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SlidesController>(
        init: SlidesController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppUtil.primary,
            body: Center(
                child: slidesController.chewieController != null &&
                        controller.chewieController!.videoPlayerController.value
                            .isInitialized
                    ? ListWheelScrollView(
                        onSelectedItemChanged: (value) {
                          log('scrolled $value');
                        },
                        physics: FixedExtentScrollPhysics(),
                        overAndUnderCenterOpacity: 0,
                        itemExtent: MediaQuery.of(context).size.height,
                        children: List.generate(
                            1,
                            (i) => Stack(
                                  children: [
                                    Chewie(
                                        controller:
                                            slidesController.chewieController!)
                                  ],
                                )))
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [CircularProgressIndicator()],
                      )),

            // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            // floatingActionButton: CommonWidgets.bottomFloatingBar(context),
            bottomNavigationBar: CommonWidgets.bottomFloatingBar(context),
            extendBody: true,
          );
        });
  }
}

videoScrollViewWidget(BuildContext context) {
  final SlidesController controller = Get.find();
  return ListWheelScrollView(
    physics: FixedExtentScrollPhysics(),
    overAndUnderCenterOpacity: 0,
    itemExtent: AppUtil.screenHeight(context),
    children: [],
  );
}

scrollViewTest(BuildContext context) {
  final SlidesController slidesController = Get.find();
  return ListWheelScrollView(
    physics: FixedExtentScrollPhysics(),
    overAndUnderCenterOpacity: 0,
    itemExtent: MediaQuery.of(context).size.height,
    children: List.generate(
        1,
        (i) => Stack(
              children: [
                SizedBox(
                  width: AppUtil.screenWidth(context),
                  height: AppUtil.screenHeight(context),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage('assets/images/${data[i]}.jpg'),
                  //       filterQuality: FilterQuality.low,
                  //       fit: BoxFit.fitHeight),
                  // ),
                  child: VideoPlayer(slidesController.videoPlayerController),
                ),
                SlidesWidget.onTopGradient(context),
                //----------------
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
                              SlidesWidget.watchAllSlidesButton(),
                              const SizedBox(width: 10),
                              SlidesWidget.watchFollowingSlidesButton(),
                            ],
                          ),
                          SlidesWidget.liveButton(),
                        ],
                      ),
                    ),
                  ),
                ),
                //----------------
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
                                    color: Colors.red, size: 35),
                                SizedBox(height: 3),
                                Text('',
                                    style: AppUtil.textStyle2(
                                        textSize: 14, weight: FontWeight.w400))
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.comment,
                                    color: Colors.white, size: 35),
                                SizedBox(height: 3),
                                Text(
                                  '',
                                  style: AppUtil.textStyle2(
                                      textSize: 14, weight: FontWeight.w400),
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
                                        textSize: 14, weight: FontWeight.w400),
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
                ),
                //----------------
                //Bottom Tools
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
                              AssetImage('assets/images/prodp2.jpeg'),
                        ),
                        SizedBox(height: 5),
                        //Name, tag, views, options
                        Row(
                          children: [
                            Text(
                              '@Harry101_',
                              style:
                                  AppUtil.textStyle1(weight: FontWeight.w600),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                              size: 16,
                            ),
                            Text(
                              '16',
                              style: AppUtil.textStyle2(textSize: 12),
                            ),
                            SizedBox(width: 10),
                            SlidesWidget.settingsWidget(),
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
            )),
  );
}

List data = ['a1', 'a2', 'a3', 'a4', 'a5'];

// Stack(
//             children: [
//               SizedBox(
//                 height: MediaQuery.of(context).size.height,
//                 // child: VideoPlayer(slidesController.controller),
//                 child: Image.asset(
//                   "assets/images/a1.jpg",
//                   fit: BoxFit.fitHeight,
//                 ),
//               ),
//               onTopGradient(context),
              // //Top Tools
              // SafeArea(
              //   child: SizedBox(
              //     width: AppUtil.screenWidth(context),
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Row(
              //             children: [
              //               watchAllSlidesButton(),
              //               const SizedBox(width: 10),
              //               watchFollowingSlidesButton(),
              //             ],
              //           ),
              //           liveButton(),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // //Right Tools
              // SafeArea(
              //   child: Align(
              //     alignment: FractionalOffset.bottomRight,
              //     child: Padding(
              //       padding: EdgeInsets.all(8),
              //       child: SizedBox(
              //         height: 250,
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           children: [
              //             Column(
              //               children: [
              //                 Icon(Icons.favorite, color: Colors.red, size: 35),
              //                 SizedBox(height: 3),
              //                 Text('',
              //                     style: AppUtil.textStyle2(
              //                         textSize: 14, weight: FontWeight.w400))
              //               ],
              //             ),
              //             Column(
              //               children: [
              //                 Icon(Icons.comment,
              //                     color: Colors.white, size: 35),
              //                 SizedBox(height: 3),
              //                 Text(
              //                   '',
              //                   style: AppUtil.textStyle2(
              //                       textSize: 14, weight: FontWeight.w400),
              //                 )
              //               ],
              //             ),
              //             GestureDetector(
              //               onTap: () {
              //                 log('message');
              //               },
              //               child: Column(
              //                 children: [
              //                   Icon(Icons.share,
              //                       color: Colors.white, size: 35),
              //                   SizedBox(height: 3),
              //                   Text(
              //                     'Share',
              //                     style: AppUtil.textStyle1(
              //                         textSize: 14, weight: FontWeight.w400),
              //                   )
              //                 ],
              //               ),
              //             ),
              //             CircleAvatar(
              //               radius: 25,
              //               backgroundColor: Colors.transparent,
              //               backgroundImage:
              //                   AssetImage('assets/images/disc.png'),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
//               //User Details Widgets
//               //Bottom Tools
          //     SafeArea(
          //       child: Padding(
          //         padding: const EdgeInsets.only(
          //           left: 10,
          //           right: 55,
          //           bottom: 10,
          //         ),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.end,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             //Profile picture
          //             CircleAvatar(
          //               radius: 30,
          //               backgroundImage:
          //                   AssetImage('assets/images/prodp2.jpeg'),
          //             ),
          //             SizedBox(height: 5),
          //             //Name, tag, views, options
          //             Row(
          //               children: [
          //                 Text(
          //                   '@Harry101_',
          //                   style: AppUtil.textStyle1(weight: FontWeight.w600),
          //                 ),
          //                 SizedBox(width: 10),
          //                 Icon(
          //                   Icons.remove_red_eye,
          //                   color: Colors.grey,
          //                   size: 16,
          //                 ),
          //                 Text(
          //                   '16',
          //                   style: AppUtil.textStyle2(textSize: 12),
          //                 ),
          //                 SizedBox(width: 10),
          //                 settingsWidget(),
          //               ],
          //             ),
          //             //Video Description
          //             Text(
          //               'Making a slide is so much more than just danicing. Learning the moves, picking the right audio and putting it all together with the best outfits really makes your contant uniquely yours.',
          //               style: AppUtil.textStyle2(
          //                 textSize: 12,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),



///Gesture Detector Function
        // onTap: () {
          //   log('s');
          //   // slidesController.togglePlay();
          //   slidesController1.testfn();
          // },
          // onVerticalDragEnd: (value) {
          //   slidesController1.dragDownHandler();
          // },
          // onPanUpdate: (details) {
          //   if (details.delta.dy > 0)
          //     slidesController1.dragDownHandler();
          //   else
          //     slidesController1.dragUphandeler();
          // },