// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentListModel _$CommentListModelFromJson(Map<String, dynamic> json) {
  return _CommentListModel.fromJson(json);
}

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
      _$CommentListModelCopyWithImpl<$Res, CommentListModel>;
  @useResult
  $Res call({String status, List<CommentList> commentList});
}

/// @nodoc
class _$CommentListModelCopyWithImpl<$Res, $Val extends CommentListModel>
    implements $CommentListModelCopyWith<$Res> {
  _$CommentListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? commentList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: null == commentList
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentListModelCopyWith<$Res>
    implements $CommentListModelCopyWith<$Res> {
  factory _$$_CommentListModelCopyWith(
          _$_CommentListModel value, $Res Function(_$_CommentListModel) then) =
      __$$_CommentListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<CommentList> commentList});
}

/// @nodoc
class __$$_CommentListModelCopyWithImpl<$Res>
    extends _$CommentListModelCopyWithImpl<$Res, _$_CommentListModel>
    implements _$$_CommentListModelCopyWith<$Res> {
  __$$_CommentListModelCopyWithImpl(
      _$_CommentListModel _value, $Res Function(_$_CommentListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? commentList = null,
  }) {
    return _then(_$_CommentListModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: null == commentList
          ? _value._commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentListModel implements _CommentListModel {
  const _$_CommentListModel(
      {required this.status, required final List<CommentList> commentList})
      : _commentList = commentList;

  factory _$_CommentListModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommentListModelFromJson(json);

  @override
  final String status;
  final List<CommentList> _commentList;
  @override
  List<CommentList> get commentList {
    if (_commentList is EqualUnmodifiableListView) return _commentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentList);
  }

  @override
  String toString() {
    return 'CommentListModel(status: $status, commentList: $commentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentListModel &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._commentList, _commentList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_commentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentListModelCopyWith<_$_CommentListModel> get copyWith =>
      __$$_CommentListModelCopyWithImpl<_$_CommentListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentListModelToJson(
      this,
    );
  }
}

abstract class _CommentListModel implements CommentListModel {
  const factory _CommentListModel(
      {required final String status,
      required final List<CommentList> commentList}) = _$_CommentListModel;

  factory _CommentListModel.fromJson(Map<String, dynamic> json) =
      _$_CommentListModel.fromJson;

  @override
  String get status;
  @override
  List<CommentList> get commentList;
  @override
  @JsonKey(ignore: true)
  _$$_CommentListModelCopyWith<_$_CommentListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentList _$CommentListFromJson(Map<String, dynamic> json) {
  return _CommentList.fromJson(json);
}

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
      _$CommentListCopyWithImpl<$Res, CommentList>;
  @useResult
  $Res call(
      {String comment,
      String commentUser,
      String commentUserId,
      String commentedTime,
      String userPic,
      String commentLike});
}

/// @nodoc
class _$CommentListCopyWithImpl<$Res, $Val extends CommentList>
    implements $CommentListCopyWith<$Res> {
  _$CommentListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? commentUser = null,
    Object? commentUserId = null,
    Object? commentedTime = null,
    Object? userPic = null,
    Object? commentLike = null,
  }) {
    return _then(_value.copyWith(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      commentUser: null == commentUser
          ? _value.commentUser
          : commentUser // ignore: cast_nullable_to_non_nullable
              as String,
      commentUserId: null == commentUserId
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      commentedTime: null == commentedTime
          ? _value.commentedTime
          : commentedTime // ignore: cast_nullable_to_non_nullable
              as String,
      userPic: null == userPic
          ? _value.userPic
          : userPic // ignore: cast_nullable_to_non_nullable
              as String,
      commentLike: null == commentLike
          ? _value.commentLike
          : commentLike // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentListCopyWith<$Res>
    implements $CommentListCopyWith<$Res> {
  factory _$$_CommentListCopyWith(
          _$_CommentList value, $Res Function(_$_CommentList) then) =
      __$$_CommentListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String comment,
      String commentUser,
      String commentUserId,
      String commentedTime,
      String userPic,
      String commentLike});
}

/// @nodoc
class __$$_CommentListCopyWithImpl<$Res>
    extends _$CommentListCopyWithImpl<$Res, _$_CommentList>
    implements _$$_CommentListCopyWith<$Res> {
  __$$_CommentListCopyWithImpl(
      _$_CommentList _value, $Res Function(_$_CommentList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? commentUser = null,
    Object? commentUserId = null,
    Object? commentedTime = null,
    Object? userPic = null,
    Object? commentLike = null,
  }) {
    return _then(_$_CommentList(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      commentUser: null == commentUser
          ? _value.commentUser
          : commentUser // ignore: cast_nullable_to_non_nullable
              as String,
      commentUserId: null == commentUserId
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      commentedTime: null == commentedTime
          ? _value.commentedTime
          : commentedTime // ignore: cast_nullable_to_non_nullable
              as String,
      userPic: null == userPic
          ? _value.userPic
          : userPic // ignore: cast_nullable_to_non_nullable
              as String,
      commentLike: null == commentLike
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
            other is _$_CommentList &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentUser, commentUser) ||
                other.commentUser == commentUser) &&
            (identical(other.commentUserId, commentUserId) ||
                other.commentUserId == commentUserId) &&
            (identical(other.commentedTime, commentedTime) ||
                other.commentedTime == commentedTime) &&
            (identical(other.userPic, userPic) || other.userPic == userPic) &&
            (identical(other.commentLike, commentLike) ||
                other.commentLike == commentLike));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comment, commentUser,
      commentUserId, commentedTime, userPic, commentLike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentListCopyWith<_$_CommentList> get copyWith =>
      __$$_CommentListCopyWithImpl<_$_CommentList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentListToJson(
      this,
    );
  }
}

abstract class _CommentList implements CommentList {
  const factory _CommentList(
      {required final String comment,
      required final String commentUser,
      required final String commentUserId,
      required final String commentedTime,
      required final String userPic,
      required final String commentLike}) = _$_CommentList;

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
  _$$_CommentListCopyWith<_$_CommentList> get copyWith =>
      throw _privateConstructorUsedError;
}
