import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:zigonflutter/controllers/video_upload_controller.dart';

import '../../../utility/app_utility.dart';

class UploadFinalScreen extends StatelessWidget {
  UploadFinalScreen({Key? key}) : super(key: key);
  final VideoUploadController videoUploadController =
      Get.put(VideoUploadController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'New Post',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: () {
                videoUploadController.postVideo();
              },
              child: Text(
                'Share',
                style: GoogleFonts.roboto(
                  color: AppUtil.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: AppUtil.primary,
        body: SingleChildScrollView(
          child: Obx(
            () => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: Get.height * .15,
                        width: Get.width * .25,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: MemoryImage(
                              Get.arguments['thumb'],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller:
                              videoUploadController.descriptionController,
                          maxLines: 4,
                          maxLength: 100,
                          decoration: const InputDecoration(
                            counterText: ' ',
                            hintText: 'Description',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Divider(color: Colors.white, height: 1),
                TextFieldTags(
                  textfieldTagsController:
                      videoUploadController.textfieldTagsController,
                  textSeparators: const [' ', ','],
                  letterCase: LetterCase.normal,
                  validator: (String tag) {
                    if (tag == 'php') {
                      return 'No, please just no';
                    } else if (videoUploadController
                        .textfieldTagsController.getTags!
                        .contains(tag)) {
                      return 'you already entered that';
                    }
                    return null;
                  },
                  inputfieldBuilder:
                      (context, tec, fn, error, onChanged, onSubmitted) {
                    return ((context, sc, tags, onTagDelete) {
                      return TextField(
                        controller: tec,
                        focusNode: fn,
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: videoUploadController
                                  .textfieldTagsController.hasTags
                              ? ''
                              : "Add #Tags...",
                          errorText: error,
                          prefixIconConstraints:
                              BoxConstraints(maxWidth: Get.width * 0.74),
                          prefixIcon: tags.isNotEmpty
                              ? SingleChildScrollView(
                                  controller: sc,
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                      children: tags.map((String tag) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                        color: AppUtil.secondary,
                                      ),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            child: Text(
                                              '#$tag',
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onTap: () {
                                              print("$tag selected");
                                            },
                                          ),
                                          const SizedBox(width: 4.0),
                                          InkWell(
                                            child: const Icon(
                                              Icons.cancel,
                                              size: 14.0,
                                              color: Color.fromARGB(
                                                  255, 233, 233, 233),
                                            ),
                                            onTap: () {
                                              onTagDelete(tag);
                                            },
                                          )
                                        ],
                                      ),
                                    );
                                  }).toList()),
                                )
                              : null,
                        ),
                        onChanged: onChanged,
                        onSubmitted: onSubmitted,
                      );
                    });
                  },
                ),
                // Divider(color: Colors.white, height: 1),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Allow Comments",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                      Switch.adaptive(
                        value: videoUploadController.allowComments.value,
                        onChanged: (value) {
                          videoUploadController.toggleAllowComents(value);
                        },
                      )
                    ],
                  ),
                ),
                // Divider(color: Colors.white, height: 1),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        videoUploadController.privatePublic.value,
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                      Switch.adaptive(
                        trackColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Colors.grey.withOpacity(.48);
                          } else if (states.contains(MaterialState.selected)) {
                            return Colors.red.shade300;
                          }
                          return Colors.green.shade300;
                        }),
                        thumbColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.red;
                          }
                          return Colors.green;
                        }),
                        value: videoUploadController.isPrivate.value,
                        onChanged: (value) {
                          videoUploadController.toggleIsPublic(value);
                        },
                      ),
                    ],
                  ),
                ),
                // Divider(color: Colors.white, height: 1),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Publish Audio",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                      Switch.adaptive(
                        value: videoUploadController.publishAudio.value,
                        onChanged: (value) {
                          videoUploadController.togglePublishAudio(value);
                        },
                      ),
                    ],
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
