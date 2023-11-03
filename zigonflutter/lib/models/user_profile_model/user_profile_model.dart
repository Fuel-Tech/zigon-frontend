import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

UserProfileModel userProfileModelFromJson(String str) =>
    UserProfileModel.fromJson(json.decode(str));

String userProfileModelToJson(UserProfileModel data) =>
    json.encode(data.toJson());

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required int code,
    required Msg msg,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

@freezed
class Msg with _$Msg {
  const factory Msg({
    required Users User,
    required PushNotifications PushNotification,
    required PrivacySettings PrivacySetting,
  }) = _Msg;

  factory Msg.fromJson(Map<String, dynamic> json) => _$MsgFromJson(json);
}

@freezed
class PrivacySettings with _$PrivacySettings {
  const factory PrivacySettings({
    required String id,
    required String videos_download,
    required String direct_message,
    required String duet,
    required String liked_videos,
    required String video_comment,
  }) = _PrivacySettings;

  factory PrivacySettings.fromJson(Map<String, dynamic> json) =>
      _$PrivacySettingsFromJson(json);
}

@freezed
class PushNotifications with _$PushNotifications {
  const factory PushNotifications({
    required String id,
    required String likes,
    required String comments,
    required String new_followers,
    required String mentions,
    required String direct_messages,
    required String video_updates,
  }) = _PushNotifications;

  factory PushNotifications.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationsFromJson(json);
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
    required String auth_token,
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
    String? button,
    double? followers_count,
    double? following_count,
    double? likes_count,
    double? video_count,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}
