import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late List<CameraDescription> _cameras;
  late CameraController _controller;
  bool _isReady = false;
  bool flashOn = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setUpCamera();
  }

  void _setUpCamera() async {
    try {
      // initialize cameras.
      _cameras = await availableCameras();
      // initialize camera controllers.
      // Current bug for high / medium with samsung devices.
      _controller = CameraController(
        _cameras[1],
        ResolutionPreset.veryHigh,
        enableAudio: true,
      );

      await _controller.initialize();
    } on CameraException catch (_) {
      // do something on error.
    }
    if (!mounted) return;
    setState(() {
      _isReady = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: getFooter(),
      body: getBody(),
    );
  }

  Widget cameraPreview() {
    return AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: CameraPreview(_controller));
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    if (_isReady == false ||
        _controller == null ||
        !_controller.value.isInitialized) {
      return Container(
        decoration: const BoxDecoration(color: Colors.white),
        width: size.width,
        height: size.height,
        child: const Center(
            child: SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                ))),
      );
    }

    return Container(
      width: size.width,
      height: size.height,
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: const Radius.circular(10),
              bottomRight: const Radius.circular(10)),
          child: cameraPreview()),
    );
  }

  Widget getFooter() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black.withOpacity(0.3)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      //Rotate Camera
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () async {
                            int? selectedCamera;
                            selectedCamera =
                                _controller.description.lensDirection.name ==
                                        'back'
                                    ? 1
                                    : 0;
                            _controller = CameraController(
                                _cameras[selectedCamera],
                                ResolutionPreset.high);
                            await _controller.initialize();
                            setState(() {});
                          },
                          child: const Icon(
                            SimpleLineIcons.refresh,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      //Enable Flash
                      GestureDetector(
                        onTap: () {
                          flashOn
                              ? _controller.setFlashMode(FlashMode.off)
                              : _controller.setFlashMode(FlashMode.torch);
                          flashOn = flashOn ? false : true;
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Entypo.flash,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: SizedBox(
                          height: 18,
                        ),
                      ),
                      // const Padding(
                      //   padding: EdgeInsets.all(4.0),
                      //   child: Icon(
                      //     MaterialCommunityIcons.play_box_outline,
                      //     color: Colors.white,
                      //     size: 25,
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 18,
                      // ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Entypo.beamed_note,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      // const SizedBox(
                      //   height: 18,
                      // ),
                      // const Padding(
                      //   padding: EdgeInsets.all(4.0),
                      //   child: Icon(
                      //     Ionicons.ios_arrow_down,
                      //     color: Colors.white,
                      //     size: 25,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const IconButton(
                onPressed: null,
                icon: Icon(
                  MaterialCommunityIcons.cards_playing_outline,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 7, color: Colors.white)),
              ),
              const SizedBox(
                width: 15,
              ),
              const IconButton(
                onPressed: null,
                icon: Icon(
                  Entypo.emoji_happy,
                  color: Colors.white,
                  size: 28,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
