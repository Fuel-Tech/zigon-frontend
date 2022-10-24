// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileModel _$$_UserProfileModelFromJson(Map<String, dynamic> json) =>
    _$_UserProfileModel(
      code: json['code'] as int,
      msg: Msg.fromJson(json['msg'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileModelToJson(_$_UserProfileModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
    };

_$_Msg _$$_MsgFromJson(Map<String, dynamic> json) => _$_Msg(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      pushNotification: PushNotification.fromJson(
          json['pushNotification'] as Map<String, dynamic>),
      privacySetting: PrivacySetting.fromJson(
          json['privacySetting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MsgToJson(_$_Msg instance) => <String, dynamic>{
      'user': instance.user,
      'pushNotification': instance.pushNotification,
      'privacySetting': instance.privacySetting,
    };

_$_PrivacySetting _$$_PrivacySettingFromJson(Map<String, dynamic> json) =>
    _$_PrivacySetting(
      id: json['id'] as String,
      videosDownload: json['videosDownload'] as String,
      directMessage: json['directMessage'] as String,
      duet: json['duet'] as String,
      likedVideos: json['likedVideos'] as String,
      videoComment: json['videoComment'] as String,
    );

Map<String, dynamic> _$$_PrivacySettingToJson(_$_PrivacySetting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videosDownload': instance.videosDownload,
      'directMessage': instance.directMessage,
      'duet': instance.duet,
      'likedVideos': instance.likedVideos,
      'videoComment': instance.videoComment,
    };

_$_PushNotification _$$_PushNotificationFromJson(Map<String, dynamic> json) =>
    _$_PushNotification(
      id: json['id'] as String,
      likes: json['likes'] as String,
      comments: json['comments'] as String,
      newFollowers: json['newFollowers'] as String,
      mentions: json['mentions'] as String,
      directMessages: json['directMessages'] as String,
      videoUpdates: json['videoUpdates'] as String,
    );

Map<String, dynamic> _$$_PushNotificationToJson(_$_PushNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'likes': instance.likes,
      'comments': instance.comments,
      'newFollowers': instance.newFollowers,
      'mentions': instance.mentions,
      'directMessages': instance.directMessages,
      'videoUpdates': instance.videoUpdates,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      gender: json['gender'] as String,
      bio: json['bio'] as String,
      website: json['website'] as String,
      dob: json['dob'] as String,
      socialId: json['socialId'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      profilePic: json['profilePic'] as String,
      profilePicSmall: json['profilePicSmall'] as String,
      role: json['role'] as String,
      username: json['username'] as String,
      social: json['social'] as String,
      deviceToken: json['deviceToken'] as String,
      token: json['token'] as String,
      active: json['active'] as String,
      lat: json['lat'] as String,
      long: json['long'] as String,
      online: json['online'] as String,
      verified: json['verified'] as String,
      authToken: json['authToken'] as String,
      version: json['version'] as String,
      device: json['device'] as String,
      ip: json['ip'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      cityId: json['cityId'] as String,
      stateId: json['stateId'] as String,
      countryId: json['countryId'] as String,
      wallet: json['wallet'] as String,
      paypal: json['paypal'] as String,
      resetWalletDatetime: json['resetWalletDatetime'] as String,
      fbId: json['fbId'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'bio': instance.bio,
      'website': instance.website,
      'dob': instance.dob,
      'socialId': instance.socialId,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'profilePic': instance.profilePic,
      'profilePicSmall': instance.profilePicSmall,
      'role': instance.role,
      'username': instance.username,
      'social': instance.social,
      'deviceToken': instance.deviceToken,
      'token': instance.token,
      'active': instance.active,
      'lat': instance.lat,
      'long': instance.long,
      'online': instance.online,
      'verified': instance.verified,
      'authToken': instance.authToken,
      'version': instance.version,
      'device': instance.device,
      'ip': instance.ip,
      'city': instance.city,
      'country': instance.country,
      'cityId': instance.cityId,
      'stateId': instance.stateId,
      'countryId': instance.countryId,
      'wallet': instance.wallet,
      'paypal': instance.paypal,
      'resetWalletDatetime': instance.resetWalletDatetime,
      'fbId': instance.fbId,
      'created': instance.created.toIso8601String(),
    };
