import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class CachedVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final String thumb;
  final Function(VideoPlayerController)? onInitialized;

  CachedVideoPlayer(
      {required this.videoUrl, this.onInitialized, required this.thumb});

  @override
  _CachedVideoPlayerState createState() => _CachedVideoPlayerState();
}

class _CachedVideoPlayerState extends State<CachedVideoPlayer> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    initializeController();
  }

  Future<void> initializeController() async {
    log(widget.videoUrl);
    final file = await DefaultCacheManager().getSingleFile(widget.videoUrl);
    _controller = VideoPlayerController.file(file);
    _initializeVideoPlayerFuture = _controller!.initialize().then((_) {
      setState(() {});
      widget.onInitialized?.call(_controller!);
      _controller!.play();
      _controller!.setLooping(true);
    });
  }
  // 642c6ab15ef311

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_initializeVideoPlayerFuture == null || _controller == null) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.thumb),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return VideoPlayer(_controller!);
        } else {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.thumb),
                fit: BoxFit.fill,
              ),
            ),
          );
        }
      },
    );
  }
}

class SlideLoaderWidget extends StatefulWidget {
  const SlideLoaderWidget({super.key});

  @override
  State<SlideLoaderWidget> createState() => _SlideLoaderWidgetState();
}

class _SlideLoaderWidgetState extends State<SlideLoaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.fromBorderSide(
          BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
