// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SlideListModel _$$_SlideListModelFromJson(Map<String, dynamic> json) =>
    _$_SlideListModel(
      status: json['status'] as String,
      slideList: (json['slideList'] as List<dynamic>)
          .map((e) => SlideList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SlideListModelToJson(_$_SlideListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'slideList': instance.slideList,
    };

_$_SlideList _$$_SlideListFromJson(Map<String, dynamic> json) => _$_SlideList(
      slideName: json['slideName'] as String,
      slideURL: json['slideURL'] as String,
      slideDuration: json['slideDuration'] as String,
      slideTags: json['slideTags'] as String,
      slideDesc: json['slideDesc'] as String,
      slideLikes: json['slideLikes'] as int,
      slideComments:
          SlideComments.fromJson(json['slideComments'] as Map<String, dynamic>),
      audioName: json['audioName'] as String,
      audio: json['audio'] as String,
      audioID: json['audioID'] as int,
      slideViews: json['slideViews'] as int,
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SlideListToJson(_$_SlideList instance) =>
    <String, dynamic>{
      'slideName': instance.slideName,
      'slideURL': instance.slideURL,
      'slideDuration': instance.slideDuration,
      'slideTags': instance.slideTags,
      'slideDesc': instance.slideDesc,
      'slideLikes': instance.slideLikes,
      'slideComments': instance.slideComments,
      'audioName': instance.audioName,
      'audio': instance.audio,
      'audioID': instance.audioID,
      'slideViews': instance.slideViews,
      'metadata': instance.metadata,
    };

_$_Metadata _$$_MetadataFromJson(Map<String, dynamic> json) => _$_Metadata(
      username: json['username'] as String,
      userID: json['userID'] as int,
      isVerified: json['isVerified'] as bool,
      profilepicture: json['profilepicture'] as String,
    );

Map<String, dynamic> _$$_MetadataToJson(_$_Metadata instance) =>
    <String, dynamic>{
      'username': instance.username,
      'userID': instance.userID,
      'isVerified': instance.isVerified,
      'profilepicture': instance.profilepicture,
    };

_$_SlideComments _$$_SlideCommentsFromJson(Map<String, dynamic> json) =>
    _$_SlideComments(
      count: json['count'] as int,
      commentID: json['commentID'] as int,
    );

Map<String, dynamic> _$$_SlideCommentsToJson(_$_SlideComments instance) =>
    <String, dynamic>{
      'count': instance.count,
      'commentID': instance.commentID,
    };
