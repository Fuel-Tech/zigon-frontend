import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class CachedVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final Function(VideoPlayerController)? onInitialized;

  CachedVideoPlayer({required this.videoUrl, this.onInitialized});

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
      return Center(child: CircularProgressIndicator());
    }

    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return VideoPlayer(_controller!);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
