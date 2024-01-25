// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import 'video_editor_page.dart';

class CameraPage extends StatefulWidget {
  CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _camera;
  XFile? file;
  bool isPlaying = false;
  bool startedRecording = false;
  late double _scale;
  late double minZoomLevel;
  late double maxZoomLevel;

  @override
  void initState() {
    _camera = CameraController(cameras[0], ResolutionPreset.max);
    _camera.initialize().then((value) {
      getZoomLevels();
      setState(() {});
    });
    _scale = 1.0;
    super.initState();
  }

  //WHEN RECORD BUTTON IS PRESSED THE RECOREDTIMER STARTS COUNTING

  int recordingTimeSecond = 0;
  double recordingProgresss = 0.0;
  late Timer timer;
  recordTimer() {
    final totalRecordingTime = 30;
    final recordingInterval = 1;

    timer = Timer.periodic(Duration(seconds: recordingInterval), (t) {
      setState(() {
        recordingTimeSecond += recordingInterval;
        recordingProgresss =
            (recordingTimeSecond / totalRecordingTime).clamp(0.0, 1.0);
      });

      if (recordingTimeSecond == totalRecordingTime) {
        timer.cancel();
        stopAndSaveVideo();
      }
    });
  }

  getZoomLevels() async {
    if (_camera.value.isInitialized) {
      minZoomLevel = await _camera.getMinZoomLevel();
      maxZoomLevel = await _camera.getMaxZoomLevel();
    }
  }

  // void _onScaleStart(ScaleStartDetails details) {
  //   // Set the initial scale value when the user starts to pinch
  //   setState(() {
  //     _scale = maxZoomLevel;
  //   });
  // }

  // void _onScaleUpdate(ScaleUpdateDetails details) {
  //   double scale = maxZoomLevel + details.scale - 1.0;
  //   scale = scale.clamp(
  //     minZoomLevel,
  //     maxZoomLevel,
  //   );
  //   _camera.setZoomLevel(scale);
  // }

  IconData icons = Icons.flash_off;
  void _toggleFlash() {
    log(_camera.value.flashMode.toString());
    _camera.value.flashMode == FlashMode.torch
        ? _camera.setFlashMode(FlashMode.off)
        : _camera.setFlashMode(FlashMode.torch);
    icons = _camera.value.flashMode == FlashMode.torch
        ? Icons.flash_off
        : Icons.flash_on;
    setState(() {});
  }

  void _toggleCameraDirection() {}

  bool isFrontCam = false;

  Future<void> _switchCameras() async {
    final frontCamera;
    if (!isFrontCam) {
      frontCamera = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.front,
      );
      isFrontCam = true;
    } else {
      frontCamera = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back,
      );
      isFrontCam = false;
    }
    final controller = CameraController(
      frontCamera,
      ResolutionPreset.max,
    );
    await controller.initialize();

    setState(() {
      _camera = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    log(_camera.value.isInitialized.toString());
    return Material(
      child: GestureDetector(
        // onScaleStart: _onScaleStart,
        // onScaleUpdate: _onScaleUpdate,
        child: CameraPreview(
          _camera,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Top Toolbar
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //ADD MUSIC BUTTON
                          isPlaying
                              ? const SizedBox.shrink()
                              : IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.music_note_outlined)),
                          //TOGGLE FLASH BUTTON
                          IconButton(
                              onPressed: () {
                                _toggleFlash();
                              },
                              icon: Icon(icons)),
                          //TOGGLE CAMERA DIRECTION
                          isPlaying
                              ? const SizedBox.shrink()
                              : IconButton(
                                  onPressed: () {
                                    _switchCameras();
                                  },
                                  icon: const Icon(
                                    Icons.rotate_right,
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      LinearProgressIndicator(
                        minHeight: 6,
                        value: recordingProgresss,
                        color: Colors.amber,
                        backgroundColor: Colors.transparent,
                      ),
                      Container(
                        height: Get.height * .2,
                        color: Colors.black.withOpacity(0.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black.withOpacity(0.4)),
                              child: IconButton(
                                  onPressed: () async {
                                    ImagePicker _picker = ImagePicker();

                                    file = await _picker.pickVideo(
                                        source: ImageSource.gallery);

                                    if (file != null) {
                                      log(file!.name.removeAllWhitespace);
                                      _camera.dispose();
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(
                                        builder: (context) {
                                          return VideoEditorPage(
                                              videoFile: File(file!.path));
                                        },
                                      ));
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.folder_copy,
                                    color: Colors.white,
                                    size: 25,
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (startedRecording) {
                                  isPlaying
                                      ? setState(() {
                                          isPlaying = false;
                                          _camera.pauseVideoRecording();
                                        })
                                      : setState(() {
                                          isPlaying = true;
                                          _camera.resumeVideoRecording();
                                        });
                                } else {
                                  startedRecording = true;
                                  isPlaying = true;
                                  recordTimer();
                                  setState(() {
                                    _camera.startVideoRecording();
                                  });
                                }
                              },
                              child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: isPlaying
                                      ? BoxDecoration()
                                      : BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 5),
                                        ),
                                  alignment: Alignment.center,
                                  child: isPlaying
                                      ? const Icon(
                                          Icons.pause,
                                          color: Colors.white,
                                          size: 25,
                                        )
                                      : Container()),
                            ),
                            isPlaying
                                ? Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black.withOpacity(0.4)),
                                    child: IconButton(
                                        onPressed: () async {
                                          await stopAndSaveVideo();
                                        },
                                        icon: const Icon(
                                          Icons.stop,
                                          color: Colors.red,
                                          size: 25,
                                        )),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                        onPressed: () async {},
                                        icon: const Icon(
                                          Icons.folder_copy,
                                          color: Colors.transparent,
                                          size: 25,
                                        )),
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> stopAndSaveVideo() async {
    if (timer.isActive) {
      timer.cancel();
      recordingProgresss = 0.0;
      recordingTimeSecond = 0;
    }
    file = await _camera.stopVideoRecording();
    startedRecording = false;
    isPlaying = false;
    // setState(() async {
    //   await _camera.dispose();
    // });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return VideoEditorPage(videoFile: File(file!.path));
        },
      ),
    );
  }
}
