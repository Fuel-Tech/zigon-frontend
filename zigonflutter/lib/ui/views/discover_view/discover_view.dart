import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/controllers/slides_controller.dart';
import 'package:zigonflutter/utility/app_utility.dart';

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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //Page Title
              Padding(
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
              ),
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
                items: imgList.map((e) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage('assets/images/${e}.jpg'),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                              style: GoogleFonts.quicksand(
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
                                              style: GoogleFonts.quicksand(
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
                                              style: GoogleFonts.quicksand(
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
                                  borderRadius: BorderRadius.circular(8),
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
                    Row(
                      children: [
                        const Icon(
                          Icons.filter_alt_outlined,
                          size: 18,
                          color: Color(0xffCECECE),
                        ),
                        Text(
                          'Filter',
                          style: GoogleFonts.raleway(
                            fontSize: 18,
                            color: Color(0xffCECECE),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.5,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                      ),
                      itemCount: imgList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/${imgList[index]}.jpg'),
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
                              borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(18),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    //DP
                                    Container(
                                      height: 40,
                                      width: 40,
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
                                        //Views, Likes
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
                                                  style: GoogleFonts.quicksand(
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
                                                  style: GoogleFonts.quicksand(
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
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppUtil.secondary,
                                          blurRadius: 6,
                                          offset: Offset(0, 4),
                                        )
                                      ]),
                                  padding: EdgeInsets.all(8),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}

List imgList = [
  'a1',
  'a2',
  'a3',
  'a4',
  'a5',
  'a6',
];
