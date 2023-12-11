import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zigonflutter/ui/views/single_slide_view/single_slide_view.dart';
import 'package:zigonflutter/utility/app_utility.dart';
import 'package:zigonflutter/utility/network_utility.dart';

import '../../../controllers/discover_controller.dart';
import '../../widgets/common_widgets.dart';

class DiscoverView extends StatelessWidget {
  DiscoverView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DiscoverController());
    return Scaffold(
      backgroundColor: AppUtil.primary,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: CommonWidgets.bottomFloatingBar(context),
      body: GetBuilder<DiscoverController>(builder: (ctrl) {
        return SafeArea(
          child: ListView(
            physics: BouncingScrollPhysics(),
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
                    GestureDetector(
                      onTap: () {
                        Get.to(() => TestPage02());
                      },
                      child: const Icon(
                        Icons.cached,
                        size: 24,
                        color: Color(0xFFCECECE),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              //Top Picks Widget
              Visibility(
                visible: ctrl.isLoading1,
                replacement: CarouselSlider(
                  options: CarouselOptions(
                    height: 250,
                    padEnds: true,
                    viewportFraction: 0.9,
                  ),
                  items: ctrl.set1?.msg.map((video) {
                    return Visibility(
                      visible: ctrl.isLoading1,
                      replacement: TopPickVideoWidget(
                          id: video.video.id,
                          description: video.video.description,
                          sound: video.sound.name ?? "",
                          soundId: video.video.sound_id,
                          profilePic: video.user.profile_pic ?? "",
                          video: video.video.video,
                          commentCount: video.video.comment_count.toString(),
                          likeCount: video.video.like_count.toString(),
                          views: video.video.view,
                          gif: video.video.gif,
                          thumb: video.video.thum,
                          userName: video.user.username),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
                            child: ClipRRect(
                              child: Image.asset("assets/images/watermark.png"),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Image.asset("assets/images/watermark.png"),
                    ),
                  ),
                ),
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
              // POPULAR VIDEO WIDGET
              ctrl.set1 == null
                  ? Padding(
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
                          itemCount: 4,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(),
                                  child: SpinKitFadingFour(
                                    color: AppUtil.secondary.withOpacity(0.2),
                                  )),
                            );
                          }),
                    )
                  : Padding(
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
                          itemCount: ctrl.set1?.msg.length ?? 0,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Visibility(
                              visible: ctrl.isLoading1,
                              replacement: PopularVideoWidget(
                                id: ctrl.set1!.msg[index].video.id,
                                description:
                                    ctrl.set1!.msg[index].video.description,
                                sound: ctrl.set1!.msg[index].sound.name ?? "",
                                soundId: ctrl.set1!.msg[index].video.sound_id,
                                commentCount: ctrl
                                    .set1!.msg[index].video.comment_count
                                    .toString(),
                                gif: ctrl.set1!.msg[index].video.gif,
                                likeCount: ctrl
                                    .set1!.msg[index].video.like_count
                                    .toString(),
                                views:
                                    ctrl.set1!.msg[index].video.view.toString(),
                                thumb: ctrl.set1!.msg[index].video.thum,
                                video: ctrl.set1!.msg[index].video.video,
                                userName: ctrl.set1!.msg[index].user.username,
                                profilePic:
                                    ctrl.set1!.msg[index].user.profile_pic ??
                                        '',
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(),
                                    child: SpinKitFadingFour(
                                      color: AppUtil.secondary.withOpacity(0.2),
                                    )),
                              ),
                            );
                          }),
                    ),
              SizedBox(height: 20),
            ],
          ),
        );
      }),
    );
  }
}

class PopularVideoWidget extends StatefulWidget {
  PopularVideoWidget({
    super.key,
    required this.video,
    required this.id,
    required this.commentCount,
    required this.gif,
    required this.likeCount,
    required this.thumb,
    required this.views,
    required this.userName,
    required this.profilePic,
    required this.description,
    required this.sound,
    required this.soundId,
  });
  String video;
  String userName;
  String thumb;
  String gif;
  String views;
  String commentCount;
  String likeCount;
  String profilePic;
  String id;
  String description;
  String sound;
  String soundId;
  @override
  State<PopularVideoWidget> createState() => _PopularVideoWidgetState();
}

class _PopularVideoWidgetState extends State<PopularVideoWidget> {
  bool isGif = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => SlideBackground(videoData: {
              "video": widget.video,
              "username": widget.userName,
              "thumb": widget.thumb,
              "likeCount": widget.likeCount,
              "commentCount": widget.commentCount,
              "description": widget.description,
              "sound": widget.sound,
              "soundId": widget.soundId,
              "profilePic": widget.profilePic,
            }));
      },
      onLongPressStart: (value) {
        setState(() {
          isGif = true;
        });
      },
      onLongPressEnd: (value) {
        setState(() {
          isGif = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(isGif ? widget.gif : widget.thumb),
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
              bottom: Radius.circular(6),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: widget.profilePic == ""
                    ? BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/prodp.jpg"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle)
                    : BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("$IMG_URL${widget.profilePic}"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle),
              ),
              //Name, Views, Comments, Likes
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.userName,
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
                            widget.views,
                            style: GoogleFonts.quicksand(fontSize: 12),
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
                            widget.likeCount.toString(),
                            style: GoogleFonts.quicksand(fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopPickVideoWidget extends StatefulWidget {
  TopPickVideoWidget({
    super.key,
    required this.video,
    required this.commentCount,
    required this.gif,
    required this.likeCount,
    required this.thumb,
    required this.views,
    required this.userName,
    required this.id,
    required this.sound,
    required this.description,
    required this.profilePic,
    required this.soundId,
  });
  String id;
  String video;
  String userName;
  String thumb;
  String gif;
  String views;
  String commentCount;
  String likeCount;
  String description;
  String sound;
  String soundId;
  String profilePic;
  @override
  State<TopPickVideoWidget> createState() => _TopPickVideoWidgetState();
}

class _TopPickVideoWidgetState extends State<TopPickVideoWidget> {
  bool showGif = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => SlideBackground(
              videoData: {
                "video": widget.video,
                "username": widget.userName,
                "thumb": widget.thumb,
                "likeCount": widget.likeCount,
                "commentCount": widget.commentCount,
                "description": widget.description,
                "sound": widget.sound,
                "soundId": widget.soundId,
                "profilePic": widget.profilePic,
              },
            ));
      },
      onLongPressStart: (value) {
        setState(() {
          showGif = true;
        });
      },
      onLongPressEnd: (value) {
        setState(() {
          showGif = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.bottomCenter,
          //Toolbar
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                SizedBox(
                  width: Get.width,
                  child: CachedNetworkImage(
                    imageUrl: showGif ? widget.gif : widget.thumb,
                    fit: BoxFit.cover,
                    placeholder: (context, url) {
                      return CachedNetworkImage(
                        imageUrl: widget.thumb,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 60,
                    width: Get.width,
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
                                      image:
                                          AssetImage('assets/images/prodp.jpg'),
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
                                  widget.userName,
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
                                          '${widget.views}k',
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
                                          widget.commentCount,
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
                                          widget.likeCount,
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
              ],
            ),
          ),
        ),
      ),
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

class TestPage02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loader Border Animation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Page02(),
    );
  }
}

class Page02 extends StatelessWidget {
  const Page02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BorderPathRunner(),
    );
  }
}

class BorderPathRunner extends StatefulWidget {
  @override
  _BorderPathRunnerState createState() => _BorderPathRunnerState();
}

class _BorderPathRunnerState extends State<BorderPathRunner>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: AnimatedBuilder(
            animation: _controller!,
            builder: (context, child) {
              return CustomPaint(
                painter: BorderPathPainter(_controller!.value),
                child: child,
              );
            },
            child: Container(), // This is your container's child
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
}

class BorderPathPainter extends CustomPainter {
  final double percentage;
  BorderPathPainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final Path path = Path();
    double completedLength = percentage * (2 * size.width + 2 * size.height);

    Offset currentPoint = Offset(0, 0);

    // Move through each border and draw based on the completedLength
    if (completedLength < size.width) {
      currentPoint = Offset(completedLength, 0);
    } else if (completedLength < size.width + size.height) {
      path.moveTo(size.width, 0);
      currentPoint = Offset(size.width, completedLength - size.width);
    } else if (completedLength < 2 * size.width + size.height) {
      path.moveTo(size.width, size.height);
      currentPoint = Offset(2 * size.width - completedLength, size.height);
    } else {
      path.moveTo(0, size.height);
      currentPoint =
          Offset(0, 2 * size.width + 2 * size.height - completedLength);
    }

    path.lineTo(currentPoint.dx, currentPoint.dy);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
