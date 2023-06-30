import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:zigonflutter/ui/views/video_upload_screens/upload_final_screen.dart';

import '../../../utility/app_utility.dart';
import 'camera_page.dart';
import 'ffmpeg_services.dart';
import 'filter_services.dart';
import 'upload_video_page.dart';

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
  @override
  void initState() {
    _startPosition = 0;
    _endPosition = 0;

    _controller = VideoPlayerController.file(widget.videoFile)
      ..initialize().then((value) {
        setState(() {
          _endPosition = _controller.value.duration.inMilliseconds.toDouble();
        });
        // _controller.addListener(() {
        //   if (_controller.value.position.inMilliseconds >=
        //       _endPosition.toInt()) {
        //     _controller.pause();
        //     _controller.seekTo(Duration(milliseconds: _startPosition.toInt()));
        //   }
        // });
        getThumbnailList();
      });

    _controller.pause();

    _controller.addListener(() {
      if (_controller.value.isInitialized && !_controller.value.isPlaying) {
        if (_controller.value.position.inMilliseconds >= _endPosition.toInt()) {
          _controller.seekTo(Duration(milliseconds: _startPosition.toInt()));
        }
      }
    });

    super.initState();
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

  @override
  Widget build(BuildContext context) {
    log(rotateAngle.toString());
    return WillPopScope(
      onWillPop: () async {
        setState(() {
          _fFmpegServices.cancelTasks();
          _controller.dispose();
          thumbnailList.clear();
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return CameraPage();
            },
          ));
        });
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppUtil.primary,
          body: Column(
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
                          child: VideoPlayer(_controller))),
                ),
              ),
              //Toolbar
              Expanded(
                flex: 2,
                child: Container(
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
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Icon(Icons.content_cut)),
                                          Text('Trim')
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Icon(
                                                  Icons.filter_hdr_outlined)),
                                          Text('Filters')
                                        ]),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Icon(Icons.video_label)),
                                        Text('Cover')
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      trimVideoSlider(
                                          videoController: _controller),
                                      _filterList(),
                                      Container(),
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

  Future<void> saveVideo() async {
    log(endTime.toString());
    Directory tempDir = await getTemporaryDirectory();
    String opPath = "${tempDir.path}/tempeditfile.mp4";
    Uint8List? thumbPic;
    try {
      log("Saving Video");
      if (endTime != 0.0) {
        log("Trimming Video --------------------");
        opPath = await _fFmpegServices.trimVideo(widget.videoFile.path,
            startTime.toInt(), _endPosition.toInt(), opPath);
        log("$opPath");
      } else {
        opPath = widget.videoFile.path;
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
        "thumb": thumbnailList[0],
      });
      log("Saved Video");
    } catch (e) {
      log("TRYCATCH - $e");
      return;
    }

    // Navigate to preview screen with the edited video file
  }

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
        );
      },
    );
  }

  Widget trimVideoSlider(
      {required VideoPlayerController videoController, BuildContext? context}) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: thumbnailList.isEmpty ? 0 : thumbnailList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Image.memory(
                thumbnailList[index],
                fit: BoxFit.scaleDown,
                height: 60,
              ),
            );
          },
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: _controller.value.isInitialized
              ? RangeSlider(
                  min: 0,
                  max: _controller.value.duration.inMilliseconds.toDouble(),
                  values: RangeValues(_startPosition, _endPosition),
                  onChanged: (RangeValues newValues) {
                    setState(() {
                      _startPosition = newValues.start;
                      _endPosition = newValues.end;
                    });
                  },
                  onChangeEnd: (_) {
                    _controller.seekTo(Duration(milliseconds: _.start.toInt()));
                    log('OnchangeEnd $_');
                    startTime = _.start;
                    endTime = _.end;
                  },
                )
              : Container(),
        ),
      ],
    );
  }

  getThumbnailList2() async {
    FFmpegServices fFmpegServices = FFmpegServices();
    String videoPath = widget.videoFile.path;

    int step = 3; // Changed to 3 for every 3rd second interval

    var duration;
    if (_controller.value.isInitialized) {
      duration = _controller.value.duration.inSeconds;
    }

    log("thumbnail $duration");

    for (int i = 0; i < duration; i += step) {
      // Increment by step (3 seconds)
      var thumbnail = await fFmpegServices.getVideoThumbnail(
          videoPath: videoPath,
          thumbnailName: '$i',
          timeMs: i * 1000); // Multiply i by 1000 for milliseconds
      thumbnailList.add(thumbnail!);
    }

    Uint8List? endThumbnail = await fFmpegServices.getVideoThumbnail(
        videoPath: videoPath, thumbnailName: 'last', timeMs: duration * 1000);

    if (endThumbnail != null) {
      thumbnailList.add(endThumbnail);
    }

    setState(() {});
  }

  getThumbnailList() async {
    FFmpegServices fFmpegServices = FFmpegServices();
    String videoPath = widget.videoFile.path;

    int step = 3000;

    var duration;
    if (_controller.value.isInitialized) {
      duration = _controller.value.duration.inSeconds;
    }

    log("thumbnail $duration");
    // final thumbnailsDir = await createThumbnailsDirectory();

    for (int i = 0; i < duration; i++) {
      var thumbnail = await fFmpegServices.getVideoThumbnail(
          videoPath: videoPath, thumbnailName: '$i', timeMs: i);
      thumbnailList.add(thumbnail!);
    }

    Uint8List? endThumbnail = await fFmpegServices.getVideoThumbnail(
        videoPath: videoPath, thumbnailName: 'last', timeMs: duration * 1000);

    if (endThumbnail != null) {
      thumbnailList.add(endThumbnail);
    }

    setState(() {});
  }

  Future<Directory> createThumbnailsDirectory() async {
    final tempDir = await getTemporaryDirectory();
    final thumbnailsDir = Directory('${tempDir.path}/thumbnails');
    await thumbnailsDir.create(recursive: true);
    return thumbnailsDir;
  }

  // Future<String> loadAssetVideo(String assetPath) async {
  //   // Load the asset video bytes
  //   ByteData data = await rootBundle.load(assetPath);

  //   // Get a temporary directory to save the video file
  //   Directory tempDir = await getTemporaryDirectory();
  //   File tempFile = File('${tempDir.path}/temp_video.mp4');

  //   // Write the video bytes to the temporary file
  //   await tempFile.writeAsBytes(
  //       data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));

  //   // Return the temporary file path
  //   return tempFile.path;
  // }
}

List<Uint8List> thumbnailList = [];
