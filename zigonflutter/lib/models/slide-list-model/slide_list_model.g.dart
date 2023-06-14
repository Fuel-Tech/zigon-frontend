// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SlideListModel _$$_SlideListModelFromJson(Map<String, dynamic> json) =>
    _$_SlideListModel(
      code: json['code'] as int,
      msg: (json['msg'] as List<dynamic>)
          .map((e) => Msg.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SlideListModelToJson(_$_SlideListModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
    };

_$_Msg _$$_MsgFromJson(Map<String, dynamic> json) => _$_Msg(
      Video: Videos.fromJson(json['Video'] as Map<String, dynamic>),
      User: Users.fromJson(json['User'] as Map<String, dynamic>),
      Sound: Sounds.fromJson(json['Sound'] as Map<String, dynamic>),
      video_comment: json['video_comment'] as List<dynamic>,
      video_favourite: json['video_favourite'] as List<dynamic>,
      video_like: json['video_like'] as List<dynamic>,
      video_watch: json['video_watch'] as List<dynamic>,
    );

Map<String, dynamic> _$$_MsgToJson(_$_Msg instance) => <String, dynamic>{
      'Video': instance.Video,
      'User': instance.User,
      'Sound': instance.Sound,
      'video_comment': instance.video_comment,
      'video_favourite': instance.video_favourite,
      'video_like': instance.video_like,
      'video_watch': instance.video_watch,
    };

_$_Sounds _$$_SoundsFromJson(Map<String, dynamic> json) => _$_Sounds(
      id: json['id'] as String?,
      audio: json['audio'] as String?,
      duration: json['duration'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      thum: json['thum'] as String?,
      sound_section_id: json['sound_section_id'] as String?,
      uploaded_by: json['uploaded_by'] as String?,
      publish: json['publish'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$_SoundsToJson(_$_Sounds instance) => <String, dynamic>{
      'id': instance.id,
      'audio': instance.audio,
      'duration': instance.duration,
      'name': instance.name,
      'description': instance.description,
      'thum': instance.thum,
      'sound_section_id': instance.sound_section_id,
      'uploaded_by': instance.uploaded_by,
      'publish': instance.publish,
      'created': instance.created?.toIso8601String(),
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
      authToken: json['authToken'] as String,
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
      button: json['button'] as String,
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
      'authToken': instance.authToken,
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
    };

_$_Videos _$$_VideosFromJson(Map<String, dynamic> json) => _$_Videos(
      id: json['id'] as String,
      user_id: json['user_id'] as String,
      description: json['description'] as String,
      video: json['video'] as String,
      thum: json['thum'] as String,
      gif: json['gif'] as String,
      view: json['view'] as String,
      section: json['section'] as String,
      sound_id: json['sound_id'] as String,
      privacy_type: json['privacy_type'] as String,
      allow_comments: json['allow_comments'] as String,
      allow_duet: json['allow_duet'] as String,
      block: json['block'] as String,
      duet_video_id: json['duet_video_id'] as String,
      old_video_id: json['old_video_id'] as String,
      duration: json['duration'] as String,
      promote: json['promote'] as String,
      created: DateTime.parse(json['created'] as String),
      like: json['like'] as int,
      favourite: json['favourite'] as int,
      comment_count: json['comment_count'] as int,
      like_count: json['like_count'] as int,
    );

Map<String, dynamic> _$$_VideosToJson(_$_Videos instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'description': instance.description,
      'video': instance.video,
      'thum': instance.thum,
      'gif': instance.gif,
      'view': instance.view,
      'section': instance.section,
      'sound_id': instance.sound_id,
      'privacy_type': instance.privacy_type,
      'allow_comments': instance.allow_comments,
      'allow_duet': instance.allow_duet,
      'block': instance.block,
      'duet_video_id': instance.duet_video_id,
      'old_video_id': instance.old_video_id,
      'duration': instance.duration,
      'promote': instance.promote,
      'created': instance.created.toIso8601String(),
      'like': instance.like,
      'favourite': instance.favourite,
      'comment_count': instance.comment_count,
      'like_count': instance.like_count,
    };
