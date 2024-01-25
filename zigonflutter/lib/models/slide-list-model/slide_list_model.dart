// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'slide_list_model.freezed.dart';
part 'slide_list_model.g.dart';

SlideListModel slideListModelFromJson(String str) =>
    SlideListModel.fromJson(json.decode(str));

String slideListModelToJson(SlideListModel data) => json.encode(data.toJson());

@freezed
class SlideListModel with _$SlideListModel {
  const factory SlideListModel({
    required int code,
    required List<Msg> msg,
  }) = _SlideListModel;

  factory SlideListModel.fromJson(Map<String, dynamic> json) =>
      _$SlideListModelFromJson(json);
}

@freezed
class Msg with _$Msg {
  const factory Msg({
    @JsonKey(name: 'Video') required Video video,
    @JsonKey(name: 'User') required User user,
    @JsonKey(name: 'Sound') required Sound sound,
  }) = _Msg;

  factory Msg.fromJson(Map<String, dynamic> json) => _$MsgFromJson(json);
}

@freezed
class Sound with _$Sound {
  const factory Sound({
    String? id,
    String? audio,
    String? duration,
    String? name,
    String? description,
    String? thum,
    String? sound_section_id,
    String? uploaded_by,
    String? publish,
    DateTime? created,
  }) = _Sound;

  factory Sound.fromJson(Map<String, dynamic> json) => _$SoundFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    String? first_name,
    String? last_name,
    String? profile_pic,
    required String username,
    required bool verified,
    required String button,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// @freezed
// class PrivacySetting with _$PrivacySetting {
//   const factory PrivacySetting({
//     required String id,
//     required String videos_download,
//     required String direct_message,
//     required String duet,
//     required String liked_videos,
//     required String video_comment,
//   }) = _PrivacySetting;

//   factory PrivacySetting.fromJson(Map<String, dynamic> json) =>
//       _$PrivacySettingFromJson(json);
// }

// @freezed
// class PushNotification with _$PushNotification {
//   const factory PushNotification({
//     required String id,
//     required String likes,
//     required String comments,
//     required String new_followers,
//     required String mentions,
//     required String direct_messages,
//     required String video_updates,
//   }) = _PushNotification;

//   factory PushNotification.fromJson(Map<String, dynamic> json) =>
//       _$PushNotificationFromJson(json);
// }

@freezed
class Video with _$Video {
  const factory Video({
    required String id,
    required String user_id,
    required String description,
    required String video,
    required String thum,
    required String gif,
    required String view,
    required bool isVideoLiked,
    required String section,
    required String sound_id,
    required String privacy_type,
    required String allow_comments,
    required String allow_duet,
    required String block,
    required String duet_video_id,
    required String old_video_id,
    required String duration,
    required String promote,
    required DateTime created,
    required int favourite,
    required int comment_count,
    required int like_count,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
