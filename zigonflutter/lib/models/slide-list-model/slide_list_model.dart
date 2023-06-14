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
    required Videos Video,
    required Users User,
    required Sounds Sound,
    required List<dynamic> video_comment,
    required List<dynamic> video_favourite,
    required List<dynamic> video_like,
    required List<dynamic> video_watch,
  }) = _Msg;

  factory Msg.fromJson(Map<String, dynamic> json) => _$MsgFromJson(json);
}

@freezed
class Sounds with _$Sounds {
  const factory Sounds({
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
  }) = _Sounds;

  factory Sounds.fromJson(Map<String, dynamic> json) => _$SoundsFromJson(json);
}

@freezed
class Users with _$Users {
  const factory Users({
    required String id,
    required String first_name,
    required String last_name,
    required String gender,
    required String bio,
    required String website,
    required String dob,
    required String social_id,
    required String email,
    required String phone,
    required String password,
    required String profile_pic,
    required String profile_pic_small,
    required String role,
    required String username,
    required String social,
    required String device_token,
    required String token,
    required String active,
    required String lat,
    required String long,
    required String online,
    required String verified,
    required String authToken,
    required String version,
    required String device,
    required String ip,
    required String city,
    required String country,
    required String city_id,
    required String state_id,
    required String country_id,
    required String wallet,
    required String paypal,
    required String reset_wallet_datetime,
    required String fb_id,
    required DateTime created,
    required String button,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}

@freezed
class Videos with _$Videos {
  const factory Videos({
    required String id,
    required String user_id,
    required String description,
    required String video,
    required String thum,
    required String gif,
    required String view,
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
    required int like,
    required int favourite,
    required int comment_count,
    required int like_count,
  }) = _Videos;

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);
}
