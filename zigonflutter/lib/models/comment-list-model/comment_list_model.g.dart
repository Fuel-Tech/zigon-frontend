// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'comment_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentListModel _$$_CommentListModelFromJson(Map<String, dynamic> json) =>
    _$_CommentListModel(
      code: json['code'] as int,
      msg: (json['msg'] as List<dynamic>)
          .map((e) => Msg.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CommentListModelToJson(_$_CommentListModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
    };

_$_CommentReply _$$_CommentReplyFromJson(Map<String, dynamic> json) =>
    _$_CommentReply(
      count: json['count'] as int,
      replies: (json['replies'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_CommentReplyToJson(_$_CommentReply instance) =>
    <String, dynamic>{
      'count': instance.count,
      'replies': instance.replies,
    };

_$_Msg _$$_MsgFromJson(Map<String, dynamic> json) => _$_Msg(
      id: json['id'] as String,
      comment: json['comment'] as String,
      likeCount: json['likeCount'] as int,
      created: DateTime.parse(json['created'] as String),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      commentReply:
          CommentReply.fromJson(json['commentReply'] as Map<String, dynamic>),
      commentlikes:
          Commentlikes.fromJson(json['commentlikes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MsgToJson(_$_Msg instance) => <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'likeCount': instance.likeCount,
      'created': instance.created.toIso8601String(),
      'user': instance.user,
      'commentReply': instance.commentReply,
      'commentlikes': instance.commentlikes,
    };

_$_Commentlikes _$$_CommentlikesFromJson(Map<String, dynamic> json) =>
    _$_Commentlikes(
      count: json['count'] as int,
      like: (json['like'] as List<dynamic>?)
          ?.map((e) => Like.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CommentlikesToJson(_$_Commentlikes instance) =>
    <String, dynamic>{
      'count': instance.count,
      'like': instance.like,
    };

_$_Like _$$_LikeFromJson(Map<String, dynamic> json) => _$_Like(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LikeToJson(_$_Like instance) => <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'user': instance.user,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      userName: json['userName'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      profilePicSmall: json['profilePicSmall'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profilePicSmall': instance.profilePicSmall,
    };
