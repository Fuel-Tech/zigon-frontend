// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slide_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlideListModel _$SlideListModelFromJson(Map<String, dynamic> json) {
  return _SlideListModel.fromJson(json);
}

/// @nodoc
class _$SlideListModelTearOff {
  const _$SlideListModelTearOff();

  _SlideListModel call(
      {required String status, required List<SlideList> slideList}) {
    return _SlideListModel(
      status: status,
      slideList: slideList,
    );
  }

  SlideListModel fromJson(Map<String, Object?> json) {
    return SlideListModel.fromJson(json);
  }
}

/// @nodoc
const $SlideListModel = _$SlideListModelTearOff();

/// @nodoc
mixin _$SlideListModel {
  String get status => throw _privateConstructorUsedError;
  List<SlideList> get slideList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlideListModelCopyWith<SlideListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideListModelCopyWith<$Res> {
  factory $SlideListModelCopyWith(
          SlideListModel value, $Res Function(SlideListModel) then) =
      _$SlideListModelCopyWithImpl<$Res>;
  $Res call({String status, List<SlideList> slideList});
}

/// @nodoc
class _$SlideListModelCopyWithImpl<$Res>
    implements $SlideListModelCopyWith<$Res> {
  _$SlideListModelCopyWithImpl(this._value, this._then);

  final SlideListModel _value;
  // ignore: unused_field
  final $Res Function(SlideListModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? slideList = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      slideList: slideList == freezed
          ? _value.slideList
          : slideList // ignore: cast_nullable_to_non_nullable
              as List<SlideList>,
    ));
  }
}

/// @nodoc
abstract class _$SlideListModelCopyWith<$Res>
    implements $SlideListModelCopyWith<$Res> {
  factory _$SlideListModelCopyWith(
          _SlideListModel value, $Res Function(_SlideListModel) then) =
      __$SlideListModelCopyWithImpl<$Res>;
  @override
  $Res call({String status, List<SlideList> slideList});
}

/// @nodoc
class __$SlideListModelCopyWithImpl<$Res>
    extends _$SlideListModelCopyWithImpl<$Res>
    implements _$SlideListModelCopyWith<$Res> {
  __$SlideListModelCopyWithImpl(
      _SlideListModel _value, $Res Function(_SlideListModel) _then)
      : super(_value, (v) => _then(v as _SlideListModel));

  @override
  _SlideListModel get _value => super._value as _SlideListModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? slideList = freezed,
  }) {
    return _then(_SlideListModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      slideList: slideList == freezed
          ? _value.slideList
          : slideList // ignore: cast_nullable_to_non_nullable
              as List<SlideList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SlideListModel implements _SlideListModel {
  const _$_SlideListModel({required this.status, required this.slideList});

  factory _$_SlideListModel.fromJson(Map<String, dynamic> json) =>
      _$$_SlideListModelFromJson(json);

  @override
  final String status;
  @override
  final List<SlideList> slideList;

  @override
  String toString() {
    return 'SlideListModel(status: $status, slideList: $slideList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SlideListModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.slideList, slideList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(slideList));

  @JsonKey(ignore: true)
  @override
  _$SlideListModelCopyWith<_SlideListModel> get copyWith =>
      __$SlideListModelCopyWithImpl<_SlideListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlideListModelToJson(this);
  }
}

abstract class _SlideListModel implements SlideListModel {
  const factory _SlideListModel(
      {required String status,
      required List<SlideList> slideList}) = _$_SlideListModel;

  factory _SlideListModel.fromJson(Map<String, dynamic> json) =
      _$_SlideListModel.fromJson;

  @override
  String get status;
  @override
  List<SlideList> get slideList;
  @override
  @JsonKey(ignore: true)
  _$SlideListModelCopyWith<_SlideListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SlideList _$SlideListFromJson(Map<String, dynamic> json) {
  return _SlideList.fromJson(json);
}

/// @nodoc
class _$SlideListTearOff {
  const _$SlideListTearOff();

  _SlideList call(
      {required String slideName,
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
      required Metadata metadata}) {
    return _SlideList(
      slideName: slideName,
      slideURL: slideURL,
      slideDuration: slideDuration,
      slideTags: slideTags,
      slideDesc: slideDesc,
      slideLikes: slideLikes,
      slideComments: slideComments,
      audioName: audioName,
      audio: audio,
      audioID: audioID,
      slideViews: slideViews,
      metadata: metadata,
    );
  }

  SlideList fromJson(Map<String, Object?> json) {
    return SlideList.fromJson(json);
  }
}

/// @nodoc
const $SlideList = _$SlideListTearOff();

/// @nodoc
mixin _$SlideList {
  String get slideName => throw _privateConstructorUsedError;
  String get slideURL => throw _privateConstructorUsedError;
  String get slideDuration => throw _privateConstructorUsedError;
  String get slideTags => throw _privateConstructorUsedError;
  String get slideDesc => throw _privateConstructorUsedError;
  int get slideLikes => throw _privateConstructorUsedError;
  SlideComments get slideComments => throw _privateConstructorUsedError;
  String get audioName => throw _privateConstructorUsedError;
  String get audio => throw _privateConstructorUsedError;
  int get audioID => throw _privateConstructorUsedError;
  int get slideViews => throw _privateConstructorUsedError;
  Metadata get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlideListCopyWith<SlideList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideListCopyWith<$Res> {
  factory $SlideListCopyWith(SlideList value, $Res Function(SlideList) then) =
      _$SlideListCopyWithImpl<$Res>;
  $Res call(
      {String slideName,
      String slideURL,
      String slideDuration,
      String slideTags,
      String slideDesc,
      int slideLikes,
      SlideComments slideComments,
      String audioName,
      String audio,
      int audioID,
      int slideViews,
      Metadata metadata});

  $SlideCommentsCopyWith<$Res> get slideComments;
  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$SlideListCopyWithImpl<$Res> implements $SlideListCopyWith<$Res> {
  _$SlideListCopyWithImpl(this._value, this._then);

  final SlideList _value;
  // ignore: unused_field
  final $Res Function(SlideList) _then;

  @override
  $Res call({
    Object? slideName = freezed,
    Object? slideURL = freezed,
    Object? slideDuration = freezed,
    Object? slideTags = freezed,
    Object? slideDesc = freezed,
    Object? slideLikes = freezed,
    Object? slideComments = freezed,
    Object? audioName = freezed,
    Object? audio = freezed,
    Object? audioID = freezed,
    Object? slideViews = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      slideName: slideName == freezed
          ? _value.slideName
          : slideName // ignore: cast_nullable_to_non_nullable
              as String,
      slideURL: slideURL == freezed
          ? _value.slideURL
          : slideURL // ignore: cast_nullable_to_non_nullable
              as String,
      slideDuration: slideDuration == freezed
          ? _value.slideDuration
          : slideDuration // ignore: cast_nullable_to_non_nullable
              as String,
      slideTags: slideTags == freezed
          ? _value.slideTags
          : slideTags // ignore: cast_nullable_to_non_nullable
              as String,
      slideDesc: slideDesc == freezed
          ? _value.slideDesc
          : slideDesc // ignore: cast_nullable_to_non_nullable
              as String,
      slideLikes: slideLikes == freezed
          ? _value.slideLikes
          : slideLikes // ignore: cast_nullable_to_non_nullable
              as int,
      slideComments: slideComments == freezed
          ? _value.slideComments
          : slideComments // ignore: cast_nullable_to_non_nullable
              as SlideComments,
      audioName: audioName == freezed
          ? _value.audioName
          : audioName // ignore: cast_nullable_to_non_nullable
              as String,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      audioID: audioID == freezed
          ? _value.audioID
          : audioID // ignore: cast_nullable_to_non_nullable
              as int,
      slideViews: slideViews == freezed
          ? _value.slideViews
          : slideViews // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
    ));
  }

  @override
  $SlideCommentsCopyWith<$Res> get slideComments {
    return $SlideCommentsCopyWith<$Res>(_value.slideComments, (value) {
      return _then(_value.copyWith(slideComments: value));
    });
  }

  @override
  $MetadataCopyWith<$Res> get metadata {
    return $MetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value));
    });
  }
}

/// @nodoc
abstract class _$SlideListCopyWith<$Res> implements $SlideListCopyWith<$Res> {
  factory _$SlideListCopyWith(
          _SlideList value, $Res Function(_SlideList) then) =
      __$SlideListCopyWithImpl<$Res>;
  @override
  $Res call(
      {String slideName,
      String slideURL,
      String slideDuration,
      String slideTags,
      String slideDesc,
      int slideLikes,
      SlideComments slideComments,
      String audioName,
      String audio,
      int audioID,
      int slideViews,
      Metadata metadata});

  @override
  $SlideCommentsCopyWith<$Res> get slideComments;
  @override
  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$SlideListCopyWithImpl<$Res> extends _$SlideListCopyWithImpl<$Res>
    implements _$SlideListCopyWith<$Res> {
  __$SlideListCopyWithImpl(_SlideList _value, $Res Function(_SlideList) _then)
      : super(_value, (v) => _then(v as _SlideList));

  @override
  _SlideList get _value => super._value as _SlideList;

  @override
  $Res call({
    Object? slideName = freezed,
    Object? slideURL = freezed,
    Object? slideDuration = freezed,
    Object? slideTags = freezed,
    Object? slideDesc = freezed,
    Object? slideLikes = freezed,
    Object? slideComments = freezed,
    Object? audioName = freezed,
    Object? audio = freezed,
    Object? audioID = freezed,
    Object? slideViews = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_SlideList(
      slideName: slideName == freezed
          ? _value.slideName
          : slideName // ignore: cast_nullable_to_non_nullable
              as String,
      slideURL: slideURL == freezed
          ? _value.slideURL
          : slideURL // ignore: cast_nullable_to_non_nullable
              as String,
      slideDuration: slideDuration == freezed
          ? _value.slideDuration
          : slideDuration // ignore: cast_nullable_to_non_nullable
              as String,
      slideTags: slideTags == freezed
          ? _value.slideTags
          : slideTags // ignore: cast_nullable_to_non_nullable
              as String,
      slideDesc: slideDesc == freezed
          ? _value.slideDesc
          : slideDesc // ignore: cast_nullable_to_non_nullable
              as String,
      slideLikes: slideLikes == freezed
          ? _value.slideLikes
          : slideLikes // ignore: cast_nullable_to_non_nullable
              as int,
      slideComments: slideComments == freezed
          ? _value.slideComments
          : slideComments // ignore: cast_nullable_to_non_nullable
              as SlideComments,
      audioName: audioName == freezed
          ? _value.audioName
          : audioName // ignore: cast_nullable_to_non_nullable
              as String,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      audioID: audioID == freezed
          ? _value.audioID
          : audioID // ignore: cast_nullable_to_non_nullable
              as int,
      slideViews: slideViews == freezed
          ? _value.slideViews
          : slideViews // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SlideList implements _SlideList {
  const _$_SlideList(
      {required this.slideName,
      required this.slideURL,
      required this.slideDuration,
      required this.slideTags,
      required this.slideDesc,
      required this.slideLikes,
      required this.slideComments,
      required this.audioName,
      required this.audio,
      required this.audioID,
      required this.slideViews,
      required this.metadata});

  factory _$_SlideList.fromJson(Map<String, dynamic> json) =>
      _$$_SlideListFromJson(json);

  @override
  final String slideName;
  @override
  final String slideURL;
  @override
  final String slideDuration;
  @override
  final String slideTags;
  @override
  final String slideDesc;
  @override
  final int slideLikes;
  @override
  final SlideComments slideComments;
  @override
  final String audioName;
  @override
  final String audio;
  @override
  final int audioID;
  @override
  final int slideViews;
  @override
  final Metadata metadata;

  @override
  String toString() {
    return 'SlideList(slideName: $slideName, slideURL: $slideURL, slideDuration: $slideDuration, slideTags: $slideTags, slideDesc: $slideDesc, slideLikes: $slideLikes, slideComments: $slideComments, audioName: $audioName, audio: $audio, audioID: $audioID, slideViews: $slideViews, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SlideList &&
            const DeepCollectionEquality().equals(other.slideName, slideName) &&
            const DeepCollectionEquality().equals(other.slideURL, slideURL) &&
            const DeepCollectionEquality()
                .equals(other.slideDuration, slideDuration) &&
            const DeepCollectionEquality().equals(other.slideTags, slideTags) &&
            const DeepCollectionEquality().equals(other.slideDesc, slideDesc) &&
            const DeepCollectionEquality()
                .equals(other.slideLikes, slideLikes) &&
            const DeepCollectionEquality()
                .equals(other.slideComments, slideComments) &&
            const DeepCollectionEquality().equals(other.audioName, audioName) &&
            const DeepCollectionEquality().equals(other.audio, audio) &&
            const DeepCollectionEquality().equals(other.audioID, audioID) &&
            const DeepCollectionEquality()
                .equals(other.slideViews, slideViews) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(slideName),
      const DeepCollectionEquality().hash(slideURL),
      const DeepCollectionEquality().hash(slideDuration),
      const DeepCollectionEquality().hash(slideTags),
      const DeepCollectionEquality().hash(slideDesc),
      const DeepCollectionEquality().hash(slideLikes),
      const DeepCollectionEquality().hash(slideComments),
      const DeepCollectionEquality().hash(audioName),
      const DeepCollectionEquality().hash(audio),
      const DeepCollectionEquality().hash(audioID),
      const DeepCollectionEquality().hash(slideViews),
      const DeepCollectionEquality().hash(metadata));

  @JsonKey(ignore: true)
  @override
  _$SlideListCopyWith<_SlideList> get copyWith =>
      __$SlideListCopyWithImpl<_SlideList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlideListToJson(this);
  }
}

abstract class _SlideList implements SlideList {
  const factory _SlideList(
      {required String slideName,
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
      required Metadata metadata}) = _$_SlideList;

  factory _SlideList.fromJson(Map<String, dynamic> json) =
      _$_SlideList.fromJson;

  @override
  String get slideName;
  @override
  String get slideURL;
  @override
  String get slideDuration;
  @override
  String get slideTags;
  @override
  String get slideDesc;
  @override
  int get slideLikes;
  @override
  SlideComments get slideComments;
  @override
  String get audioName;
  @override
  String get audio;
  @override
  int get audioID;
  @override
  int get slideViews;
  @override
  Metadata get metadata;
  @override
  @JsonKey(ignore: true)
  _$SlideListCopyWith<_SlideList> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
class _$MetadataTearOff {
  const _$MetadataTearOff();

  _Metadata call(
      {required String username,
      required int userID,
      required bool isVerified,
      required String profilepicture}) {
    return _Metadata(
      username: username,
      userID: userID,
      isVerified: isVerified,
      profilepicture: profilepicture,
    );
  }

  Metadata fromJson(Map<String, Object?> json) {
    return Metadata.fromJson(json);
  }
}

/// @nodoc
const $Metadata = _$MetadataTearOff();

/// @nodoc
mixin _$Metadata {
  String get username => throw _privateConstructorUsedError;
  int get userID => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  String get profilepicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res>;
  $Res call(
      {String username, int userID, bool isVerified, String profilepicture});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res> implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  final Metadata _value;
  // ignore: unused_field
  final $Res Function(Metadata) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? userID = freezed,
    Object? isVerified = freezed,
    Object? profilepicture = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      profilepicture: profilepicture == freezed
          ? _value.profilepicture
          : profilepicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MetadataCopyWith<$Res> implements $MetadataCopyWith<$Res> {
  factory _$MetadataCopyWith(_Metadata value, $Res Function(_Metadata) then) =
      __$MetadataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username, int userID, bool isVerified, String profilepicture});
}

/// @nodoc
class __$MetadataCopyWithImpl<$Res> extends _$MetadataCopyWithImpl<$Res>
    implements _$MetadataCopyWith<$Res> {
  __$MetadataCopyWithImpl(_Metadata _value, $Res Function(_Metadata) _then)
      : super(_value, (v) => _then(v as _Metadata));

  @override
  _Metadata get _value => super._value as _Metadata;

  @override
  $Res call({
    Object? username = freezed,
    Object? userID = freezed,
    Object? isVerified = freezed,
    Object? profilepicture = freezed,
  }) {
    return _then(_Metadata(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      profilepicture: profilepicture == freezed
          ? _value.profilepicture
          : profilepicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Metadata implements _Metadata {
  const _$_Metadata(
      {required this.username,
      required this.userID,
      required this.isVerified,
      required this.profilepicture});

  factory _$_Metadata.fromJson(Map<String, dynamic> json) =>
      _$$_MetadataFromJson(json);

  @override
  final String username;
  @override
  final int userID;
  @override
  final bool isVerified;
  @override
  final String profilepicture;

  @override
  String toString() {
    return 'Metadata(username: $username, userID: $userID, isVerified: $isVerified, profilepicture: $profilepicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Metadata &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.userID, userID) &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified) &&
            const DeepCollectionEquality()
                .equals(other.profilepicture, profilepicture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(userID),
      const DeepCollectionEquality().hash(isVerified),
      const DeepCollectionEquality().hash(profilepicture));

  @JsonKey(ignore: true)
  @override
  _$MetadataCopyWith<_Metadata> get copyWith =>
      __$MetadataCopyWithImpl<_Metadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetadataToJson(this);
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata(
      {required String username,
      required int userID,
      required bool isVerified,
      required String profilepicture}) = _$_Metadata;

  factory _Metadata.fromJson(Map<String, dynamic> json) = _$_Metadata.fromJson;

  @override
  String get username;
  @override
  int get userID;
  @override
  bool get isVerified;
  @override
  String get profilepicture;
  @override
  @JsonKey(ignore: true)
  _$MetadataCopyWith<_Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

SlideComments _$SlideCommentsFromJson(Map<String, dynamic> json) {
  return _SlideComments.fromJson(json);
}

/// @nodoc
class _$SlideCommentsTearOff {
  const _$SlideCommentsTearOff();

  _SlideComments call({required int count, required int commentID}) {
    return _SlideComments(
      count: count,
      commentID: commentID,
    );
  }

  SlideComments fromJson(Map<String, Object?> json) {
    return SlideComments.fromJson(json);
  }
}

/// @nodoc
const $SlideComments = _$SlideCommentsTearOff();

/// @nodoc
mixin _$SlideComments {
  int get count => throw _privateConstructorUsedError;
  int get commentID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlideCommentsCopyWith<SlideComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideCommentsCopyWith<$Res> {
  factory $SlideCommentsCopyWith(
          SlideComments value, $Res Function(SlideComments) then) =
      _$SlideCommentsCopyWithImpl<$Res>;
  $Res call({int count, int commentID});
}

/// @nodoc
class _$SlideCommentsCopyWithImpl<$Res>
    implements $SlideCommentsCopyWith<$Res> {
  _$SlideCommentsCopyWithImpl(this._value, this._then);

  final SlideComments _value;
  // ignore: unused_field
  final $Res Function(SlideComments) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? commentID = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      commentID: commentID == freezed
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SlideCommentsCopyWith<$Res>
    implements $SlideCommentsCopyWith<$Res> {
  factory _$SlideCommentsCopyWith(
          _SlideComments value, $Res Function(_SlideComments) then) =
      __$SlideCommentsCopyWithImpl<$Res>;
  @override
  $Res call({int count, int commentID});
}

/// @nodoc
class __$SlideCommentsCopyWithImpl<$Res>
    extends _$SlideCommentsCopyWithImpl<$Res>
    implements _$SlideCommentsCopyWith<$Res> {
  __$SlideCommentsCopyWithImpl(
      _SlideComments _value, $Res Function(_SlideComments) _then)
      : super(_value, (v) => _then(v as _SlideComments));

  @override
  _SlideComments get _value => super._value as _SlideComments;

  @override
  $Res call({
    Object? count = freezed,
    Object? commentID = freezed,
  }) {
    return _then(_SlideComments(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      commentID: commentID == freezed
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SlideComments implements _SlideComments {
  const _$_SlideComments({required this.count, required this.commentID});

  factory _$_SlideComments.fromJson(Map<String, dynamic> json) =>
      _$$_SlideCommentsFromJson(json);

  @override
  final int count;
  @override
  final int commentID;

  @override
  String toString() {
    return 'SlideComments(count: $count, commentID: $commentID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SlideComments &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.commentID, commentID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(commentID));

  @JsonKey(ignore: true)
  @override
  _$SlideCommentsCopyWith<_SlideComments> get copyWith =>
      __$SlideCommentsCopyWithImpl<_SlideComments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlideCommentsToJson(this);
  }
}

abstract class _SlideComments implements SlideComments {
  const factory _SlideComments({required int count, required int commentID}) =
      _$_SlideComments;

  factory _SlideComments.fromJson(Map<String, dynamic> json) =
      _$_SlideComments.fromJson;

  @override
  int get count;
  @override
  int get commentID;
  @override
  @JsonKey(ignore: true)
  _$SlideCommentsCopyWith<_SlideComments> get copyWith =>
      throw _privateConstructorUsedError;
}
