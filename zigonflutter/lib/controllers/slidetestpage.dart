// import 'dart:developer';

// import 'package:card_swiper/card_swiper.dart';
// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';
// import 'package:zigonflutter/controllers/slides_controller.dart';
// import 'package:zigonflutter/ui/widgets/common_widgets.dart';
// import 'package:zigonflutter/utility/app_utility.dart';
// import 'package:zigonflutter/utility/button_handler.dart';
// import '../ui/widgets/slides_widgets.dart';

// class TestPage extends StatelessWidget {
//   TestPage({Key? key}) : super(key: key);
//   final SlidesController slidesController = Get.find();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppUtil.primary,
//         bottomNavigationBar: CommonWidgets.bottomFloatingBar(context),
//         extendBody: true,
//         body: GestureDetector(
//           onDoubleTap: () {
//             log('Double Tap');
//             slidesController.likeButtonHandler(0);
//           },
//           child: Swiper(
//             axisDirection: AxisDirection.down,
//             onIndexChanged: (value) {
//               log("$value  --  Changed Index");
//               slidesController.getLikeCountForVideoByIndex(value);
//               if (value == slidesController.slideList!.slideList.length - 1) {
//                 log('Load Next Videos');
//               }
//             },
//             physics: const BouncingScrollPhysics(),
//             loop: false,
//             scrollDirection: Axis.vertical,
//             itemCount: slidesController.slideList!.slideList.length,
//             itemBuilder: (context, index) {
//               return Stack(
//                 children: [
//                   VideoWidget(
//                     play: true,
//                     videoUrl: slidesController.slideList!.slideList
//                         .elementAt(index)
//                         .slideURL,
//                   ),
//                   SlidesWidget.onTopGradient(context),
//                   //----------------
//                   //Top Tools
//                   SafeArea(
//                     child: SizedBox(
//                       width: AppUtil.screenWidth(context),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 SlidesWidget.watchAllSlidesButton(context),
//                                 const SizedBox(width: 10),
//                                 SlidesWidget.watchFollowingSlidesButton(context),
//                               ],
//                             ),
//                             // SlidesWidget.liveButton(),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   //----------------
//                   //Right Tools
//                   SafeArea(
//                     child: Align(
//                       alignment: FractionalOffset.bottomRight,
//                       child: Padding(
//                         padding: const EdgeInsets.all(12),
//                         child: SizedBox(
//                           height: 250,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   log('Like Button');
//                                   slidesController.likeButtonHandler(0);
//                                 },
//                                 child: GetBuilder<SlidesController>(
//                                     builder: (controller) {
//                                   return Column(
//                                     children: [
//                                       Icon(Icons.favorite_border_outlined,
//                                           color: slidesController.isLiked
//                                               ? Colors.red
//                                               : Colors.white,
//                                           size: 35),
//                                       const SizedBox(height: 3),
//                                       Text(
//                                         '${slidesController.likeCountForCurrentVideo} ',
//                                         style: AppUtil.textStyle2(
//                                           textSize: 14,
//                                           weight: FontWeight.w400,
//                                         ),
//                                       )
//                                     ],
//                                   );
//                                 }),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   log('Comment List');
//                                   ButtonHandler.onTapHandler(
//                                       context: context,
//                                       buttonTypes: ButtonTypes.comment,
//                                       subButtonType: SubButtonType.openDialog);
//                                   // slidesController.getComments();
//                                   // ButtonHandler.onTapHandler(
//                                   //     buttonTypes: ButtonTypes.comment,
//                                   //     subButtonType: SubButtonType.openDialog);
//                                   // CommonWidgets.showDialogBox(context, 0);
//                                 },
//                                 child: Column(
//                                   children: [
//                                     const Icon(Icons.mode_comment_outlined,
//                                         color: Colors.white, size: 35),
//                                     const SizedBox(height: 3),
//                                     Text(
//                                       '${slidesController.slideList!.slideList[index].slideComments.count}',
//                                       style: AppUtil.textStyle2(
//                                           textSize: 14,
//                                           weight: FontWeight.w400),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   log('Share');
//                                   ButtonHandler.onTapHandler(
//                                       buttonTypes: ButtonTypes.share,
//                                       subButtonType:
//                                           SubButtonType.toggleFunction,
//                                       context: context);
//                                 },
//                                 child: Column(
//                                   children: [
//                                     const Icon(Icons.share_outlined,
//                                         color: Colors.white, size: 35),
//                                     const SizedBox(height: 3),
//                                     Text(
//                                       'Share',
//                                       style: AppUtil.textStyle1(
//                                           textSize: 14,
//                                           weight: FontWeight.w400),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               SlidesWidget.settingsWidget(context),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   //----------------
//                   //Bottom Tools
//                   SafeArea(
//                     child: Padding(
//                       padding: const EdgeInsets.only(
//                         left: 10,
//                         right: 55,
//                         bottom: 20,
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // const SizedBox(height: 5),
//                           //Name, tag, views, options
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               //Profile picture
//                               CircleAvatar(
//                                 radius: 20,
//                                 backgroundImage: NetworkImage(
//                                     '${slidesController.slideList!.slideList[index].metadata.profilepicture}'),
//                               ),
//                               Text(
//                                 '${slidesController.slideList!.slideList[index].metadata.username}',
//                                 style:
//                                     AppUtil.textStyle1(weight: FontWeight.w600),
//                               ),
//                               const SizedBox(width: 25),
//                               const Icon(
//                                 Icons.remove_red_eye,
//                                 color: Colors.grey,
//                                 size: 16,
//                               ),
//                               Text(
//                                 '${slidesController.slideList!.slideList[index].slideViews}',
//                                 style: AppUtil.textStyle2(textSize: 12),
//                               ),
//                               const SizedBox(width: 10),
//                             ],
//                           ),
//                           const SizedBox(height: 5),
//                           //Video Description
//                           FittedBox(
//                             child: SizedBox(
//                               width: AppUtil.screenWidth(context) / 1.5,
//                               child: Text(
//                                 '${slidesController.slideList!.slideList[index].slideDesc}',
//                                 style: AppUtil.textStyle2(
//                                   textSize: 12,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 5),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               const CircleAvatar(
//                                 radius: 10,
//                                 backgroundColor: Colors.transparent,
//                                 backgroundImage:
//                                     AssetImage('assets/images/disc.png'),
//                               ),
//                               const SizedBox(width: 5),
//                               FittedBox(
//                                 child: SizedBox(
//                                   width: AppUtil.screenWidth(context) / 1.5,
//                                   child: Text(
//                                     '${slidesController.slideList!.slideList[index].audioName}',
//                                     style: AppUtil.textStyle2(
//                                       textSize: 12,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//         ));
//   }
// }

// // class TestPage extends StatefulWidget {
// //   TestPage({Key? key}) : super(key: key);

// //   @override
// //   State<TestPage> createState() => _TestPageState();
// // }

// // class _TestPageState extends State<TestPage> {
// //   @override
// //   Widget build(BuildContext context) {

// //   }
// // }

// class VideoWidget extends StatefulWidget {
//   const VideoWidget({Key? key, required this.videoUrl, required this.play})
//       : super(key: key);
//   final String videoUrl;
//   final bool play;
//   @override
//   State<VideoWidget> createState() => _VideoWidgetState();
// }

// class _VideoWidgetState extends State<VideoWidget> {
//   VideoPlayerController? videoPlayerController;
//   late Future<void> _initializeVideoPlayerFuture;
//   final SlidesController playerController = Get.find();
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     videoPlayerController = VideoPlayerController.network(widget.videoUrl);

//     _initializeVideoPlayerFuture =
//         videoPlayerController!.initialize().then((value) {
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     videoPlayerController!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     log('${widget.videoUrl}');
//     return FutureBuilder(
//       future: _initializeVideoPlayerFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return Chewie(
//             controller: ChewieController(
//                 videoPlayerController: videoPlayerController!,
//                 autoInitialize: true,
//                 looping: true,
//                 aspectRatio: 10 / 20, // Full screen ratio.
//                 autoPlay: true,
//                 showControls: false,
//                 errorBuilder: (context, errorMessage) {
//                   return Center(
//                     child: Text(errorMessage),
//                   );
//                 }),
//           );
//         } else {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }
// }

// class VideoPlayer extends StatelessWidget {
//   VideoPlayer({Key? key, required this.videoUrl}) : super(key: key);
//   final PlayerController slidesPlayerController = Get.put(PlayerController());
//   final String videoUrl;

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<PlayerController>(builder: (controller) {
//       return FutureBuilder(
//         future: slidesPlayerController.initializeVideoPlayerFuture(videoUrl),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return Chewie(
//               controller: ChewieController(
//                   videoPlayerController:
//                       slidesPlayerController.slidesPlayerController!,
//                   autoInitialize: true,
//                   looping: true,
//                   aspectRatio: 10 / 20,
//                   autoPlay: true,
//                   showControls: false,
//                   errorBuilder: (context, errorMessage) {
//                     return Center(
//                       child: Text(errorMessage),
//                     );
//                   }),
//             );
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(
//                 color: Colors.amber,
//               ),
//             );
//           }
//         },
//       );
//     });
//   }
// }
