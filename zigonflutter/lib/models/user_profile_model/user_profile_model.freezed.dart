// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

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
      _$UserProfileModelCopyWithImpl<$Res, UserProfileModel>;
  @useResult
  $Res call({int code, Msg msg});

  $MsgCopyWith<$Res> get msg;
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res, $Val extends UserProfileModel>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

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
              as Msg,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MsgCopyWith<$Res> get msg {
    return $MsgCopyWith<$Res>(_value.msg, (value) {
      return _then(_value.copyWith(msg: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserProfileModelCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$$_UserProfileModelCopyWith(
          _$_UserProfileModel value, $Res Function(_$_UserProfileModel) then) =
      __$$_UserProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, Msg msg});

  @override
  $MsgCopyWith<$Res> get msg;
}

/// @nodoc
class __$$_UserProfileModelCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res, _$_UserProfileModel>
    implements _$$_UserProfileModelCopyWith<$Res> {
  __$$_UserProfileModelCopyWithImpl(
      _$_UserProfileModel _value, $Res Function(_$_UserProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_$_UserProfileModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
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
            other is _$_UserProfileModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileModelCopyWith<_$_UserProfileModel> get copyWith =>
      __$$_UserProfileModelCopyWithImpl<_$_UserProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileModelToJson(
      this,
    );
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel(
      {required final int code, required final Msg msg}) = _$_UserProfileModel;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$_UserProfileModel.fromJson;

  @override
  int get code;
  @override
  Msg get msg;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileModelCopyWith<_$_UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Msg _$MsgFromJson(Map<String, dynamic> json) {
  return _Msg.fromJson(json);
}

/// @nodoc
mixin _$Msg {
  Users get User => throw _privateConstructorUsedError;
  PushNotifications get PushNotification => throw _privateConstructorUsedError;
  PrivacySettings get PrivacySetting => throw _privateConstructorUsedError;

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
      {Users User,
      PushNotifications PushNotification,
      PrivacySettings PrivacySetting});

  $UsersCopyWith<$Res> get User;
  $PushNotificationsCopyWith<$Res> get PushNotification;
  $PrivacySettingsCopyWith<$Res> get PrivacySetting;
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
    Object? User = null,
    Object? PushNotification = null,
    Object? PrivacySetting = null,
  }) {
    return _then(_value.copyWith(
      User: null == User
          ? _value.User
          : User // ignore: cast_nullable_to_non_nullable
              as Users,
      PushNotification: null == PushNotification
          ? _value.PushNotification
          : PushNotification // ignore: cast_nullable_to_non_nullable
              as PushNotifications,
      PrivacySetting: null == PrivacySetting
          ? _value.PrivacySetting
          : PrivacySetting // ignore: cast_nullable_to_non_nullable
              as PrivacySettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsersCopyWith<$Res> get User {
    return $UsersCopyWith<$Res>(_value.User, (value) {
      return _then(_value.copyWith(User: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PushNotificationsCopyWith<$Res> get PushNotification {
    return $PushNotificationsCopyWith<$Res>(_value.PushNotification, (value) {
      return _then(_value.copyWith(PushNotification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrivacySettingsCopyWith<$Res> get PrivacySetting {
    return $PrivacySettingsCopyWith<$Res>(_value.PrivacySetting, (value) {
      return _then(_value.copyWith(PrivacySetting: value) as $Val);
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
      {Users User,
      PushNotifications PushNotification,
      PrivacySettings PrivacySetting});

  @override
  $UsersCopyWith<$Res> get User;
  @override
  $PushNotificationsCopyWith<$Res> get PushNotification;
  @override
  $PrivacySettingsCopyWith<$Res> get PrivacySetting;
}

/// @nodoc
class __$$_MsgCopyWithImpl<$Res> extends _$MsgCopyWithImpl<$Res, _$_Msg>
    implements _$$_MsgCopyWith<$Res> {
  __$$_MsgCopyWithImpl(_$_Msg _value, $Res Function(_$_Msg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? User = null,
    Object? PushNotification = null,
    Object? PrivacySetting = null,
  }) {
    return _then(_$_Msg(
      User: null == User
          ? _value.User
          : User // ignore: cast_nullable_to_non_nullable
              as Users,
      PushNotification: null == PushNotification
          ? _value.PushNotification
          : PushNotification // ignore: cast_nullable_to_non_nullable
              as PushNotifications,
      PrivacySetting: null == PrivacySetting
          ? _value.PrivacySetting
          : PrivacySetting // ignore: cast_nullable_to_non_nullable
              as PrivacySettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Msg implements _Msg {
  const _$_Msg(
      {required this.User,
      required this.PushNotification,
      required this.PrivacySetting});

  factory _$_Msg.fromJson(Map<String, dynamic> json) => _$$_MsgFromJson(json);

  @override
  final Users User;
  @override
  final PushNotifications PushNotification;
  @override
  final PrivacySettings PrivacySetting;

  @override
  String toString() {
    return 'Msg(User: $User, PushNotification: $PushNotification, PrivacySetting: $PrivacySetting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Msg &&
            (identical(other.User, User) || other.User == User) &&
            (identical(other.PushNotification, PushNotification) ||
                other.PushNotification == PushNotification) &&
            (identical(other.PrivacySetting, PrivacySetting) ||
                other.PrivacySetting == PrivacySetting));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, User, PushNotification, PrivacySetting);

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
      {required final Users User,
      required final PushNotifications PushNotification,
      required final PrivacySettings PrivacySetting}) = _$_Msg;

  factory _Msg.fromJson(Map<String, dynamic> json) = _$_Msg.fromJson;

  @override
  Users get User;
  @override
  PushNotifications get PushNotification;
  @override
  PrivacySettings get PrivacySetting;
  @override
  @JsonKey(ignore: true)
  _$$_MsgCopyWith<_$_Msg> get copyWith => throw _privateConstructorUsedError;
}

PrivacySettings _$PrivacySettingsFromJson(Map<String, dynamic> json) {
  return _PrivacySettings.fromJson(json);
}

/// @nodoc
mixin _$PrivacySettings {
  String get id => throw _privateConstructorUsedError;
  String get videos_download => throw _privateConstructorUsedError;
  String get direct_message => throw _privateConstructorUsedError;
  String get duet => throw _privateConstructorUsedError;
  String get liked_videos => throw _privateConstructorUsedError;
  String get video_comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivacySettingsCopyWith<PrivacySettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacySettingsCopyWith<$Res> {
  factory $PrivacySettingsCopyWith(
          PrivacySettings value, $Res Function(PrivacySettings) then) =
      _$PrivacySettingsCopyWithImpl<$Res, PrivacySettings>;
  @useResult
  $Res call(
      {String id,
      String videos_download,
      String direct_message,
      String duet,
      String liked_videos,
      String video_comment});
}

/// @nodoc
class _$PrivacySettingsCopyWithImpl<$Res, $Val extends PrivacySettings>
    implements $PrivacySettingsCopyWith<$Res> {
  _$PrivacySettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videos_download = null,
    Object? direct_message = null,
    Object? duet = null,
    Object? liked_videos = null,
    Object? video_comment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      videos_download: null == videos_download
          ? _value.videos_download
          : videos_download // ignore: cast_nullable_to_non_nullable
              as String,
      direct_message: null == direct_message
          ? _value.direct_message
          : direct_message // ignore: cast_nullable_to_non_nullable
              as String,
      duet: null == duet
          ? _value.duet
          : duet // ignore: cast_nullable_to_non_nullable
              as String,
      liked_videos: null == liked_videos
          ? _value.liked_videos
          : liked_videos // ignore: cast_nullable_to_non_nullable
              as String,
      video_comment: null == video_comment
          ? _value.video_comment
          : video_comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrivacySettingsCopyWith<$Res>
    implements $PrivacySettingsCopyWith<$Res> {
  factory _$$_PrivacySettingsCopyWith(
          _$_PrivacySettings value, $Res Function(_$_PrivacySettings) then) =
      __$$_PrivacySettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String videos_download,
      String direct_message,
      String duet,
      String liked_videos,
      String video_comment});
}

/// @nodoc
class __$$_PrivacySettingsCopyWithImpl<$Res>
    extends _$PrivacySettingsCopyWithImpl<$Res, _$_PrivacySettings>
    implements _$$_PrivacySettingsCopyWith<$Res> {
  __$$_PrivacySettingsCopyWithImpl(
      _$_PrivacySettings _value, $Res Function(_$_PrivacySettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videos_download = null,
    Object? direct_message = null,
    Object? duet = null,
    Object? liked_videos = null,
    Object? video_comment = null,
  }) {
    return _then(_$_PrivacySettings(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      videos_download: null == videos_download
          ? _value.videos_download
          : videos_download // ignore: cast_nullable_to_non_nullable
              as String,
      direct_message: null == direct_message
          ? _value.direct_message
          : direct_message // ignore: cast_nullable_to_non_nullable
              as String,
      duet: null == duet
          ? _value.duet
          : duet // ignore: cast_nullable_to_non_nullable
              as String,
      liked_videos: null == liked_videos
          ? _value.liked_videos
          : liked_videos // ignore: cast_nullable_to_non_nullable
              as String,
      video_comment: null == video_comment
          ? _value.video_comment
          : video_comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrivacySettings implements _PrivacySettings {
  const _$_PrivacySettings(
      {required this.id,
      required this.videos_download,
      required this.direct_message,
      required this.duet,
      required this.liked_videos,
      required this.video_comment});

  factory _$_PrivacySettings.fromJson(Map<String, dynamic> json) =>
      _$$_PrivacySettingsFromJson(json);

  @override
  final String id;
  @override
  final String videos_download;
  @override
  final String direct_message;
  @override
  final String duet;
  @override
  final String liked_videos;
  @override
  final String video_comment;

  @override
  String toString() {
    return 'PrivacySettings(id: $id, videos_download: $videos_download, direct_message: $direct_message, duet: $duet, liked_videos: $liked_videos, video_comment: $video_comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivacySettings &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.videos_download, videos_download) ||
                other.videos_download == videos_download) &&
            (identical(other.direct_message, direct_message) ||
                other.direct_message == direct_message) &&
            (identical(other.duet, duet) || other.duet == duet) &&
            (identical(other.liked_videos, liked_videos) ||
                other.liked_videos == liked_videos) &&
            (identical(other.video_comment, video_comment) ||
                other.video_comment == video_comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, videos_download,
      direct_message, duet, liked_videos, video_comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrivacySettingsCopyWith<_$_PrivacySettings> get copyWith =>
      __$$_PrivacySettingsCopyWithImpl<_$_PrivacySettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrivacySettingsToJson(
      this,
    );
  }
}

abstract class _PrivacySettings implements PrivacySettings {
  const factory _PrivacySettings(
      {required final String id,
      required final String videos_download,
      required final String direct_message,
      required final String duet,
      required final String liked_videos,
      required final String video_comment}) = _$_PrivacySettings;

  factory _PrivacySettings.fromJson(Map<String, dynamic> json) =
      _$_PrivacySettings.fromJson;

  @override
  String get id;
  @override
  String get videos_download;
  @override
  String get direct_message;
  @override
  String get duet;
  @override
  String get liked_videos;
  @override
  String get video_comment;
  @override
  @JsonKey(ignore: true)
  _$$_PrivacySettingsCopyWith<_$_PrivacySettings> get copyWith =>
      throw _privateConstructorUsedError;
}

PushNotifications _$PushNotificationsFromJson(Map<String, dynamic> json) {
  return _PushNotifications.fromJson(json);
}

/// @nodoc
mixin _$PushNotifications {
  String get id => throw _privateConstructorUsedError;
  String get likes => throw _privateConstructorUsedError;
  String get comments => throw _privateConstructorUsedError;
  String get new_followers => throw _privateConstructorUsedError;
  String get mentions => throw _privateConstructorUsedError;
  String get direct_messages => throw _privateConstructorUsedError;
  String get video_updates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushNotificationsCopyWith<PushNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationsCopyWith<$Res> {
  factory $PushNotificationsCopyWith(
          PushNotifications value, $Res Function(PushNotifications) then) =
      _$PushNotificationsCopyWithImpl<$Res, PushNotifications>;
  @useResult
  $Res call(
      {String id,
      String likes,
      String comments,
      String new_followers,
      String mentions,
      String direct_messages,
      String video_updates});
}

/// @nodoc
class _$PushNotificationsCopyWithImpl<$Res, $Val extends PushNotifications>
    implements $PushNotificationsCopyWith<$Res> {
  _$PushNotificationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? likes = null,
    Object? comments = null,
    Object? new_followers = null,
    Object? mentions = null,
    Object? direct_messages = null,
    Object? video_updates = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      new_followers: null == new_followers
          ? _value.new_followers
          : new_followers // ignore: cast_nullable_to_non_nullable
              as String,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as String,
      direct_messages: null == direct_messages
          ? _value.direct_messages
          : direct_messages // ignore: cast_nullable_to_non_nullable
              as String,
      video_updates: null == video_updates
          ? _value.video_updates
          : video_updates // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PushNotificationsCopyWith<$Res>
    implements $PushNotificationsCopyWith<$Res> {
  factory _$$_PushNotificationsCopyWith(_$_PushNotifications value,
          $Res Function(_$_PushNotifications) then) =
      __$$_PushNotificationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String likes,
      String comments,
      String new_followers,
      String mentions,
      String direct_messages,
      String video_updates});
}

/// @nodoc
class __$$_PushNotificationsCopyWithImpl<$Res>
    extends _$PushNotificationsCopyWithImpl<$Res, _$_PushNotifications>
    implements _$$_PushNotificationsCopyWith<$Res> {
  __$$_PushNotificationsCopyWithImpl(
      _$_PushNotifications _value, $Res Function(_$_PushNotifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? likes = null,
    Object? comments = null,
    Object? new_followers = null,
    Object? mentions = null,
    Object? direct_messages = null,
    Object? video_updates = null,
  }) {
    return _then(_$_PushNotifications(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      new_followers: null == new_followers
          ? _value.new_followers
          : new_followers // ignore: cast_nullable_to_non_nullable
              as String,
      mentions: null == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as String,
      direct_messages: null == direct_messages
          ? _value.direct_messages
          : direct_messages // ignore: cast_nullable_to_non_nullable
              as String,
      video_updates: null == video_updates
          ? _value.video_updates
          : video_updates // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PushNotifications implements _PushNotifications {
  const _$_PushNotifications(
      {required this.id,
      required this.likes,
      required this.comments,
      required this.new_followers,
      required this.mentions,
      required this.direct_messages,
      required this.video_updates});

  factory _$_PushNotifications.fromJson(Map<String, dynamic> json) =>
      _$$_PushNotificationsFromJson(json);

  @override
  final String id;
  @override
  final String likes;
  @override
  final String comments;
  @override
  final String new_followers;
  @override
  final String mentions;
  @override
  final String direct_messages;
  @override
  final String video_updates;

  @override
  String toString() {
    return 'PushNotifications(id: $id, likes: $likes, comments: $comments, new_followers: $new_followers, mentions: $mentions, direct_messages: $direct_messages, video_updates: $video_updates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushNotifications &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.new_followers, new_followers) ||
                other.new_followers == new_followers) &&
            (identical(other.mentions, mentions) ||
                other.mentions == mentions) &&
            (identical(other.direct_messages, direct_messages) ||
                other.direct_messages == direct_messages) &&
            (identical(other.video_updates, video_updates) ||
                other.video_updates == video_updates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, likes, comments,
      new_followers, mentions, direct_messages, video_updates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushNotificationsCopyWith<_$_PushNotifications> get copyWith =>
      __$$_PushNotificationsCopyWithImpl<_$_PushNotifications>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushNotificationsToJson(
      this,
    );
  }
}

abstract class _PushNotifications implements PushNotifications {
  const factory _PushNotifications(
      {required final String id,
      required final String likes,
      required final String comments,
      required final String new_followers,
      required final String mentions,
      required final String direct_messages,
      required final String video_updates}) = _$_PushNotifications;

  factory _PushNotifications.fromJson(Map<String, dynamic> json) =
      _$_PushNotifications.fromJson;

  @override
  String get id;
  @override
  String get likes;
  @override
  String get comments;
  @override
  String get new_followers;
  @override
  String get mentions;
  @override
  String get direct_messages;
  @override
  String get video_updates;
  @override
  @JsonKey(ignore: true)
  _$$_PushNotificationsCopyWith<_$_PushNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

Users _$UsersFromJson(Map<String, dynamic> json) {
  return _Users.fromJson(json);
}

/// @nodoc
mixin _$Users {
  String get id => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String get social_id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get profile_pic => throw _privateConstructorUsedError;
  String get profile_pic_small => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get social => throw _privateConstructorUsedError;
  String get device_token => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get active => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get long => throw _privateConstructorUsedError;
  String get online => throw _privateConstructorUsedError;
  String get verified => throw _privateConstructorUsedError;
  String get auth_token => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;
  String get ip => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get city_id => throw _privateConstructorUsedError;
  String get state_id => throw _privateConstructorUsedError;
  String get country_id => throw _privateConstructorUsedError;
  String get wallet => throw _privateConstructorUsedError;
  String get paypal => throw _privateConstructorUsedError;
  String get reset_wallet_datetime => throw _privateConstructorUsedError;
  String get fb_id => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String? get button => throw _privateConstructorUsedError;
  double? get followers_count => throw _privateConstructorUsedError;
  double? get following_count => throw _privateConstructorUsedError;
  double? get likes_count => throw _privateConstructorUsedError;
  double? get video_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res, Users>;
  @useResult
  $Res call(
      {String id,
      String first_name,
      String last_name,
      String gender,
      String bio,
      String website,
      String dob,
      String social_id,
      String email,
      String phone,
      String password,
      String profile_pic,
      String profile_pic_small,
      String role,
      String username,
      String social,
      String device_token,
      String token,
      String active,
      String lat,
      String long,
      String online,
      String verified,
      String auth_token,
      String version,
      String device,
      String ip,
      String city,
      String country,
      String city_id,
      String state_id,
      String country_id,
      String wallet,
      String paypal,
      String reset_wallet_datetime,
      String fb_id,
      DateTime created,
      String? button,
      double? followers_count,
      double? following_count,
      double? likes_count,
      double? video_count});
}

/// @nodoc
class _$UsersCopyWithImpl<$Res, $Val extends Users>
    implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? gender = null,
    Object? bio = null,
    Object? website = null,
    Object? dob = null,
    Object? social_id = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
    Object? profile_pic = null,
    Object? profile_pic_small = null,
    Object? role = null,
    Object? username = null,
    Object? social = null,
    Object? device_token = null,
    Object? token = null,
    Object? active = null,
    Object? lat = null,
    Object? long = null,
    Object? online = null,
    Object? verified = null,
    Object? auth_token = null,
    Object? version = null,
    Object? device = null,
    Object? ip = null,
    Object? city = null,
    Object? country = null,
    Object? city_id = null,
    Object? state_id = null,
    Object? country_id = null,
    Object? wallet = null,
    Object? paypal = null,
    Object? reset_wallet_datetime = null,
    Object? fb_id = null,
    Object? created = null,
    Object? button = freezed,
    Object? followers_count = freezed,
    Object? following_count = freezed,
    Object? likes_count = freezed,
    Object? video_count = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      social_id: null == social_id
          ? _value.social_id
          : social_id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profile_pic: null == profile_pic
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String,
      profile_pic_small: null == profile_pic_small
          ? _value.profile_pic_small
          : profile_pic_small // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      social: null == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as String,
      device_token: null == device_token
          ? _value.device_token
          : device_token // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as String,
      auth_token: null == auth_token
          ? _value.auth_token
          : auth_token // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city_id: null == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as String,
      state_id: null == state_id
          ? _value.state_id
          : state_id // ignore: cast_nullable_to_non_nullable
              as String,
      country_id: null == country_id
          ? _value.country_id
          : country_id // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as String,
      paypal: null == paypal
          ? _value.paypal
          : paypal // ignore: cast_nullable_to_non_nullable
              as String,
      reset_wallet_datetime: null == reset_wallet_datetime
          ? _value.reset_wallet_datetime
          : reset_wallet_datetime // ignore: cast_nullable_to_non_nullable
              as String,
      fb_id: null == fb_id
          ? _value.fb_id
          : fb_id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      button: freezed == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as String?,
      followers_count: freezed == followers_count
          ? _value.followers_count
          : followers_count // ignore: cast_nullable_to_non_nullable
              as double?,
      following_count: freezed == following_count
          ? _value.following_count
          : following_count // ignore: cast_nullable_to_non_nullable
              as double?,
      likes_count: freezed == likes_count
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as double?,
      video_count: freezed == video_count
          ? _value.video_count
          : video_count // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$$_UsersCopyWith(_$_Users value, $Res Function(_$_Users) then) =
      __$$_UsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String first_name,
      String last_name,
      String gender,
      String bio,
      String website,
      String dob,
      String social_id,
      String email,
      String phone,
      String password,
      String profile_pic,
      String profile_pic_small,
      String role,
      String username,
      String social,
      String device_token,
      String token,
      String active,
      String lat,
      String long,
      String online,
      String verified,
      String auth_token,
      String version,
      String device,
      String ip,
      String city,
      String country,
      String city_id,
      String state_id,
      String country_id,
      String wallet,
      String paypal,
      String reset_wallet_datetime,
      String fb_id,
      DateTime created,
      String? button,
      double? followers_count,
      double? following_count,
      double? likes_count,
      double? video_count});
}

/// @nodoc
class __$$_UsersCopyWithImpl<$Res> extends _$UsersCopyWithImpl<$Res, _$_Users>
    implements _$$_UsersCopyWith<$Res> {
  __$$_UsersCopyWithImpl(_$_Users _value, $Res Function(_$_Users) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? gender = null,
    Object? bio = null,
    Object? website = null,
    Object? dob = null,
    Object? social_id = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
    Object? profile_pic = null,
    Object? profile_pic_small = null,
    Object? role = null,
    Object? username = null,
    Object? social = null,
    Object? device_token = null,
    Object? token = null,
    Object? active = null,
    Object? lat = null,
    Object? long = null,
    Object? online = null,
    Object? verified = null,
    Object? auth_token = null,
    Object? version = null,
    Object? device = null,
    Object? ip = null,
    Object? city = null,
    Object? country = null,
    Object? city_id = null,
    Object? state_id = null,
    Object? country_id = null,
    Object? wallet = null,
    Object? paypal = null,
    Object? reset_wallet_datetime = null,
    Object? fb_id = null,
    Object? created = null,
    Object? button = freezed,
    Object? followers_count = freezed,
    Object? following_count = freezed,
    Object? likes_count = freezed,
    Object? video_count = freezed,
  }) {
    return _then(_$_Users(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      social_id: null == social_id
          ? _value.social_id
          : social_id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profile_pic: null == profile_pic
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String,
      profile_pic_small: null == profile_pic_small
          ? _value.profile_pic_small
          : profile_pic_small // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      social: null == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as String,
      device_token: null == device_token
          ? _value.device_token
          : device_token // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as String,
      auth_token: null == auth_token
          ? _value.auth_token
          : auth_token // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city_id: null == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as String,
      state_id: null == state_id
          ? _value.state_id
          : state_id // ignore: cast_nullable_to_non_nullable
              as String,
      country_id: null == country_id
          ? _value.country_id
          : country_id // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as String,
      paypal: null == paypal
          ? _value.paypal
          : paypal // ignore: cast_nullable_to_non_nullable
              as String,
      reset_wallet_datetime: null == reset_wallet_datetime
          ? _value.reset_wallet_datetime
          : reset_wallet_datetime // ignore: cast_nullable_to_non_nullable
              as String,
      fb_id: null == fb_id
          ? _value.fb_id
          : fb_id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      button: freezed == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as String?,
      followers_count: freezed == followers_count
          ? _value.followers_count
          : followers_count // ignore: cast_nullable_to_non_nullable
              as double?,
      following_count: freezed == following_count
          ? _value.following_count
          : following_count // ignore: cast_nullable_to_non_nullable
              as double?,
      likes_count: freezed == likes_count
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as double?,
      video_count: freezed == video_count
          ? _value.video_count
          : video_count // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Users implements _Users {
  const _$_Users(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.gender,
      required this.bio,
      required this.website,
      required this.dob,
      required this.social_id,
      required this.email,
      required this.phone,
      required this.password,
      required this.profile_pic,
      required this.profile_pic_small,
      required this.role,
      required this.username,
      required this.social,
      required this.device_token,
      required this.token,
      required this.active,
      required this.lat,
      required this.long,
      required this.online,
      required this.verified,
      required this.auth_token,
      required this.version,
      required this.device,
      required this.ip,
      required this.city,
      required this.country,
      required this.city_id,
      required this.state_id,
      required this.country_id,
      required this.wallet,
      required this.paypal,
      required this.reset_wallet_datetime,
      required this.fb_id,
      required this.created,
      this.button,
      this.followers_count,
      this.following_count,
      this.likes_count,
      this.video_count});

  factory _$_Users.fromJson(Map<String, dynamic> json) =>
      _$$_UsersFromJson(json);

  @override
  final String id;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String gender;
  @override
  final String bio;
  @override
  final String website;
  @override
  final String dob;
  @override
  final String social_id;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String password;
  @override
  final String profile_pic;
  @override
  final String profile_pic_small;
  @override
  final String role;
  @override
  final String username;
  @override
  final String social;
  @override
  final String device_token;
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
  final String auth_token;
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
  final String city_id;
  @override
  final String state_id;
  @override
  final String country_id;
  @override
  final String wallet;
  @override
  final String paypal;
  @override
  final String reset_wallet_datetime;
  @override
  final String fb_id;
  @override
  final DateTime created;
  @override
  final String? button;
  @override
  final double? followers_count;
  @override
  final double? following_count;
  @override
  final double? likes_count;
  @override
  final double? video_count;

  @override
  String toString() {
    return 'Users(id: $id, first_name: $first_name, last_name: $last_name, gender: $gender, bio: $bio, website: $website, dob: $dob, social_id: $social_id, email: $email, phone: $phone, password: $password, profile_pic: $profile_pic, profile_pic_small: $profile_pic_small, role: $role, username: $username, social: $social, device_token: $device_token, token: $token, active: $active, lat: $lat, long: $long, online: $online, verified: $verified, auth_token: $auth_token, version: $version, device: $device, ip: $ip, city: $city, country: $country, city_id: $city_id, state_id: $state_id, country_id: $country_id, wallet: $wallet, paypal: $paypal, reset_wallet_datetime: $reset_wallet_datetime, fb_id: $fb_id, created: $created, button: $button, followers_count: $followers_count, following_count: $following_count, likes_count: $likes_count, video_count: $video_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Users &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.social_id, social_id) ||
                other.social_id == social_id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.profile_pic, profile_pic) ||
                other.profile_pic == profile_pic) &&
            (identical(other.profile_pic_small, profile_pic_small) ||
                other.profile_pic_small == profile_pic_small) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.social, social) || other.social == social) &&
            (identical(other.device_token, device_token) ||
                other.device_token == device_token) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.auth_token, auth_token) ||
                other.auth_token == auth_token) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city_id, city_id) || other.city_id == city_id) &&
            (identical(other.state_id, state_id) ||
                other.state_id == state_id) &&
            (identical(other.country_id, country_id) ||
                other.country_id == country_id) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.paypal, paypal) || other.paypal == paypal) &&
            (identical(other.reset_wallet_datetime, reset_wallet_datetime) ||
                other.reset_wallet_datetime == reset_wallet_datetime) &&
            (identical(other.fb_id, fb_id) || other.fb_id == fb_id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.button, button) || other.button == button) &&
            (identical(other.followers_count, followers_count) ||
                other.followers_count == followers_count) &&
            (identical(other.following_count, following_count) ||
                other.following_count == following_count) &&
            (identical(other.likes_count, likes_count) ||
                other.likes_count == likes_count) &&
            (identical(other.video_count, video_count) ||
                other.video_count == video_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        first_name,
        last_name,
        gender,
        bio,
        website,
        dob,
        social_id,
        email,
        phone,
        password,
        profile_pic,
        profile_pic_small,
        role,
        username,
        social,
        device_token,
        token,
        active,
        lat,
        long,
        online,
        verified,
        auth_token,
        version,
        device,
        ip,
        city,
        country,
        city_id,
        state_id,
        country_id,
        wallet,
        paypal,
        reset_wallet_datetime,
        fb_id,
        created,
        button,
        followers_count,
        following_count,
        likes_count,
        video_count
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersCopyWith<_$_Users> get copyWith =>
      __$$_UsersCopyWithImpl<_$_Users>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersToJson(
      this,
    );
  }
}

abstract class _Users implements Users {
  const factory _Users(
      {required final String id,
      required final String first_name,
      required final String last_name,
      required final String gender,
      required final String bio,
      required final String website,
      required final String dob,
      required final String social_id,
      required final String email,
      required final String phone,
      required final String password,
      required final String profile_pic,
      required final String profile_pic_small,
      required final String role,
      required final String username,
      required final String social,
      required final String device_token,
      required final String token,
      required final String active,
      required final String lat,
      required final String long,
      required final String online,
      required final String verified,
      required final String auth_token,
      required final String version,
      required final String device,
      required final String ip,
      required final String city,
      required final String country,
      required final String city_id,
      required final String state_id,
      required final String country_id,
      required final String wallet,
      required final String paypal,
      required final String reset_wallet_datetime,
      required final String fb_id,
      required final DateTime created,
      final String? button,
      final double? followers_count,
      final double? following_count,
      final double? likes_count,
      final double? video_count}) = _$_Users;

  factory _Users.fromJson(Map<String, dynamic> json) = _$_Users.fromJson;

  @override
  String get id;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get gender;
  @override
  String get bio;
  @override
  String get website;
  @override
  String get dob;
  @override
  String get social_id;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get password;
  @override
  String get profile_pic;
  @override
  String get profile_pic_small;
  @override
  String get role;
  @override
  String get username;
  @override
  String get social;
  @override
  String get device_token;
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
  String get auth_token;
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
  String get city_id;
  @override
  String get state_id;
  @override
  String get country_id;
  @override
  String get wallet;
  @override
  String get paypal;
  @override
  String get reset_wallet_datetime;
  @override
  String get fb_id;
  @override
  DateTime get created;
  @override
  String? get button;
  @override
  double? get followers_count;
  @override
  double? get following_count;
  @override
  double? get likes_count;
  @override
  double? get video_count;
  @override
  @JsonKey(ignore: true)
  _$$_UsersCopyWith<_$_Users> get copyWith =>
      throw _privateConstructorUsedError;
}
