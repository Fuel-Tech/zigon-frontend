import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:zigonflutter/ui/views/video_upload_screens/upload_final_screen.dart';
import 'package:zigonflutter/utility/trim/controller.dart';

import '../../../utility/app_utility.dart';
import '../../../utility/trim/trim_slider.dart';
import '../../../utility/trim/trim_timeline.dart';
import 'camera_page.dart';
import '../../../utility/ffmpeg_services.dart';
import '../../../utility/filter_services.dart';

class VideoEditorPage extends StatefulWidget {
  VideoEditorPage({Key? key, required this.videoFile}) : super(key: key);
  File videoFile;
  @override
  State<VideoEditorPage> createState() => _VideoEditorPageState();
}

class _VideoEditorPageState extends State<VideoEditorPage> {
  late VideoPlayerController _controller;
  late double _startPosition;
  late double _endPosition;
  late int rotateAngle = 0;
  double startTime = 0.0;
  double endTime = 0.0;
  final FFmpegServices _fFmpegServices = FFmpegServices();
  bool isLoading = true;
  late File videoFile;
  late VideoEditorController videoEditorController;
  _initiateVideoController() async {
    videoFile = widget.videoFile;
    _startPosition = 0;
    _endPosition = 0;
    final duration = await checkVideoDuration(videoFile);
    if (duration > Duration(seconds: 30)) {
      Directory tempDir = await getTemporaryDirectory();
      String opPath = "${tempDir.path}/trimmedFile.mp4";
      String trimmedFilePath = await videoTrimmerFn(
        opPath: opPath,
        ipPath: videoFile.path,
        start: _startPosition.toInt(),
        end: 30000,
      );
      File trimmedFile = File(trimmedFilePath);
      videoFile = trimmedFile;
    }

    log("HERE 1");
    _controller = VideoPlayerController.file(videoFile);
    await _controller.initialize().onError((error, stackTrace) {
      log(error.toString() + "IN ERROR");
    });
    log(_controller.value.duration.inSeconds.toString());
    videoEditorController = VideoEditorController.file(
      videoFile,
      maxDuration: _controller.value.duration,
      minDuration: Duration(seconds: 1),
    );
    videoEditorController.initialize(aspectRatio: 9 / 16);

    log("HERE 2");
    postInitSetup();
  }

  postInitSetup() {
    setState(() {
      _endPosition = _controller.value.duration.inMilliseconds.toDouble();
    });

    getThumbnailList();

    _controller.pause();

    // _controller.addListener(() {
    //   if (_controller.value.isInitialized && !_controller.value.isPlaying) {
    //     if (_controller.value.position.inMilliseconds >= _endPosition.toInt()) {
    //       _controller.seekTo(Duration(milliseconds: _startPosition.toInt()));
    //     }
    //   }
    // });

    videoEditorController.addListener(() {
      if (videoEditorController.isTrimming) {
        log("POSS:: SEEK");
        _controller.seekTo(videoEditorController.startTrim);
      }
    });

    setState(() {
      isLoading = false;
    });
  }

  Future<Duration> checkVideoDuration(File videoFile) async {
    VideoPlayerController tempController =
        VideoPlayerController.file(videoFile);
    await tempController.initialize();
    final duration = tempController.value.duration;
    await tempController.dispose();
    return duration;
  }

  @override
  void initState() {
    _initiateVideoController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        setState(() {
          _fFmpegServices.cancelTasks();
          _controller.dispose();
          thumbnailList.clear();
        });
        Navigator.pop(context);
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppUtil.primary,
          body: isLoading
              ? const Center(
                  child: SpinKitFadingCircle(color: Colors.white),
                )
              : Column(
                  children: [
                    //Top Bar
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Exit Button
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _controller.dispose();
                                      });
                                      thumbnailList.clear();
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(
                                        builder: (context) {
                                          return CameraPage();
                                        },
                                      ));
                                    },
                                    icon: const Icon(
                                      Icons.exit_to_app_rounded,
                                      color: Colors.white,
                                      size: 28,
                                    )),
                                const VerticalDivider(
                                  color: Colors.white,
                                  indent: 30,
                                  endIndent: 30,
                                ),
                              ],
                            ),
                            //Rotate Left
                            IconButton(
                                onPressed: () {
                                  _rotateImageRight();
                                },
                                icon: const Icon(
                                  Icons.rotate_left,
                                  color: Colors.white,
                                  size: 28,
                                )),
                            //Rotate Right
                            IconButton(
                                onPressed: () {
                                  _rotateImageLeft();
                                },
                                icon: const Icon(
                                  Icons.rotate_right,
                                  color: Colors.white,
                                  size: 28,
                                )),
                            //Crop Button
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.crop,
                                  color: Colors.white,
                                  size: 28,
                                )),
                            //Save Button
                            Row(
                              children: [
                                const VerticalDivider(
                                  color: Colors.white,
                                  indent: 30,
                                  endIndent: 30,
                                ),
                                IconButton(
                                    onPressed: () {
                                      saveVideo();
                                    },
                                    icon: const Icon(
                                      Icons.save,
                                      color: Colors.white,
                                      size: 28,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Preview
                    Expanded(
                      flex: 5,
                      child: Transform.rotate(
                        angle: rotateAngle * (3.14159265359 / 180),
                        child: AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: ColorFiltered(
                                colorFilter: filters[selectedFilter],
                                child: GestureDetector(
                                    onTap: () {
                                      _controller.play();
                                    },
                                    child: VideoPlayer(_controller)))),
                      ),
                    ),
                    //Toolbar
                    thumbnailList.isEmpty
                        ? SizedBox.shrink()
                        : Expanded(
                            flex: 2,
                            child: DefaultTabController(
                              length: 3,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          TabBar(
                                            tabs: [
                                              // TRIM
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        child: Icon(
                                                            Icons.content_cut)),
                                                    Text('Trim')
                                                  ]),
                                              // FILTER
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        child: Icon(Icons
                                                            .filter_hdr_outlined)),
                                                    Text('Filters')
                                                  ]),
                                              // COVER
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Icon(
                                                          Icons.video_label)),
                                                  Text('Cover'),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: TabBarView(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: trimVideoSlider(
                                                      videoController:
                                                          _controller),
                                                ),
                                                _filterList(),
                                                coverSelectorTab(),
                                              ],
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
                  ],
                ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    thumbnailList.clear();
    _controller.dispose();
    super.dispose();
  }

  void _rotateImageLeft() {
    setState(() {
      rotateAngle += 90;
    });
  }

  void _rotateImageRight() {
    setState(() {
      rotateAngle -= 90;
    });
  }

  Future<String> videoTrimmerFn(
      {required String opPath,
      required String ipPath,
      required int start,
      required int end}) async {
    String trimmedVideoPath =
        await _fFmpegServices.trimVideo(ipPath, start, end, opPath);
    return trimmedVideoPath;
  }

  Future<void> saveVideo() async {
    log(endTime.toString());
    Directory tempDir = await getTemporaryDirectory();
    String opPath = "${tempDir.path}/tempeditfile.mp4";
    Uint8List? thumbPic;
    try {
      log("Saving Video");
      if (endTime != 0.0) {
        log("Trimming Video --------------------");
        opPath = await videoTrimmerFn(
            opPath: opPath,
            ipPath: videoFile.path,
            start: videoEditorController.startTrim.inMilliseconds,
            end: videoEditorController.endTrim.inMilliseconds);
        log("$opPath");
      } else {
        opPath = videoFile.path;
      }

      if (selectedFilter != 0) {
        log("Adding Video Filter ---------------------");
        String channelMixer = selectFilter(selectedFilter);
        opPath = await _fFmpegServices.videoFilterService(
            opPath, "${tempDir.path}/tempfilter.mp4",
            channelmixer: channelMixer);
        log("$opPath");
      }

      if (rotateAngle != 0 && rotateAngle != 360) {
        log(rotateAngle.toString());
        log("Rotating Video ---------------------");
        opPath = (await _fFmpegServices.rotateVideo(
            opPath, "${tempDir.path}/temprotatedfile.mp4", rotateAngle))!;
        log("$opPath");
      }

      // thumbPic = await _fFmpegServices.getVideoThumbnail(
      //     thumbnailName: 'uploadthumb', videoPath: opPath, timeMs: 1500);
      Get.to(() => UploadFinalScreen(), arguments: {
        "file": File(opPath),
        "thumb": thumbnailList[selectedCoverIndex],
      });
      log("Saved Video");
    } catch (e) {
      log("TRYCATCH - $e");
      return;
    }

    // Navigate to preview screen with the edited video file
  }

  int selectedCoverIndex = 0;

  String selectFilter(int _) {
    FilterGenerator filter = FilterGenerator();
    String selected = '';
    _ == 1
        ? selected = filter.filter1
        : _ == 2
            ? selected = filter.filter2
            : _ == 3
                ? selected = filter.filter3
                : _ == 4
                    ? selected = filter.filter4
                    : _ == 5
                        ? selected = filter.filter5
                        : _ == 6
                            ? selected = filter.filter6
                            : selected = '';
    return selected;
  }

  int selectedFilter = 0;
  List<ColorFilter> filters = FilterGenerator().generateColorFilters();
  Widget _filterList() {
    return ListView.builder(
      itemCount: filters.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: ColorFiltered(
                colorFilter: filters[index],
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedFilter = index;
                    });
                  },
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String formatter(Duration duration) => [
        duration.inMinutes.remainder(60).toString().padLeft(2, '0'),
        duration.inSeconds.remainder(60).toString().padLeft(2, '0')
      ].join(":");
  List<Widget> trimVideoSlider(
      {required VideoPlayerController videoController, BuildContext? context}) {
    return [
      AnimatedBuilder(
          animation: Listenable.merge([
            videoEditorController,
            videoEditorController.video,
          ]),
          builder: (_, __) {
            final int duration = videoEditorController.videoDuration.inSeconds;
            final double pos = videoEditorController.trimPosition * duration;

            log("POSS:: $pos - $duration -- ${videoEditorController.trimPosition}");
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 80 / 4),
              child: Row(children: [
                Text(formatter(Duration(seconds: pos.toInt()))),
                const Expanded(child: SizedBox()),
                AnimatedOpacity(
                  opacity: videoEditorController.isTrimming ? 1 : 0,
                  duration: kThemeAnimationDuration,
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(formatter(videoEditorController.startTrim)),
                    const SizedBox(width: 10),
                    Text(formatter(videoEditorController.endTrim)),
                  ]),
                ),
              ]),
            );
          }),
      Container(
        width: Get.width,
        margin: EdgeInsets.symmetric(vertical: 80 / 4),
        child: TrimSlider(
          controller: videoEditorController,
          height: 80,
          horizontalMargin: 80 / 4,
          child: TrimTimeline(
            controller: videoEditorController,
            padding: const EdgeInsets.only(top: 10),
          ),
        ),
      )
    ];
    // return Stack(
    //   children: [
    //     ListView.builder(
    //       itemCount: thumbnailList.isEmpty ? 0 : thumbnailList.length,
    //       scrollDirection: Axis.horizontal,
    //       itemBuilder: (context, index) {
    //         return AspectRatio(
    //           aspectRatio: _controller.value.aspectRatio,
    //           child: Image.memory(
    //             thumbnailList[index],
    //             fit: BoxFit.scaleDown,
    //             height: 60,
    //           ),
    //         );
    //       },
    //     ),
    //     // CustomPaint(
    //     //   painter: TrimmerPainter(
    //     //       videoController: videoController,
    //     //       startPosition: _startPosition,
    //     //       endPosition: _endPosition,
    //     //       thumbnailList: thumbnailList),
    //     // ),
    //     Positioned(
    //       bottom: 0,
    //       left: 0,
    //       right: 0,
    //       child: _controller.value.isInitialized
    //           ? RangeSlider(
    //               min: 0,
    //               max: _controller.value.duration.inMilliseconds.toDouble(),
    //               values: RangeValues(_startPosition, _endPosition),
    //               inactiveColor: Colors.grey,
    //               activeColor: AppUtil.secondary,
    //               onChanged: (RangeValues newValues) {
    //                 setState(() {
    //                   _startPosition = newValues.start;
    //                   _endPosition = newValues.end;
    //                 });
    //               },
    //               onChangeEnd: (_) {
    //                 _controller.seekTo(Duration(milliseconds: _.start.toInt()));
    //                 log('OnchangeEnd $_');
    //                 startTime = _.start;
    //                 endTime = _.end;
    //               },
    //             )
    //           : Container(),
    //     ),
    //   ],
    // );
  }

  Widget coverSelectorTab() {
    return ListView.builder(
      itemCount: thumbnailList.isEmpty ? 0 : thumbnailList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedCoverIndex = index;
              });
            },
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Container(
                decoration: BoxDecoration(
                    border: selectedCoverIndex == index
                        ? Border.all(color: AppUtil.secondary, width: 2)
                        : Border.all(),
                    borderRadius: BorderRadius.circular(12)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.memory(
                    thumbnailList[index],
                    fit: BoxFit.scaleDown,
                    height: 60,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  getThumbnailList() async {
    thumbnailList.clear();
    FFmpegServices fFmpegServices = FFmpegServices();
    String videoPath = videoFile.path;

    int step = 3000;

    var duration;
    if (_controller.value.isInitialized) {
      duration = _controller.value.duration.inSeconds;
    }

    log("thumbnail $duration");
    // final thumbnailsDir = await createThumbnailsDirectory();

    try {
      for (int i = 0; i < duration; i++) {
        var thumbnail = await fFmpegServices.getVideoThumbnail(
            videoPath: videoPath, thumbnailName: '$i', timeMs: i);
        if (thumbnail != null) {
          thumbnailList.add(thumbnail);
        }
      }

      Uint8List? endThumbnail = await fFmpegServices.getVideoThumbnail(
          videoPath: videoPath, thumbnailName: 'last', timeMs: duration * 1000);

      if (endThumbnail != null) {
        thumbnailList.add(endThumbnail);
      }
    } on Exception catch (e) {
      log("THUMBNAIL GEN ERROR : $e");
    }

    setState(() {});
  }

  Future<Directory> createThumbnailsDirectory() async {
    final tempDir = await getTemporaryDirectory();
    final thumbnailsDir = Directory('${tempDir.path}/thumbnails');
    await thumbnailsDir.create(recursive: true);
    return thumbnailsDir;
  }

  List<Uint8List> thumbnailList = [];
}
