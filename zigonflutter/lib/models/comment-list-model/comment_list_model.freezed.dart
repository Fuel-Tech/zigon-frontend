// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentListModel _$CommentListModelFromJson(Map<String, dynamic> json) {
  return _CommentListModel.fromJson(json);
}

/// @nodoc
class _$CommentListModelTearOff {
  const _$CommentListModelTearOff();

  _CommentListModel call(
      {required String status, required List<CommentList> commentList}) {
    return _CommentListModel(
      status: status,
      commentList: commentList,
    );
  }

  CommentListModel fromJson(Map<String, Object?> json) {
    return CommentListModel.fromJson(json);
  }
}

/// @nodoc
const $CommentListModel = _$CommentListModelTearOff();

/// @nodoc
mixin _$CommentListModel {
  String get status => throw _privateConstructorUsedError;
  List<CommentList> get commentList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentListModelCopyWith<CommentListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentListModelCopyWith<$Res> {
  factory $CommentListModelCopyWith(
          CommentListModel value, $Res Function(CommentListModel) then) =
      _$CommentListModelCopyWithImpl<$Res>;
  $Res call({String status, List<CommentList> commentList});
}

/// @nodoc
class _$CommentListModelCopyWithImpl<$Res>
    implements $CommentListModelCopyWith<$Res> {
  _$CommentListModelCopyWithImpl(this._value, this._then);

  final CommentListModel _value;
  // ignore: unused_field
  final $Res Function(CommentListModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? commentList = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: commentList == freezed
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentList>,
    ));
  }
}

/// @nodoc
abstract class _$CommentListModelCopyWith<$Res>
    implements $CommentListModelCopyWith<$Res> {
  factory _$CommentListModelCopyWith(
          _CommentListModel value, $Res Function(_CommentListModel) then) =
      __$CommentListModelCopyWithImpl<$Res>;
  @override
  $Res call({String status, List<CommentList> commentList});
}

/// @nodoc
class __$CommentListModelCopyWithImpl<$Res>
    extends _$CommentListModelCopyWithImpl<$Res>
    implements _$CommentListModelCopyWith<$Res> {
  __$CommentListModelCopyWithImpl(
      _CommentListModel _value, $Res Function(_CommentListModel) _then)
      : super(_value, (v) => _then(v as _CommentListModel));

  @override
  _CommentListModel get _value => super._value as _CommentListModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? commentList = freezed,
  }) {
    return _then(_CommentListModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: commentList == freezed
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentListModel implements _CommentListModel {
  const _$_CommentListModel({required this.status, required this.commentList});

  factory _$_CommentListModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommentListModelFromJson(json);

  @override
  final String status;
  @override
  final List<CommentList> commentList;

  @override
  String toString() {
    return 'CommentListModel(status: $status, commentList: $commentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentListModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.commentList, commentList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(commentList));

  @JsonKey(ignore: true)
  @override
  _$CommentListModelCopyWith<_CommentListModel> get copyWith =>
      __$CommentListModelCopyWithImpl<_CommentListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentListModelToJson(this);
  }
}

abstract class _CommentListModel implements CommentListModel {
  const factory _CommentListModel(
      {required String status,
      required List<CommentList> commentList}) = _$_CommentListModel;

  factory _CommentListModel.fromJson(Map<String, dynamic> json) =
      _$_CommentListModel.fromJson;

  @override
  String get status;
  @override
  List<CommentList> get commentList;
  @override
  @JsonKey(ignore: true)
  _$CommentListModelCopyWith<_CommentListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentList _$CommentListFromJson(Map<String, dynamic> json) {
  return _CommentList.fromJson(json);
}

/// @nodoc
class _$CommentListTearOff {
  const _$CommentListTearOff();

  _CommentList call(
      {required String comment,
      required String commentUser,
      required String commentUserId,
      required String commentedTime,
      required String userPic,
      required String commentLike}) {
    return _CommentList(
      comment: comment,
      commentUser: commentUser,
      commentUserId: commentUserId,
      commentedTime: commentedTime,
      userPic: userPic,
      commentLike: commentLike,
    );
  }

  CommentList fromJson(Map<String, Object?> json) {
    return CommentList.fromJson(json);
  }
}

/// @nodoc
const $CommentList = _$CommentListTearOff();

/// @nodoc
mixin _$CommentList {
  String get comment => throw _privateConstructorUsedError;
  String get commentUser => throw _privateConstructorUsedError;
  String get commentUserId => throw _privateConstructorUsedError;
  String get commentedTime => throw _privateConstructorUsedError;
  String get userPic => throw _privateConstructorUsedError;
  String get commentLike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentListCopyWith<CommentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentListCopyWith<$Res> {
  factory $CommentListCopyWith(
          CommentList value, $Res Function(CommentList) then) =
      _$CommentListCopyWithImpl<$Res>;
  $Res call(
      {String comment,
      String commentUser,
      String commentUserId,
      String commentedTime,
      String userPic,
      String commentLike});
}

/// @nodoc
class _$CommentListCopyWithImpl<$Res> implements $CommentListCopyWith<$Res> {
  _$CommentListCopyWithImpl(this._value, this._then);

  final CommentList _value;
  // ignore: unused_field
  final $Res Function(CommentList) _then;

  @override
  $Res call({
    Object? comment = freezed,
    Object? commentUser = freezed,
    Object? commentUserId = freezed,
    Object? commentedTime = freezed,
    Object? userPic = freezed,
    Object? commentLike = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      commentUser: commentUser == freezed
          ? _value.commentUser
          : commentUser // ignore: cast_nullable_to_non_nullable
              as String,
      commentUserId: commentUserId == freezed
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      commentedTime: commentedTime == freezed
          ? _value.commentedTime
          : commentedTime // ignore: cast_nullable_to_non_nullable
              as String,
      userPic: userPic == freezed
          ? _value.userPic
          : userPic // ignore: cast_nullable_to_non_nullable
              as String,
      commentLike: commentLike == freezed
          ? _value.commentLike
          : commentLike // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CommentListCopyWith<$Res>
    implements $CommentListCopyWith<$Res> {
  factory _$CommentListCopyWith(
          _CommentList value, $Res Function(_CommentList) then) =
      __$CommentListCopyWithImpl<$Res>;
  @override
  $Res call(
      {String comment,
      String commentUser,
      String commentUserId,
      String commentedTime,
      String userPic,
      String commentLike});
}

/// @nodoc
class __$CommentListCopyWithImpl<$Res> extends _$CommentListCopyWithImpl<$Res>
    implements _$CommentListCopyWith<$Res> {
  __$CommentListCopyWithImpl(
      _CommentList _value, $Res Function(_CommentList) _then)
      : super(_value, (v) => _then(v as _CommentList));

  @override
  _CommentList get _value => super._value as _CommentList;

  @override
  $Res call({
    Object? comment = freezed,
    Object? commentUser = freezed,
    Object? commentUserId = freezed,
    Object? commentedTime = freezed,
    Object? userPic = freezed,
    Object? commentLike = freezed,
  }) {
    return _then(_CommentList(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      commentUser: commentUser == freezed
          ? _value.commentUser
          : commentUser // ignore: cast_nullable_to_non_nullable
              as String,
      commentUserId: commentUserId == freezed
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      commentedTime: commentedTime == freezed
          ? _value.commentedTime
          : commentedTime // ignore: cast_nullable_to_non_nullable
              as String,
      userPic: userPic == freezed
          ? _value.userPic
          : userPic // ignore: cast_nullable_to_non_nullable
              as String,
      commentLike: commentLike == freezed
          ? _value.commentLike
          : commentLike // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentList implements _CommentList {
  const _$_CommentList(
      {required this.comment,
      required this.commentUser,
      required this.commentUserId,
      required this.commentedTime,
      required this.userPic,
      required this.commentLike});

  factory _$_CommentList.fromJson(Map<String, dynamic> json) =>
      _$$_CommentListFromJson(json);

  @override
  final String comment;
  @override
  final String commentUser;
  @override
  final String commentUserId;
  @override
  final String commentedTime;
  @override
  final String userPic;
  @override
  final String commentLike;

  @override
  String toString() {
    return 'CommentList(comment: $comment, commentUser: $commentUser, commentUserId: $commentUserId, commentedTime: $commentedTime, userPic: $userPic, commentLike: $commentLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentList &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality()
                .equals(other.commentUser, commentUser) &&
            const DeepCollectionEquality()
                .equals(other.commentUserId, commentUserId) &&
            const DeepCollectionEquality()
                .equals(other.commentedTime, commentedTime) &&
            const DeepCollectionEquality().equals(other.userPic, userPic) &&
            const DeepCollectionEquality()
                .equals(other.commentLike, commentLike));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(commentUser),
      const DeepCollectionEquality().hash(commentUserId),
      const DeepCollectionEquality().hash(commentedTime),
      const DeepCollectionEquality().hash(userPic),
      const DeepCollectionEquality().hash(commentLike));

  @JsonKey(ignore: true)
  @override
  _$CommentListCopyWith<_CommentList> get copyWith =>
      __$CommentListCopyWithImpl<_CommentList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentListToJson(this);
  }
}

abstract class _CommentList implements CommentList {
  const factory _CommentList(
      {required String comment,
      required String commentUser,
      required String commentUserId,
      required String commentedTime,
      required String userPic,
      required String commentLike}) = _$_CommentList;

  factory _CommentList.fromJson(Map<String, dynamic> json) =
      _$_CommentList.fromJson;

  @override
  String get comment;
  @override
  String get commentUser;
  @override
  String get commentUserId;
  @override
  String get commentedTime;
  @override
  String get userPic;
  @override
  String get commentLike;
  @override
  @JsonKey(ignore: true)
  _$CommentListCopyWith<_CommentList> get copyWith =>
      throw _privateConstructorUsedError;
}
