import 'package:meta/meta.dart';
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
    required String status,
    required List<CommentList> commentList,
  }) = _CommentListModel;

  factory CommentListModel.fromJson(Map<String, dynamic> json) =>
      _$CommentListModelFromJson(json);
}

@freezed
class CommentList with _$CommentList {
  const factory CommentList({
    required String comment,
    required String commentUser,
    required String commentUserId,
    required String commentedTime,
    required String userPic,
    required String commentLike,
  }) = _CommentList;

  factory CommentList.fromJson(Map<String, dynamic> json) =>
      _$CommentListFromJson(json);
}
