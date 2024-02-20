import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zigonflutter/ui/views/video_upload_screens/video_editor_page.dart';

class VideoPickerPage extends StatelessWidget {
  VideoPickerPage({super.key});
  File? video;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              ImagePicker picker = ImagePicker();
              XFile? xFile =
                  await picker.pickVideo(source: ImageSource.gallery);
              if (xFile != null) {
                video = File(xFile.path);
              }
            },
            child: Text("PICK"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              Get.to(() => VideoEditorPage(videoFile: video!));
            },
            child: Text("SEND"),
          )
        ],
      ),
    );
  }
}
