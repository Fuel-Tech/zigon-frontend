import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zigonflutter/ui/views/single_slide_view/single_slide_view.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/network_utility.dart';

import '../../../controllers/discover_controller.dart';
import '../../widgets/common_widgets.dart';

class DiscoverView extends StatelessWidget {
  DiscoverView({Key? key}) : super(key: key);
  final DiscoverController discoverController = Get.put(DiscoverController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppUtil.primary,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonWidgets.bottomFloatingBar(context),
      body: GetBuilder<DiscoverController>(builder: (controller) {
        return SafeArea(
          child: discoverController.isLoading1
              ? Center(
                  child: CircularProgressIndicator(
                  color: Colors.transparent,
                ))
              : ListView(
                  children: [
                    //Page Title
                    discoverAppBar(),
                    SizedBox(height: 20),
                    //Widget Title
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Picks',
                            style: GoogleFonts.raleway(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffCECECE),
                            ),
                          ),
                          const Icon(
                            Icons.cached,
                            size: 24,
                            color: Color(0xFFCECECE),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    //Top Picks Widget
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 250,
                        padEnds: true,
                        viewportFraction: 0.9,
                      ),
                      items: discoverController.set1!.msg.map((video) {
                        return Visibility(
                          visible: discoverController.isLoading1,
                          replacement: GestureDetector(
                            onTap: () {
                              Get.to(() =>
                                  SlideBackground(videoUrl: video.video.video));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: NetworkImage(video.video.thum),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                alignment: Alignment.bottomCenter,
                                //Toolbar
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: const BorderRadius.vertical(
                                      bottom: Radius.circular(12),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          //DP
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/prodp.jpg'),
                                                    fit: BoxFit.cover),
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(width: 10),
                                          //Name, Views, Comments, Likes
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                video.user.username,
                                                style: GoogleFonts.raleway(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              //Views, Comments, Likes
                                              Row(
                                                children: [
                                                  //Views
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.remove_red_eye,
                                                        color: Colors.grey,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        '${video.video.view}k',
                                                        style: GoogleFonts
                                                            .quicksand(
                                                                fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(width: 10),
                                                  //Comments
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.messenger,
                                                        color: Colors.grey,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        video
                                                            .video.comment_count
                                                            .toString(),
                                                        style: GoogleFonts
                                                            .quicksand(
                                                                fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(width: 10),
                                                  //Likes
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.favorite,
                                                        color: Colors.grey,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        video.video.like_count
                                                            .toString(),
                                                        style: GoogleFonts
                                                            .quicksand(
                                                                fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: AppUtil.secondary,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            boxShadow: [
                                              BoxShadow(
                                                color: AppUtil.secondary,
                                                blurRadius: 6,
                                                offset: Offset(0, 4),
                                              )
                                            ]),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        child: Text(
                                          'Follow',
                                          style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          child: Shimmer.fromColors(
                            baseColor: Colors.white.withOpacity(0.1),
                            highlightColor: Colors.white.withOpacity(0.4),
                            enabled: true,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/a1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                alignment: Alignment.bottomCenter,
                                //Toolbar
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: const BorderRadius.vertical(
                                      bottom: Radius.circular(12),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          //DP
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/prodp.jpg'),
                                                    fit: BoxFit.cover),
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(width: 10),
                                          //Name, Views, Comments, Likes
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Sam Adams',
                                                style: GoogleFonts.raleway(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              //Views, Comments, Likes
                                              Row(
                                                children: [
                                                  //Views
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.remove_red_eye,
                                                        color: Colors.grey,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        '56k',
                                                        style: GoogleFonts
                                                            .quicksand(
                                                                fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(width: 10),
                                                  //Comments
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.messenger,
                                                        color: Colors.grey,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        '28',
                                                        style: GoogleFonts
                                                            .quicksand(
                                                                fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(width: 10),
                                                  //Likes
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.favorite,
                                                        color: Colors.grey,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        '25k',
                                                        style: GoogleFonts
                                                            .quicksand(
                                                                fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: AppUtil.secondary,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            boxShadow: [
                                              BoxShadow(
                                                color: AppUtil.secondary,
                                                blurRadius: 6,
                                                offset: Offset(0, 4),
                                              )
                                            ]),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 15),
                                        child: Text(
                                          'Follow',
                                          style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),

                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular',
                            style: GoogleFonts.raleway(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffCECECE),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.5,
                              crossAxisSpacing: 16.0,
                              mainAxisSpacing: 16.0,
                            ),
                            itemCount: discoverController.set1?.msg.length ?? 0,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Visibility(
                                visible: discoverController.isLoading1,
                                replacement: GestureDetector(
                                  onTap: () {
                                    Get.to(() => SlideBackground(
                                        videoUrl: discoverController
                                            .set1!.msg[index].video.video));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(discoverController
                                            .set1!.msg[index].video.thum),
                                        fit: BoxFit.cover,
                                        filterQuality: FilterQuality.high,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    alignment: Alignment.bottomCenter,
                                    //Toolbar
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.5),
                                        borderRadius:
                                            const BorderRadius.vertical(
                                          bottom: Radius.circular(6),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              //DP
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            "$IMG_URL${discoverController.set1!.msg[index].user.profile_pic_small}"),
                                                        fit: BoxFit.cover),
                                                    shape: BoxShape.circle),
                                              ),
                                              SizedBox(width: 10),
                                              //Name, Views, Comments, Likes
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    discoverController
                                                        .set1!
                                                        .msg[index]
                                                        .user
                                                        .username,
                                                    style: GoogleFonts.raleway(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  //Views, Likes
                                                  Row(
                                                    children: [
                                                      //Views
                                                      Row(
                                                        children: [
                                                          const Icon(
                                                            Icons
                                                                .remove_red_eye,
                                                            color: Colors.grey,
                                                            size: 16,
                                                          ),
                                                          Text(
                                                            discoverController
                                                                .set1!
                                                                .msg[index]
                                                                .video
                                                                .view,
                                                            style: GoogleFonts
                                                                .quicksand(
                                                                    fontSize:
                                                                        12),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(width: 10),
                                                      //Likes
                                                      Row(
                                                        children: [
                                                          const Icon(
                                                            Icons.favorite,
                                                            color: Colors.grey,
                                                            size: 16,
                                                          ),
                                                          Text(
                                                            discoverController
                                                                .set1!
                                                                .msg[index]
                                                                .video
                                                                .like_count
                                                                .toString(),
                                                            style: GoogleFonts
                                                                .quicksand(
                                                                    fontSize:
                                                                        12),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          // Container(
                                          //   decoration: BoxDecoration(
                                          //       color: AppUtil.secondary,
                                          //       shape: BoxShape.circle,
                                          //        boxShadow: [
                                          //         BoxShadow(
                                          //           color: AppUtil.secondary,
                                          //           blurRadius: 6,
                                          //           offset: Offset(0, 4),
                                          //         )
                                          //       ]),
                                          //   padding: EdgeInsets.all(8),
                                          //   child: const Icon(
                                          //     Icons.add,
                                          //     color: Colors.white,
                                          //     size: 16,
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                child: Shimmer.fromColors(
                                  baseColor: Colors.white.withOpacity(0.2),
                                  highlightColor: Colors.white.withOpacity(0.6),
                                  enabled: true,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
        );
      }),
    );
  }
}

Widget discoverAppBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Discover',
          style: GoogleFonts.raleway(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const Icon(
          Icons.search,
          size: 28,
        )
      ],
    ),
  );
}

List imgList = [
  'a1',
  'a2',
  'a3',
  'a4',
  'a5',
  'a6',
];
