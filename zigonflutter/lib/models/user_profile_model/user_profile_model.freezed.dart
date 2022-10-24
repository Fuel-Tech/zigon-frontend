// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
class _$UserProfileModelTearOff {
  const _$UserProfileModelTearOff();

  _UserProfileModel call({required int code, required Msg msg}) {
    return _UserProfileModel(
      code: code,
      msg: msg,
    );
  }

  UserProfileModel fromJson(Map<String, Object?> json) {
    return UserProfileModel.fromJson(json);
  }
}

/// @nodoc
const $UserProfileModel = _$UserProfileModelTearOff();

/// @nodoc
mixin _$UserProfileModel {
  int get code => throw _privateConstructorUsedError;
  Msg get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
          UserProfileModel value, $Res Function(UserProfileModel) then) =
      _$UserProfileModelCopyWithImpl<$Res>;
  $Res call({int code, Msg msg});

  $MsgCopyWith<$Res> get msg;
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

  final UserProfileModel _value;
  // ignore: unused_field
  final $Res Function(UserProfileModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as Msg,
    ));
  }

  @override
  $MsgCopyWith<$Res> get msg {
    return $MsgCopyWith<$Res>(_value.msg, (value) {
      return _then(_value.copyWith(msg: value));
    });
  }
}

/// @nodoc
abstract class _$UserProfileModelCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$UserProfileModelCopyWith(
          _UserProfileModel value, $Res Function(_UserProfileModel) then) =
      __$UserProfileModelCopyWithImpl<$Res>;
  @override
  $Res call({int code, Msg msg});

  @override
  $MsgCopyWith<$Res> get msg;
}

/// @nodoc
class __$UserProfileModelCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res>
    implements _$UserProfileModelCopyWith<$Res> {
  __$UserProfileModelCopyWithImpl(
      _UserProfileModel _value, $Res Function(_UserProfileModel) _then)
      : super(_value, (v) => _then(v as _UserProfileModel));

  @override
  _UserProfileModel get _value => super._value as _UserProfileModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
  }) {
    return _then(_UserProfileModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as Msg,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileModel implements _UserProfileModel {
  const _$_UserProfileModel({required this.code, required this.msg});

  factory _$_UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileModelFromJson(json);

  @override
  final int code;
  @override
  final Msg msg;

  @override
  String toString() {
    return 'UserProfileModel(code: $code, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$UserProfileModelCopyWith<_UserProfileModel> get copyWith =>
      __$UserProfileModelCopyWithImpl<_UserProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileModelToJson(this);
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel({required int code, required Msg msg}) =
      _$_UserProfileModel;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$_UserProfileModel.fromJson;

  @override
  int get code;
  @override
  Msg get msg;
  @override
  @JsonKey(ignore: true)
  _$UserProfileModelCopyWith<_UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Msg _$MsgFromJson(Map<String, dynamic> json) {
  return _Msg.fromJson(json);
}

/// @nodoc
class _$MsgTearOff {
  const _$MsgTearOff();

  _Msg call(
      {required User user,
      required PushNotification pushNotification,
      required PrivacySetting privacySetting}) {
    return _Msg(
      user: user,
      pushNotification: pushNotification,
      privacySetting: privacySetting,
    );
  }

  Msg fromJson(Map<String, Object?> json) {
    return Msg.fromJson(json);
  }
}

/// @nodoc
const $Msg = _$MsgTearOff();

/// @nodoc
mixin _$Msg {
  User get user => throw _privateConstructorUsedError;
  PushNotification get pushNotification => throw _privateConstructorUsedError;
  PrivacySetting get privacySetting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgCopyWith<Msg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgCopyWith<$Res> {
  factory $MsgCopyWith(Msg value, $Res Function(Msg) then) =
      _$MsgCopyWithImpl<$Res>;
  $Res call(
      {User user,
      PushNotification pushNotification,
      PrivacySetting privacySetting});

  $UserCopyWith<$Res> get user;
  $PushNotificationCopyWith<$Res> get pushNotification;
  $PrivacySettingCopyWith<$Res> get privacySetting;
}

/// @nodoc
class _$MsgCopyWithImpl<$Res> implements $MsgCopyWith<$Res> {
  _$MsgCopyWithImpl(this._value, this._then);

  final Msg _value;
  // ignore: unused_field
  final $Res Function(Msg) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? pushNotification = freezed,
    Object? privacySetting = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      pushNotification: pushNotification == freezed
          ? _value.pushNotification
          : pushNotification // ignore: cast_nullable_to_non_nullable
              as PushNotification,
      privacySetting: privacySetting == freezed
          ? _value.privacySetting
          : privacySetting // ignore: cast_nullable_to_non_nullable
              as PrivacySetting,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $PushNotificationCopyWith<$Res> get pushNotification {
    return $PushNotificationCopyWith<$Res>(_value.pushNotification, (value) {
      return _then(_value.copyWith(pushNotification: value));
    });
  }

  @override
  $PrivacySettingCopyWith<$Res> get privacySetting {
    return $PrivacySettingCopyWith<$Res>(_value.privacySetting, (value) {
      return _then(_value.copyWith(privacySetting: value));
    });
  }
}

/// @nodoc
abstract class _$MsgCopyWith<$Res> implements $MsgCopyWith<$Res> {
  factory _$MsgCopyWith(_Msg value, $Res Function(_Msg) then) =
      __$MsgCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      PushNotification pushNotification,
      PrivacySetting privacySetting});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $PushNotificationCopyWith<$Res> get pushNotification;
  @override
  $PrivacySettingCopyWith<$Res> get privacySetting;
}

/// @nodoc
class __$MsgCopyWithImpl<$Res> extends _$MsgCopyWithImpl<$Res>
    implements _$MsgCopyWith<$Res> {
  __$MsgCopyWithImpl(_Msg _value, $Res Function(_Msg) _then)
      : super(_value, (v) => _then(v as _Msg));

  @override
  _Msg get _value => super._value as _Msg;

  @override
  $Res call({
    Object? user = freezed,
    Object? pushNotification = freezed,
    Object? privacySetting = freezed,
  }) {
    return _then(_Msg(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      pushNotification: pushNotification == freezed
          ? _value.pushNotification
          : pushNotification // ignore: cast_nullable_to_non_nullable
              as PushNotification,
      privacySetting: privacySetting == freezed
          ? _value.privacySetting
          : privacySetting // ignore: cast_nullable_to_non_nullable
              as PrivacySetting,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Msg implements _Msg {
  const _$_Msg(
      {required this.user,
      required this.pushNotification,
      required this.privacySetting});

  factory _$_Msg.fromJson(Map<String, dynamic> json) => _$$_MsgFromJson(json);

  @override
  final User user;
  @override
  final PushNotification pushNotification;
  @override
  final PrivacySetting privacySetting;

  @override
  String toString() {
    return 'Msg(user: $user, pushNotification: $pushNotification, privacySetting: $privacySetting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Msg &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.pushNotification, pushNotification) &&
            const DeepCollectionEquality()
                .equals(other.privacySetting, privacySetting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(pushNotification),
      const DeepCollectionEquality().hash(privacySetting));

  @JsonKey(ignore: true)
  @override
  _$MsgCopyWith<_Msg> get copyWith =>
      __$MsgCopyWithImpl<_Msg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgToJson(this);
  }
}

abstract class _Msg implements Msg {
  const factory _Msg(
      {required User user,
      required PushNotification pushNotification,
      required PrivacySetting privacySetting}) = _$_Msg;

  factory _Msg.fromJson(Map<String, dynamic> json) = _$_Msg.fromJson;

  @override
  User get user;
  @override
  PushNotification get pushNotification;
  @override
  PrivacySetting get privacySetting;
  @override
  @JsonKey(ignore: true)
  _$MsgCopyWith<_Msg> get copyWith => throw _privateConstructorUsedError;
}

PrivacySetting _$PrivacySettingFromJson(Map<String, dynamic> json) {
  return _PrivacySetting.fromJson(json);
}

/// @nodoc
class _$PrivacySettingTearOff {
  const _$PrivacySettingTearOff();

  _PrivacySetting call(
      {required String id,
      required String videosDownload,
      required String directMessage,
      required String duet,
      required String likedVideos,
      required String videoComment}) {
    return _PrivacySetting(
      id: id,
      videosDownload: videosDownload,
      directMessage: directMessage,
      duet: duet,
      likedVideos: likedVideos,
      videoComment: videoComment,
    );
  }

  PrivacySetting fromJson(Map<String, Object?> json) {
    return PrivacySetting.fromJson(json);
  }
}

/// @nodoc
const $PrivacySetting = _$PrivacySettingTearOff();

/// @nodoc
mixin _$PrivacySetting {
  String get id => throw _privateConstructorUsedError;
  String get videosDownload => throw _privateConstructorUsedError;
  String get directMessage => throw _privateConstructorUsedError;
  String get duet => throw _privateConstructorUsedError;
  String get likedVideos => throw _privateConstructorUsedError;
  String get videoComment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivacySettingCopyWith<PrivacySetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacySettingCopyWith<$Res> {
  factory $PrivacySettingCopyWith(
          PrivacySetting value, $Res Function(PrivacySetting) then) =
      _$PrivacySettingCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String videosDownload,
      String directMessage,
      String duet,
      String likedVideos,
      String videoComment});
}

/// @nodoc
class _$PrivacySettingCopyWithImpl<$Res>
    implements $PrivacySettingCopyWith<$Res> {
  _$PrivacySettingCopyWithImpl(this._value, this._then);

  final PrivacySetting _value;
  // ignore: unused_field
  final $Res Function(PrivacySetting) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? videosDownload = freezed,
    Object? directMessage = freezed,
    Object? duet = freezed,
    Object? likedVideos = freezed,
    Object? videoComment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      videosDownload: videosDownload == freezed
          ? _value.videosDownload
          : videosDownload // ignore: cast_nullable_to_non_nullable
              as String,
      directMessage: directMessage == freezed
          ? _value.directMessage
          : directMessage // ignore: cast_nullable_to_non_nullable
              as String,
      duet: duet == freezed
          ? _value.duet
          : duet // ignore: cast_nullable_to_non_nullable
              as String,
      likedVideos: likedVideos == freezed
          ? _value.likedVideos
          : likedVideos // ignore: cast_nullable_to_non_nullable
              as String,
      videoComment: videoComment == freezed
          ? _value.videoComment
          : videoComment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PrivacySettingCopyWith<$Res>
    implements $PrivacySettingCopyWith<$Res> {
  factory _$PrivacySettingCopyWith(
          _PrivacySetting value, $Res Function(_PrivacySetting) then) =
      __$PrivacySettingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String videosDownload,
      String directMessage,
      String duet,
      String likedVideos,
      String videoComment});
}

/// @nodoc
class __$PrivacySettingCopyWithImpl<$Res>
    extends _$PrivacySettingCopyWithImpl<$Res>
    implements _$PrivacySettingCopyWith<$Res> {
  __$PrivacySettingCopyWithImpl(
      _PrivacySetting _value, $Res Function(_PrivacySetting) _then)
      : super(_value, (v) => _then(v as _PrivacySetting));

  @override
  _PrivacySetting get _value => super._value as _PrivacySetting;

  @override
  $Res call({
    Object? id = freezed,
    Object? videosDownload = freezed,
    Object? directMessage = freezed,
    Object? duet = freezed,
    Object? likedVideos = freezed,
    Object? videoComment = freezed,
  }) {
    return _then(_PrivacySetting(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      videosDownload: videosDownload == freezed
          ? _value.videosDownload
          : videosDownload // ignore: cast_nullable_to_non_nullable
              as String,
      directMessage: directMessage == freezed
          ? _value.directMessage
          : directMessage // ignore: cast_nullable_to_non_nullable
              as String,
      duet: duet == freezed
          ? _value.duet
          : duet // ignore: cast_nullable_to_non_nullable
              as String,
      likedVideos: likedVideos == freezed
          ? _value.likedVideos
          : likedVideos // ignore: cast_nullable_to_non_nullable
              as String,
      videoComment: videoComment == freezed
          ? _value.videoComment
          : videoComment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrivacySetting implements _PrivacySetting {
  const _$_PrivacySetting(
      {required this.id,
      required this.videosDownload,
      required this.directMessage,
      required this.duet,
      required this.likedVideos,
      required this.videoComment});

  factory _$_PrivacySetting.fromJson(Map<String, dynamic> json) =>
      _$$_PrivacySettingFromJson(json);

  @override
  final String id;
  @override
  final String videosDownload;
  @override
  final String directMessage;
  @override
  final String duet;
  @override
  final String likedVideos;
  @override
  final String videoComment;

  @override
  String toString() {
    return 'PrivacySetting(id: $id, videosDownload: $videosDownload, directMessage: $directMessage, duet: $duet, likedVideos: $likedVideos, videoComment: $videoComment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrivacySetting &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.videosDownload, videosDownload) &&
            const DeepCollectionEquality()
                .equals(other.directMessage, directMessage) &&
            const DeepCollectionEquality().equals(other.duet, duet) &&
            const DeepCollectionEquality()
                .equals(other.likedVideos, likedVideos) &&
            const DeepCollectionEquality()
                .equals(other.videoComment, videoComment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(videosDownload),
      const DeepCollectionEquality().hash(directMessage),
      const DeepCollectionEquality().hash(duet),
      const DeepCollectionEquality().hash(likedVideos),
      const DeepCollectionEquality().hash(videoComment));

  @JsonKey(ignore: true)
  @override
  _$PrivacySettingCopyWith<_PrivacySetting> get copyWith =>
      __$PrivacySettingCopyWithImpl<_PrivacySetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrivacySettingToJson(this);
  }
}

abstract class _PrivacySetting implements PrivacySetting {
  const factory _PrivacySetting(
      {required String id,
      required String videosDownload,
      required String directMessage,
      required String duet,
      required String likedVideos,
      required String videoComment}) = _$_PrivacySetting;

  factory _PrivacySetting.fromJson(Map<String, dynamic> json) =
      _$_PrivacySetting.fromJson;

  @override
  String get id;
  @override
  String get videosDownload;
  @override
  String get directMessage;
  @override
  String get duet;
  @override
  String get likedVideos;
  @override
  String get videoComment;
  @override
  @JsonKey(ignore: true)
  _$PrivacySettingCopyWith<_PrivacySetting> get copyWith =>
      throw _privateConstructorUsedError;
}

PushNotification _$PushNotificationFromJson(Map<String, dynamic> json) {
  return _PushNotification.fromJson(json);
}

/// @nodoc
class _$PushNotificationTearOff {
  const _$PushNotificationTearOff();

  _PushNotification call(
      {required String id,
      required String likes,
      required String comments,
      required String newFollowers,
      required String mentions,
      required String directMessages,
      required String videoUpdates}) {
    return _PushNotification(
      id: id,
      likes: likes,
      comments: comments,
      newFollowers: newFollowers,
      mentions: mentions,
      directMessages: directMessages,
      videoUpdates: videoUpdates,
    );
  }

  PushNotification fromJson(Map<String, Object?> json) {
    return PushNotification.fromJson(json);
  }
}

/// @nodoc
const $PushNotification = _$PushNotificationTearOff();

/// @nodoc
mixin _$PushNotification {
  String get id => throw _privateConstructorUsedError;
  String get likes => throw _privateConstructorUsedError;
  String get comments => throw _privateConstructorUsedError;
  String get newFollowers => throw _privateConstructorUsedError;
  String get mentions => throw _privateConstructorUsedError;
  String get directMessages => throw _privateConstructorUsedError;
  String get videoUpdates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushNotificationCopyWith<PushNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationCopyWith<$Res> {
  factory $PushNotificationCopyWith(
          PushNotification value, $Res Function(PushNotification) then) =
      _$PushNotificationCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String likes,
      String comments,
      String newFollowers,
      String mentions,
      String directMessages,
      String videoUpdates});
}

/// @nodoc
class _$PushNotificationCopyWithImpl<$Res>
    implements $PushNotificationCopyWith<$Res> {
  _$PushNotificationCopyWithImpl(this._value, this._then);

  final PushNotification _value;
  // ignore: unused_field
  final $Res Function(PushNotification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? newFollowers = freezed,
    Object? mentions = freezed,
    Object? directMessages = freezed,
    Object? videoUpdates = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      newFollowers: newFollowers == freezed
          ? _value.newFollowers
          : newFollowers // ignore: cast_nullable_to_non_nullable
              as String,
      mentions: mentions == freezed
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as String,
      directMessages: directMessages == freezed
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as String,
      videoUpdates: videoUpdates == freezed
          ? _value.videoUpdates
          : videoUpdates // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PushNotificationCopyWith<$Res>
    implements $PushNotificationCopyWith<$Res> {
  factory _$PushNotificationCopyWith(
          _PushNotification value, $Res Function(_PushNotification) then) =
      __$PushNotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String likes,
      String comments,
      String newFollowers,
      String mentions,
      String directMessages,
      String videoUpdates});
}

/// @nodoc
class __$PushNotificationCopyWithImpl<$Res>
    extends _$PushNotificationCopyWithImpl<$Res>
    implements _$PushNotificationCopyWith<$Res> {
  __$PushNotificationCopyWithImpl(
      _PushNotification _value, $Res Function(_PushNotification) _then)
      : super(_value, (v) => _then(v as _PushNotification));

  @override
  _PushNotification get _value => super._value as _PushNotification;

  @override
  $Res call({
    Object? id = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? newFollowers = freezed,
    Object? mentions = freezed,
    Object? directMessages = freezed,
    Object? videoUpdates = freezed,
  }) {
    return _then(_PushNotification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      newFollowers: newFollowers == freezed
          ? _value.newFollowers
          : newFollowers // ignore: cast_nullable_to_non_nullable
              as String,
      mentions: mentions == freezed
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as String,
      directMessages: directMessages == freezed
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as String,
      videoUpdates: videoUpdates == freezed
          ? _value.videoUpdates
          : videoUpdates // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PushNotification implements _PushNotification {
  const _$_PushNotification(
      {required this.id,
      required this.likes,
      required this.comments,
      required this.newFollowers,
      required this.mentions,
      required this.directMessages,
      required this.videoUpdates});

  factory _$_PushNotification.fromJson(Map<String, dynamic> json) =>
      _$$_PushNotificationFromJson(json);

  @override
  final String id;
  @override
  final String likes;
  @override
  final String comments;
  @override
  final String newFollowers;
  @override
  final String mentions;
  @override
  final String directMessages;
  @override
  final String videoUpdates;

  @override
  String toString() {
    return 'PushNotification(id: $id, likes: $likes, comments: $comments, newFollowers: $newFollowers, mentions: $mentions, directMessages: $directMessages, videoUpdates: $videoUpdates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PushNotification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            const DeepCollectionEquality()
                .equals(other.newFollowers, newFollowers) &&
            const DeepCollectionEquality().equals(other.mentions, mentions) &&
            const DeepCollectionEquality()
                .equals(other.directMessages, directMessages) &&
            const DeepCollectionEquality()
                .equals(other.videoUpdates, videoUpdates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(comments),
      const DeepCollectionEquality().hash(newFollowers),
      const DeepCollectionEquality().hash(mentions),
      const DeepCollectionEquality().hash(directMessages),
      const DeepCollectionEquality().hash(videoUpdates));

  @JsonKey(ignore: true)
  @override
  _$PushNotificationCopyWith<_PushNotification> get copyWith =>
      __$PushNotificationCopyWithImpl<_PushNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushNotificationToJson(this);
  }
}

abstract class _PushNotification implements PushNotification {
  const factory _PushNotification(
      {required String id,
      required String likes,
      required String comments,
      required String newFollowers,
      required String mentions,
      required String directMessages,
      required String videoUpdates}) = _$_PushNotification;

  factory _PushNotification.fromJson(Map<String, dynamic> json) =
      _$_PushNotification.fromJson;

  @override
  String get id;
  @override
  String get likes;
  @override
  String get comments;
  @override
  String get newFollowers;
  @override
  String get mentions;
  @override
  String get directMessages;
  @override
  String get videoUpdates;
  @override
  @JsonKey(ignore: true)
  _$PushNotificationCopyWith<_PushNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String id,
      required String firstName,
      required String lastName,
      required String gender,
      required String bio,
      required String website,
      required String dob,
      required String socialId,
      required String email,
      required String phone,
      required String password,
      required String profilePic,
      required String profilePicSmall,
      required String role,
      required String username,
      required String social,
      required String deviceToken,
      required String token,
      required String active,
      required String lat,
      required String long,
      required String online,
      required String verified,
      required String authToken,
      required String version,
      required String device,
      required String ip,
      required String city,
      required String country,
      required String cityId,
      required String stateId,
      required String countryId,
      required String wallet,
      required String paypal,
      required String resetWalletDatetime,
      required String fbId,
      required DateTime created}) {
    return _User(
      id: id,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      bio: bio,
      website: website,
      dob: dob,
      socialId: socialId,
      email: email,
      phone: phone,
      password: password,
      profilePic: profilePic,
      profilePicSmall: profilePicSmall,
      role: role,
      username: username,
      social: social,
      deviceToken: deviceToken,
      token: token,
      active: active,
      lat: lat,
      long: long,
      online: online,
      verified: verified,
      authToken: authToken,
      version: version,
      device: device,
      ip: ip,
      city: city,
      country: country,
      cityId: cityId,
      stateId: stateId,
      countryId: countryId,
      wallet: wallet,
      paypal: paypal,
      resetWalletDatetime: resetWalletDatetime,
      fbId: fbId,
      created: created,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String get socialId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get profilePic => throw _privateConstructorUsedError;
  String get profilePicSmall => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get social => throw _privateConstructorUsedError;
  String get deviceToken => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get active => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get long => throw _privateConstructorUsedError;
  String get online => throw _privateConstructorUsedError;
  String get verified => throw _privateConstructorUsedError;
  String get authToken => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;
  String get ip => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  String get stateId => throw _privateConstructorUsedError;
  String get countryId => throw _privateConstructorUsedError;
  String get wallet => throw _privateConstructorUsedError;
  String get paypal => throw _privateConstructorUsedError;
  String get resetWalletDatetime => throw _privateConstructorUsedError;
  String get fbId => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String gender,
      String bio,
      String website,
      String dob,
      String socialId,
      String email,
      String phone,
      String password,
      String profilePic,
      String profilePicSmall,
      String role,
      String username,
      String social,
      String deviceToken,
      String token,
      String active,
      String lat,
      String long,
      String online,
      String verified,
      String authToken,
      String version,
      String device,
      String ip,
      String city,
      String country,
      String cityId,
      String stateId,
      String countryId,
      String wallet,
      String paypal,
      String resetWalletDatetime,
      String fbId,
      DateTime created});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? bio = freezed,
    Object? website = freezed,
    Object? dob = freezed,
    Object? socialId = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? profilePic = freezed,
    Object? profilePicSmall = freezed,
    Object? role = freezed,
    Object? username = freezed,
    Object? social = freezed,
    Object? deviceToken = freezed,
    Object? token = freezed,
    Object? active = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? online = freezed,
    Object? verified = freezed,
    Object? authToken = freezed,
    Object? version = freezed,
    Object? device = freezed,
    Object? ip = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? cityId = freezed,
    Object? stateId = freezed,
    Object? countryId = freezed,
    Object? wallet = freezed,
    Object? paypal = freezed,
    Object? resetWalletDatetime = freezed,
    Object? fbId = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      socialId: socialId == freezed
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: profilePic == freezed
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicSmall: profilePicSmall == freezed
          ? _value.profilePicSmall
          : profilePicSmall // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      social: social == freezed
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as String,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as String,
      authToken: authToken == freezed
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      ip: ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as String,
      paypal: paypal == freezed
          ? _value.paypal
          : paypal // ignore: cast_nullable_to_non_nullable
              as String,
      resetWalletDatetime: resetWalletDatetime == freezed
          ? _value.resetWalletDatetime
          : resetWalletDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      fbId: fbId == freezed
          ? _value.fbId
          : fbId // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String gender,
      String bio,
      String website,
      String dob,
      String socialId,
      String email,
      String phone,
      String password,
      String profilePic,
      String profilePicSmall,
      String role,
      String username,
      String social,
      String deviceToken,
      String token,
      String active,
      String lat,
      String long,
      String online,
      String verified,
      String authToken,
      String version,
      String device,
      String ip,
      String city,
      String country,
      String cityId,
      String stateId,
      String countryId,
      String wallet,
      String paypal,
      String resetWalletDatetime,
      String fbId,
      DateTime created});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? bio = freezed,
    Object? website = freezed,
    Object? dob = freezed,
    Object? socialId = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? profilePic = freezed,
    Object? profilePicSmall = freezed,
    Object? role = freezed,
    Object? username = freezed,
    Object? social = freezed,
    Object? deviceToken = freezed,
    Object? token = freezed,
    Object? active = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? online = freezed,
    Object? verified = freezed,
    Object? authToken = freezed,
    Object? version = freezed,
    Object? device = freezed,
    Object? ip = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? cityId = freezed,
    Object? stateId = freezed,
    Object? countryId = freezed,
    Object? wallet = freezed,
    Object? paypal = freezed,
    Object? resetWalletDatetime = freezed,
    Object? fbId = freezed,
    Object? created = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      socialId: socialId == freezed
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: profilePic == freezed
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicSmall: profilePicSmall == freezed
          ? _value.profilePicSmall
          : profilePicSmall // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      social: social == freezed
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as String,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as String,
      authToken: authToken == freezed
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      ip: ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as String,
      paypal: paypal == freezed
          ? _value.paypal
          : paypal // ignore: cast_nullable_to_non_nullable
              as String,
      resetWalletDatetime: resetWalletDatetime == freezed
          ? _value.resetWalletDatetime
          : resetWalletDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      fbId: fbId == freezed
          ? _value.fbId
          : fbId // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.bio,
      required this.website,
      required this.dob,
      required this.socialId,
      required this.email,
      required this.phone,
      required this.password,
      required this.profilePic,
      required this.profilePicSmall,
      required this.role,
      required this.username,
      required this.social,
      required this.deviceToken,
      required this.token,
      required this.active,
      required this.lat,
      required this.long,
      required this.online,
      required this.verified,
      required this.authToken,
      required this.version,
      required this.device,
      required this.ip,
      required this.city,
      required this.country,
      required this.cityId,
      required this.stateId,
      required this.countryId,
      required this.wallet,
      required this.paypal,
      required this.resetWalletDatetime,
      required this.fbId,
      required this.created});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String gender;
  @override
  final String bio;
  @override
  final String website;
  @override
  final String dob;
  @override
  final String socialId;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String password;
  @override
  final String profilePic;
  @override
  final String profilePicSmall;
  @override
  final String role;
  @override
  final String username;
  @override
  final String social;
  @override
  final String deviceToken;
  @override
  final String token;
  @override
  final String active;
  @override
  final String lat;
  @override
  final String long;
  @override
  final String online;
  @override
  final String verified;
  @override
  final String authToken;
  @override
  final String version;
  @override
  final String device;
  @override
  final String ip;
  @override
  final String city;
  @override
  final String country;
  @override
  final String cityId;
  @override
  final String stateId;
  @override
  final String countryId;
  @override
  final String wallet;
  @override
  final String paypal;
  @override
  final String resetWalletDatetime;
  @override
  final String fbId;
  @override
  final DateTime created;

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, gender: $gender, bio: $bio, website: $website, dob: $dob, socialId: $socialId, email: $email, phone: $phone, password: $password, profilePic: $profilePic, profilePicSmall: $profilePicSmall, role: $role, username: $username, social: $social, deviceToken: $deviceToken, token: $token, active: $active, lat: $lat, long: $long, online: $online, verified: $verified, authToken: $authToken, version: $version, device: $device, ip: $ip, city: $city, country: $country, cityId: $cityId, stateId: $stateId, countryId: $countryId, wallet: $wallet, paypal: $paypal, resetWalletDatetime: $resetWalletDatetime, fbId: $fbId, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.socialId, socialId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.profilePic, profilePic) &&
            const DeepCollectionEquality()
                .equals(other.profilePicSmall, profilePicSmall) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.social, social) &&
            const DeepCollectionEquality()
                .equals(other.deviceToken, deviceToken) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long) &&
            const DeepCollectionEquality().equals(other.online, online) &&
            const DeepCollectionEquality().equals(other.verified, verified) &&
            const DeepCollectionEquality().equals(other.authToken, authToken) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.device, device) &&
            const DeepCollectionEquality().equals(other.ip, ip) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            const DeepCollectionEquality().equals(other.wallet, wallet) &&
            const DeepCollectionEquality().equals(other.paypal, paypal) &&
            const DeepCollectionEquality()
                .equals(other.resetWalletDatetime, resetWalletDatetime) &&
            const DeepCollectionEquality().equals(other.fbId, fbId) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(firstName),
        const DeepCollectionEquality().hash(lastName),
        const DeepCollectionEquality().hash(gender),
        const DeepCollectionEquality().hash(bio),
        const DeepCollectionEquality().hash(website),
        const DeepCollectionEquality().hash(dob),
        const DeepCollectionEquality().hash(socialId),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(phone),
        const DeepCollectionEquality().hash(password),
        const DeepCollectionEquality().hash(profilePic),
        const DeepCollectionEquality().hash(profilePicSmall),
        const DeepCollectionEquality().hash(role),
        const DeepCollectionEquality().hash(username),
        const DeepCollectionEquality().hash(social),
        const DeepCollectionEquality().hash(deviceToken),
        const DeepCollectionEquality().hash(token),
        const DeepCollectionEquality().hash(active),
        const DeepCollectionEquality().hash(lat),
        const DeepCollectionEquality().hash(long),
        const DeepCollectionEquality().hash(online),
        const DeepCollectionEquality().hash(verified),
        const DeepCollectionEquality().hash(authToken),
        const DeepCollectionEquality().hash(version),
        const DeepCollectionEquality().hash(device),
        const DeepCollectionEquality().hash(ip),
        const DeepCollectionEquality().hash(city),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(cityId),
        const DeepCollectionEquality().hash(stateId),
        const DeepCollectionEquality().hash(countryId),
        const DeepCollectionEquality().hash(wallet),
        const DeepCollectionEquality().hash(paypal),
        const DeepCollectionEquality().hash(resetWalletDatetime),
        const DeepCollectionEquality().hash(fbId),
        const DeepCollectionEquality().hash(created)
      ]);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required String id,
      required String firstName,
      required String lastName,
      required String gender,
      required String bio,
      required String website,
      required String dob,
      required String socialId,
      required String email,
      required String phone,
      required String password,
      required String profilePic,
      required String profilePicSmall,
      required String role,
      required String username,
      required String social,
      required String deviceToken,
      required String token,
      required String active,
      required String lat,
      required String long,
      required String online,
      required String verified,
      required String authToken,
      required String version,
      required String device,
      required String ip,
      required String city,
      required String country,
      required String cityId,
      required String stateId,
      required String countryId,
      required String wallet,
      required String paypal,
      required String resetWalletDatetime,
      required String fbId,
      required DateTime created}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get gender;
  @override
  String get bio;
  @override
  String get website;
  @override
  String get dob;
  @override
  String get socialId;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get password;
  @override
  String get profilePic;
  @override
  String get profilePicSmall;
  @override
  String get role;
  @override
  String get username;
  @override
  String get social;
  @override
  String get deviceToken;
  @override
  String get token;
  @override
  String get active;
  @override
  String get lat;
  @override
  String get long;
  @override
  String get online;
  @override
  String get verified;
  @override
  String get authToken;
  @override
  String get version;
  @override
  String get device;
  @override
  String get ip;
  @override
  String get city;
  @override
  String get country;
  @override
  String get cityId;
  @override
  String get stateId;
  @override
  String get countryId;
  @override
  String get wallet;
  @override
  String get paypal;
  @override
  String get resetWalletDatetime;
  @override
  String get fbId;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
