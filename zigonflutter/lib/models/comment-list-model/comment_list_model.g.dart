// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentListModel _$$_CommentListModelFromJson(Map<String, dynamic> json) =>
    _$_CommentListModel(
      status: json['status'] as String,
      commentList: (json['commentList'] as List<dynamic>)
          .map((e) => CommentList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CommentListModelToJson(_$_CommentListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'commentList': instance.commentList,
    };

_$_CommentList _$$_CommentListFromJson(Map<String, dynamic> json) =>
    _$_CommentList(
      comment: json['comment'] as String,
      commentUser: json['commentUser'] as String,
      commentUserId: json['commentUserId'] as String,
      commentedTime: json['commentedTime'] as String,
      userPic: json['userPic'] as String,
      commentLike: json['commentLike'] as String,
    );

Map<String, dynamic> _$$_CommentListToJson(_$_CommentList instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'commentUser': instance.commentUser,
      'commentUserId': instance.commentUserId,
      'commentedTime': instance.commentedTime,
      'userPic': instance.userPic,
      'commentLike': instance.commentLike,
    };
