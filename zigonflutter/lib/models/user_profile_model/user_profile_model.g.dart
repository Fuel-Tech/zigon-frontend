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
      User: Users.fromJson(json['User'] as Map<String, dynamic>),
      PushNotification: PushNotifications.fromJson(
          json['PushNotification'] as Map<String, dynamic>),
      PrivacySetting: PrivacySettings.fromJson(
          json['PrivacySetting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MsgToJson(_$_Msg instance) => <String, dynamic>{
      'User': instance.User,
      'PushNotification': instance.PushNotification,
      'PrivacySetting': instance.PrivacySetting,
    };

_$_PrivacySettings _$$_PrivacySettingsFromJson(Map<String, dynamic> json) =>
    _$_PrivacySettings(
      id: json['id'] as String,
      videos_download: json['videos_download'] as String,
      direct_message: json['direct_message'] as String,
      duet: json['duet'] as String,
      liked_videos: json['liked_videos'] as String,
      video_comment: json['video_comment'] as String,
    );

Map<String, dynamic> _$$_PrivacySettingsToJson(_$_PrivacySettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videos_download': instance.videos_download,
      'direct_message': instance.direct_message,
      'duet': instance.duet,
      'liked_videos': instance.liked_videos,
      'video_comment': instance.video_comment,
    };

_$_PushNotifications _$$_PushNotificationsFromJson(Map<String, dynamic> json) =>
    _$_PushNotifications(
      id: json['id'] as String,
      likes: json['likes'] as String,
      comments: json['comments'] as String,
      new_followers: json['new_followers'] as String,
      mentions: json['mentions'] as String,
      direct_messages: json['direct_messages'] as String,
      video_updates: json['video_updates'] as String,
    );

Map<String, dynamic> _$$_PushNotificationsToJson(
        _$_PushNotifications instance) =>
    <String, dynamic>{
      'id': instance.id,
      'likes': instance.likes,
      'comments': instance.comments,
      'new_followers': instance.new_followers,
      'mentions': instance.mentions,
      'direct_messages': instance.direct_messages,
      'video_updates': instance.video_updates,
    };

_$_Users _$$_UsersFromJson(Map<String, dynamic> json) => _$_Users(
      id: json['id'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      gender: json['gender'] as String,
      bio: json['bio'] as String,
      website: json['website'] as String,
      dob: json['dob'] as String,
      social_id: json['social_id'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      profile_pic: json['profile_pic'] as String,
      profile_pic_small: json['profile_pic_small'] as String,
      role: json['role'] as String,
      username: json['username'] as String,
      social: json['social'] as String,
      device_token: json['device_token'] as String,
      token: json['token'] as String,
      active: json['active'] as String,
      lat: json['lat'] as String,
      long: json['long'] as String,
      online: json['online'] as String,
      verified: json['verified'] as String,
      auth_token: json['auth_token'] as String,
      version: json['version'] as String,
      device: json['device'] as String,
      ip: json['ip'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      city_id: json['city_id'] as String,
      state_id: json['state_id'] as String,
      country_id: json['country_id'] as String,
      wallet: json['wallet'] as String,
      paypal: json['paypal'] as String,
      reset_wallet_datetime: json['reset_wallet_datetime'] as String,
      fb_id: json['fb_id'] as String,
      created: DateTime.parse(json['created'] as String),
      button: json['button'] as String?,
      followers_count: (json['followers_count'] as num?)?.toDouble(),
      following_count: (json['following_count'] as num?)?.toDouble(),
      likes_count: (json['likes_count'] as num?)?.toDouble(),
      video_count: (json['video_count'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_UsersToJson(_$_Users instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'gender': instance.gender,
      'bio': instance.bio,
      'website': instance.website,
      'dob': instance.dob,
      'social_id': instance.social_id,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'profile_pic': instance.profile_pic,
      'profile_pic_small': instance.profile_pic_small,
      'role': instance.role,
      'username': instance.username,
      'social': instance.social,
      'device_token': instance.device_token,
      'token': instance.token,
      'active': instance.active,
      'lat': instance.lat,
      'long': instance.long,
      'online': instance.online,
      'verified': instance.verified,
      'auth_token': instance.auth_token,
      'version': instance.version,
      'device': instance.device,
      'ip': instance.ip,
      'city': instance.city,
      'country': instance.country,
      'city_id': instance.city_id,
      'state_id': instance.state_id,
      'country_id': instance.country_id,
      'wallet': instance.wallet,
      'paypal': instance.paypal,
      'reset_wallet_datetime': instance.reset_wallet_datetime,
      'fb_id': instance.fb_id,
      'created': instance.created.toIso8601String(),
      'button': instance.button,
      'followers_count': instance.followers_count,
      'following_count': instance.following_count,
      'likes_count': instance.likes_count,
      'video_count': instance.video_count,
    };
