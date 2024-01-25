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
  int get code => throw _privateConstructorUsedError;
  List<Msg> get msg => throw _privateConstructorUsedError;

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
  $Res call({int code, List<Msg> msg});
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
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as List<Msg>,
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
  $Res call({int code, List<Msg> msg});
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
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_$_CommentListModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value._msg
          : msg // ignore: cast_nullable_to_non_nullable
              as List<Msg>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentListModel implements _CommentListModel {
  const _$_CommentListModel({required this.code, required final List<Msg> msg})
      : _msg = msg;

  factory _$_CommentListModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommentListModelFromJson(json);

  @override
  final int code;
  final List<Msg> _msg;
  @override
  List<Msg> get msg {
    if (_msg is EqualUnmodifiableListView) return _msg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_msg);
  }

  @override
  String toString() {
    return 'CommentListModel(code: $code, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentListModel &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._msg, _msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, const DeepCollectionEquality().hash(_msg));

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
      {required final int code,
      required final List<Msg> msg}) = _$_CommentListModel;

  factory _CommentListModel.fromJson(Map<String, dynamic> json) =
      _$_CommentListModel.fromJson;

  @override
  int get code;
  @override
  List<Msg> get msg;
  @override
  @JsonKey(ignore: true)
  _$$_CommentListModelCopyWith<_$_CommentListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentReply _$CommentReplyFromJson(Map<String, dynamic> json) {
  return _CommentReply.fromJson(json);
}

/// @nodoc
mixin _$CommentReply {
  int get count => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get replies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentReplyCopyWith<CommentReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentReplyCopyWith<$Res> {
  factory $CommentReplyCopyWith(
          CommentReply value, $Res Function(CommentReply) then) =
      _$CommentReplyCopyWithImpl<$Res, CommentReply>;
  @useResult
  $Res call({int count, List<Map<String, dynamic>>? replies});
}

/// @nodoc
class _$CommentReplyCopyWithImpl<$Res, $Val extends CommentReply>
    implements $CommentReplyCopyWith<$Res> {
  _$CommentReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? replies = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      replies: freezed == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentReplyCopyWith<$Res>
    implements $CommentReplyCopyWith<$Res> {
  factory _$$_CommentReplyCopyWith(
          _$_CommentReply value, $Res Function(_$_CommentReply) then) =
      __$$_CommentReplyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<Map<String, dynamic>>? replies});
}

/// @nodoc
class __$$_CommentReplyCopyWithImpl<$Res>
    extends _$CommentReplyCopyWithImpl<$Res, _$_CommentReply>
    implements _$$_CommentReplyCopyWith<$Res> {
  __$$_CommentReplyCopyWithImpl(
      _$_CommentReply _value, $Res Function(_$_CommentReply) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? replies = freezed,
  }) {
    return _then(_$_CommentReply(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      replies: freezed == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentReply implements _CommentReply {
  const _$_CommentReply(
      {required this.count, final List<Map<String, dynamic>>? replies})
      : _replies = replies;

  factory _$_CommentReply.fromJson(Map<String, dynamic> json) =>
      _$$_CommentReplyFromJson(json);

  @override
  final int count;
  final List<Map<String, dynamic>>? _replies;
  @override
  List<Map<String, dynamic>>? get replies {
    final value = _replies;
    if (value == null) return null;
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentReply(count: $count, replies: $replies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentReply &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentReplyCopyWith<_$_CommentReply> get copyWith =>
      __$$_CommentReplyCopyWithImpl<_$_CommentReply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentReplyToJson(
      this,
    );
  }
}

abstract class _CommentReply implements CommentReply {
  const factory _CommentReply(
      {required final int count,
      final List<Map<String, dynamic>>? replies}) = _$_CommentReply;

  factory _CommentReply.fromJson(Map<String, dynamic> json) =
      _$_CommentReply.fromJson;

  @override
  int get count;
  @override
  List<Map<String, dynamic>>? get replies;
  @override
  @JsonKey(ignore: true)
  _$$_CommentReplyCopyWith<_$_CommentReply> get copyWith =>
      throw _privateConstructorUsedError;
}

Msg _$MsgFromJson(Map<String, dynamic> json) {
  return _Msg.fromJson(json);
}

/// @nodoc
mixin _$Msg {
  String get id => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  CommentReply get commentReply => throw _privateConstructorUsedError;
  Commentlikes get commentlikes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgCopyWith<Msg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgCopyWith<$Res> {
  factory $MsgCopyWith(Msg value, $Res Function(Msg) then) =
      _$MsgCopyWithImpl<$Res, Msg>;
  @useResult
  $Res call(
      {String id,
      String comment,
      int likeCount,
      DateTime created,
      User user,
      CommentReply commentReply,
      Commentlikes commentlikes});

  $UserCopyWith<$Res> get user;
  $CommentReplyCopyWith<$Res> get commentReply;
  $CommentlikesCopyWith<$Res> get commentlikes;
}

/// @nodoc
class _$MsgCopyWithImpl<$Res, $Val extends Msg> implements $MsgCopyWith<$Res> {
  _$MsgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? likeCount = null,
    Object? created = null,
    Object? user = null,
    Object? commentReply = null,
    Object? commentlikes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      commentReply: null == commentReply
          ? _value.commentReply
          : commentReply // ignore: cast_nullable_to_non_nullable
              as CommentReply,
      commentlikes: null == commentlikes
          ? _value.commentlikes
          : commentlikes // ignore: cast_nullable_to_non_nullable
              as Commentlikes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentReplyCopyWith<$Res> get commentReply {
    return $CommentReplyCopyWith<$Res>(_value.commentReply, (value) {
      return _then(_value.copyWith(commentReply: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentlikesCopyWith<$Res> get commentlikes {
    return $CommentlikesCopyWith<$Res>(_value.commentlikes, (value) {
      return _then(_value.copyWith(commentlikes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MsgCopyWith<$Res> implements $MsgCopyWith<$Res> {
  factory _$$_MsgCopyWith(_$_Msg value, $Res Function(_$_Msg) then) =
      __$$_MsgCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String comment,
      int likeCount,
      DateTime created,
      User user,
      CommentReply commentReply,
      Commentlikes commentlikes});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $CommentReplyCopyWith<$Res> get commentReply;
  @override
  $CommentlikesCopyWith<$Res> get commentlikes;
}

/// @nodoc
class __$$_MsgCopyWithImpl<$Res> extends _$MsgCopyWithImpl<$Res, _$_Msg>
    implements _$$_MsgCopyWith<$Res> {
  __$$_MsgCopyWithImpl(_$_Msg _value, $Res Function(_$_Msg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? likeCount = null,
    Object? created = null,
    Object? user = null,
    Object? commentReply = null,
    Object? commentlikes = null,
  }) {
    return _then(_$_Msg(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      commentReply: null == commentReply
          ? _value.commentReply
          : commentReply // ignore: cast_nullable_to_non_nullable
              as CommentReply,
      commentlikes: null == commentlikes
          ? _value.commentlikes
          : commentlikes // ignore: cast_nullable_to_non_nullable
              as Commentlikes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Msg implements _Msg {
  const _$_Msg(
      {required this.id,
      required this.comment,
      required this.likeCount,
      required this.created,
      required this.user,
      required this.commentReply,
      required this.commentlikes});

  factory _$_Msg.fromJson(Map<String, dynamic> json) => _$$_MsgFromJson(json);

  @override
  final String id;
  @override
  final String comment;
  @override
  final int likeCount;
  @override
  final DateTime created;
  @override
  final User user;
  @override
  final CommentReply commentReply;
  @override
  final Commentlikes commentlikes;

  @override
  String toString() {
    return 'Msg(id: $id, comment: $comment, likeCount: $likeCount, created: $created, user: $user, commentReply: $commentReply, commentlikes: $commentlikes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Msg &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.commentReply, commentReply) ||
                other.commentReply == commentReply) &&
            (identical(other.commentlikes, commentlikes) ||
                other.commentlikes == commentlikes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, comment, likeCount, created,
      user, commentReply, commentlikes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MsgCopyWith<_$_Msg> get copyWith =>
      __$$_MsgCopyWithImpl<_$_Msg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgToJson(
      this,
    );
  }
}

abstract class _Msg implements Msg {
  const factory _Msg(
      {required final String id,
      required final String comment,
      required final int likeCount,
      required final DateTime created,
      required final User user,
      required final CommentReply commentReply,
      required final Commentlikes commentlikes}) = _$_Msg;

  factory _Msg.fromJson(Map<String, dynamic> json) = _$_Msg.fromJson;

  @override
  String get id;
  @override
  String get comment;
  @override
  int get likeCount;
  @override
  DateTime get created;
  @override
  User get user;
  @override
  CommentReply get commentReply;
  @override
  Commentlikes get commentlikes;
  @override
  @JsonKey(ignore: true)
  _$$_MsgCopyWith<_$_Msg> get copyWith => throw _privateConstructorUsedError;
}

Commentlikes _$CommentlikesFromJson(Map<String, dynamic> json) {
  return _Commentlikes.fromJson(json);
}

/// @nodoc
mixin _$Commentlikes {
  int get count => throw _privateConstructorUsedError;
  List<Like>? get like => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentlikesCopyWith<Commentlikes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentlikesCopyWith<$Res> {
  factory $CommentlikesCopyWith(
          Commentlikes value, $Res Function(Commentlikes) then) =
      _$CommentlikesCopyWithImpl<$Res, Commentlikes>;
  @useResult
  $Res call({int count, List<Like>? like});
}

/// @nodoc
class _$CommentlikesCopyWithImpl<$Res, $Val extends Commentlikes>
    implements $CommentlikesCopyWith<$Res> {
  _$CommentlikesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? like = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as List<Like>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentlikesCopyWith<$Res>
    implements $CommentlikesCopyWith<$Res> {
  factory _$$_CommentlikesCopyWith(
          _$_Commentlikes value, $Res Function(_$_Commentlikes) then) =
      __$$_CommentlikesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<Like>? like});
}

/// @nodoc
class __$$_CommentlikesCopyWithImpl<$Res>
    extends _$CommentlikesCopyWithImpl<$Res, _$_Commentlikes>
    implements _$$_CommentlikesCopyWith<$Res> {
  __$$_CommentlikesCopyWithImpl(
      _$_Commentlikes _value, $Res Function(_$_Commentlikes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? like = freezed,
  }) {
    return _then(_$_Commentlikes(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      like: freezed == like
          ? _value._like
          : like // ignore: cast_nullable_to_non_nullable
              as List<Like>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Commentlikes implements _Commentlikes {
  const _$_Commentlikes({required this.count, final List<Like>? like})
      : _like = like;

  factory _$_Commentlikes.fromJson(Map<String, dynamic> json) =>
      _$$_CommentlikesFromJson(json);

  @override
  final int count;
  final List<Like>? _like;
  @override
  List<Like>? get like {
    final value = _like;
    if (value == null) return null;
    if (_like is EqualUnmodifiableListView) return _like;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Commentlikes(count: $count, like: $like)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Commentlikes &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._like, _like));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_like));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentlikesCopyWith<_$_Commentlikes> get copyWith =>
      __$$_CommentlikesCopyWithImpl<_$_Commentlikes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentlikesToJson(
      this,
    );
  }
}

abstract class _Commentlikes implements Commentlikes {
  const factory _Commentlikes(
      {required final int count, final List<Like>? like}) = _$_Commentlikes;

  factory _Commentlikes.fromJson(Map<String, dynamic> json) =
      _$_Commentlikes.fromJson;

  @override
  int get count;
  @override
  List<Like>? get like;
  @override
  @JsonKey(ignore: true)
  _$$_CommentlikesCopyWith<_$_Commentlikes> get copyWith =>
      throw _privateConstructorUsedError;
}

Like _$LikeFromJson(Map<String, dynamic> json) {
  return _Like.fromJson(json);
}

/// @nodoc
mixin _$Like {
  String get id => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeCopyWith<Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCopyWith<$Res> {
  factory $LikeCopyWith(Like value, $Res Function(Like) then) =
      _$LikeCopyWithImpl<$Res, Like>;
  @useResult
  $Res call({String id, DateTime created, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LikeCopyWithImpl<$Res, $Val extends Like>
    implements $LikeCopyWith<$Res> {
  _$LikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LikeCopyWith<$Res> implements $LikeCopyWith<$Res> {
  factory _$$_LikeCopyWith(_$_Like value, $Res Function(_$_Like) then) =
      __$$_LikeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime created, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LikeCopyWithImpl<$Res> extends _$LikeCopyWithImpl<$Res, _$_Like>
    implements _$$_LikeCopyWith<$Res> {
  __$$_LikeCopyWithImpl(_$_Like _value, $Res Function(_$_Like) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? user = null,
  }) {
    return _then(_$_Like(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Like implements _Like {
  const _$_Like({required this.id, required this.created, required this.user});

  factory _$_Like.fromJson(Map<String, dynamic> json) => _$$_LikeFromJson(json);

  @override
  final String id;
  @override
  final DateTime created;
  @override
  final User user;

  @override
  String toString() {
    return 'Like(id: $id, created: $created, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Like &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikeCopyWith<_$_Like> get copyWith =>
      __$$_LikeCopyWithImpl<_$_Like>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikeToJson(
      this,
    );
  }
}

abstract class _Like implements Like {
  const factory _Like(
      {required final String id,
      required final DateTime created,
      required final User user}) = _$_Like;

  factory _Like.fromJson(Map<String, dynamic> json) = _$_Like.fromJson;

  @override
  String get id;
  @override
  DateTime get created;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_LikeCopyWith<_$_Like> get copyWith => throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get profilePicSmall => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String userName,
      String firstName,
      String lastName,
      String profilePicSmall});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? profilePicSmall = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicSmall: null == profilePicSmall
          ? _value.profilePicSmall
          : profilePicSmall // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userName,
      String firstName,
      String lastName,
      String profilePicSmall});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? profilePicSmall = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicSmall: null == profilePicSmall
          ? _value.profilePicSmall
          : profilePicSmall // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.userName,
      required this.firstName,
      required this.lastName,
      required this.profilePicSmall});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String userName;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String profilePicSmall;

  @override
  String toString() {
    return 'User(id: $id, userName: $userName, firstName: $firstName, lastName: $lastName, profilePicSmall: $profilePicSmall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.profilePicSmall, profilePicSmall) ||
                other.profilePicSmall == profilePicSmall));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userName, firstName, lastName, profilePicSmall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final String userName,
      required final String firstName,
      required final String lastName,
      required final String profilePicSmall}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get userName;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get profilePicSmall;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
