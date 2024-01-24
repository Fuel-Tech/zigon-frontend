// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

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
      video: Video.fromJson(json['Video'] as Map<String, dynamic>),
      user: User.fromJson(json['User'] as Map<String, dynamic>),
      sound: Sound.fromJson(json['Sound'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MsgToJson(_$_Msg instance) => <String, dynamic>{
      'Video': instance.video,
      'User': instance.user,
      'Sound': instance.sound,
    };

_$_Sound _$$_SoundFromJson(Map<String, dynamic> json) => _$_Sound(
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

Map<String, dynamic> _$$_SoundToJson(_$_Sound instance) => <String, dynamic>{
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

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      profile_pic: json['profile_pic'] as String?,
      username: json['username'] as String,
      verified: json['verified'] as bool,
      button: json['button'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'profile_pic': instance.profile_pic,
      'username': instance.username,
      'verified': instance.verified,
      'button': instance.button,
    };

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      id: json['id'] as String,
      user_id: json['user_id'] as String,
      description: json['description'] as String,
      video: json['video'] as String,
      thum: json['thum'] as String,
      gif: json['gif'] as String,
      view: json['view'] as String,
      isVideoLiked: json['isVideoLiked'] as bool,
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
      favourite: json['favourite'] as int,
      comment_count: json['comment_count'] as int,
      like_count: json['like_count'] as int,
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'description': instance.description,
      'video': instance.video,
      'thum': instance.thum,
      'gif': instance.gif,
      'view': instance.view,
      'isVideoLiked': instance.isVideoLiked,
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
      'favourite': instance.favourite,
      'comment_count': instance.comment_count,
      'like_count': instance.like_count,
    };
