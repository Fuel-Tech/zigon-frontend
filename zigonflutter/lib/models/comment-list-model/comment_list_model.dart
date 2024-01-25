// To parse this JSON data, do
//
//     final commentListModel = commentListModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_list_model.freezed.dart';
part 'comment_list_model.g.dart';

CommentListModel commentListModelFromJson(String str) =>
    CommentListModel.fromJson(json.decode(str));

String commentListModelToJson(CommentListModel data) =>
    json.encode(data.toJson());

@freezed
class CommentListModel with _$CommentListModel {
  const factory CommentListModel({
    required int code,
    required List<Msg> msg,
  }) = _CommentListModel;

  factory CommentListModel.fromJson(Map<String, dynamic> json) =>
      _$CommentListModelFromJson(json);
}

@freezed
class CommentReply with _$CommentReply {
  const factory CommentReply({
    required int count,
    List<Map<String, dynamic>>? replies,
  }) = _CommentReply;

  factory CommentReply.fromJson(Map<String, dynamic> json) =>
      _$CommentReplyFromJson(json);
}

@freezed
class Msg with _$Msg {
  const factory Msg({
    required String id,
    required String comment,
    required int likeCount,
    required DateTime created,
    required User user,
    required CommentReply commentReply,
    required Commentlikes commentlikes,
  }) = _Msg;

  factory Msg.fromJson(Map<String, dynamic> json) => _$MsgFromJson(json);
}

@freezed
class Commentlikes with _$Commentlikes {
  const factory Commentlikes({
    required int count,
    List<Like>? like,
  }) = _Commentlikes;

  factory Commentlikes.fromJson(Map<String, dynamic> json) =>
      _$CommentlikesFromJson(json);
}

@freezed
class Like with _$Like {
  const factory Like({
    required String id,
    required DateTime created,
    required User user,
  }) = _Like;

  factory Like.fromJson(Map<String, dynamic> json) => _$LikeFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String userName,
    required String firstName,
    required String lastName,
    required String profilePicSmall,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
