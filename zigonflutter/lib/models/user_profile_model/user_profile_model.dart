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
    required User user,
    required PushNotification pushNotification,
    required PrivacySetting privacySetting,
  }) = _Msg;

  factory Msg.fromJson(Map<String, dynamic> json) => _$MsgFromJson(json);
}

@freezed
class PrivacySetting with _$PrivacySetting {
  const factory PrivacySetting({
    required String id,
    required String videosDownload,
    required String directMessage,
    required String duet,
    required String likedVideos,
    required String videoComment,
  }) = _PrivacySetting;

  factory PrivacySetting.fromJson(Map<String, dynamic> json) =>
      _$PrivacySettingFromJson(json);
}

@freezed
class PushNotification with _$PushNotification {
  const factory PushNotification({
    required String id,
    required String likes,
    required String comments,
    required String newFollowers,
    required String mentions,
    required String directMessages,
    required String videoUpdates,
  }) = _PushNotification;

  factory PushNotification.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String firstName,
    required String lastName,
    required String gender,
    required String bio,
    required String website,
    required String dob,
    required String socialId,
    required String email,
    required String phone,
    required String password,
    required String profilePic,
    required String profilePicSmall,
    required String role,
    required String username,
    required String social,
    required String deviceToken,
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
    required String cityId,
    required String stateId,
    required String countryId,
    required String wallet,
    required String paypal,
    required String resetWalletDatetime,
    required String fbId,
    required DateTime created,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
