import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'slide_list_model.freezed.dart';
part 'slide_list_model.g.dart';

SlideListModel slideListModelFromJson(String str) =>
    SlideListModel.fromJson(json.decode(str));

String slideListModelToJson(SlideListModel data) => json.encode(data.toJson());

@freezed
class SlideListModel with _$SlideListModel {
  const factory SlideListModel({
    required String status,
    required List<SlideList> slideList,
  }) = _SlideListModel;

  factory SlideListModel.fromJson(Map<String, dynamic> json) =>
      _$SlideListModelFromJson(json);
}

@freezed
class SlideList with _$SlideList {
  const factory SlideList({
    required String slideName,
    required String slideURL,
    required String slideDuration,
    required String slideTags,
    required String slideDesc,
    required int slideLikes,
    required SlideComments slideComments,
    required String audioName,
    required String audio,
    required int audioID,
    required int slideViews,
    required Metadata metadata,
  }) = _SlideList;

  factory SlideList.fromJson(Map<String, dynamic> json) =>
      _$SlideListFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata({
    required String username,
    required int userID,
    required bool isVerified,
    required String profilepicture,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}

@freezed
class SlideComments with _$SlideComments {
  const factory SlideComments({
    required int count,
    required int commentID,
  }) = _SlideComments;

  factory SlideComments.fromJson(Map<String, dynamic> json) =>
      _$SlideCommentsFromJson(json);
}
