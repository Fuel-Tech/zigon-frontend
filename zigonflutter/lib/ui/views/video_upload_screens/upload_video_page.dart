import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class UploadVideoWidget extends StatelessWidget {
  UploadVideoWidget(
      {Key? key,
      required this.thumbnail,
      required this.videoPath,
      required this.aspectRatio})
      : super(key: key);
  Uint8List thumbnail;
  File videoPath;
  double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
          onPressed: () {
            dioPost(videoPath.path);
          },
          child: Text('Upload')),
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              'Upload Video',
              style: TextStyle(color: Colors.white),
            ),
            Container(
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: MemoryImage(thumbnail),
                  ),
                  borderRadius: BorderRadius.circular(6)),
            ),
          ],
        ),
      ),
    );
  }
}

dioPost(String path) async {
  final Dio dio = Dio();
  var body = '''{
      "video": "${await MultipartFile.fromFile(path)}",
      "user_id": "1",
      "sound_id": "0",
      "description": "testvideo",
      "allow_duet": "0",
      "allow_comments": "true",
      "privacy_type": "public"
    }''';
  Map<String, dynamic> headers = {
    "Api-Key": "156c4675-9608-4591-1111-00000",
    "User-Id": "1",
    "Auth-Token":
        "xVeLKVHqS1ufFbcFyIOpUg5D_-2yCOBOrW9IgZ2cpB8C00PM3nZz1J6SVUGifEdt46hBXIEpiF1saJ5t6noQUQ==",
    "device": "12@12",
    "version": "1",
    "ip": "192.168.1.20",
    "device-token": "dummy",
    "content-type": "application/json"
  };
  dio.options.headers.addAll(headers);
  log(dio.options.headers.toString());
  log(body);
  String postUrl = "http://35.154.107.142/mobile/api/postvideo";
  log('DIO POST URL: $postUrl');

  Response<dynamic> response;
  if (body == null) {
    response = await dio.post(postUrl);
  } else {
    response = await dio.post(postUrl, data: body);
  }

  log("Status Code: ${response.statusCode}");

  if (response.statusCode == 200) {
    // return response.data;
    log(response.data);
  } else if (response.statusCode == 201) {
    log('$postUrl - Created');
  } else if (response.statusCode == 204) {
    log('$postUrl - Success - No Content');
  } else {
    log('DIO-POST $postUrl FAILED\nStatus Code: ${response.statusCode}\nData: ${response.data}');
  }
}

// class Preview extends StatefulWidget {
//   Preview({Key? key, required this.videoFile}) : super(key: key);
//   File videoFile;
//   @override
//   State<Preview> createState() => _PreviewState();
// }

// class _PreviewState extends State<Preview> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     _controller = VideoPlayerController.file(widget.videoFile);
//     _controller.initialize().then((value) {
//       _controller.play();
//       setState(() {});
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: AspectRatio(
//             aspectRatio: _controller.value.aspectRatio,
//             child: VideoPlayer(_controller)),
//       ),
//     );
//   }
// }
