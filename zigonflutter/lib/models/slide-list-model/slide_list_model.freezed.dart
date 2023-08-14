// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slide_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlideListModel _$SlideListModelFromJson(Map<String, dynamic> json) {
  return _SlideListModel.fromJson(json);
}

/// @nodoc
mixin _$SlideListModel {
  int get code => throw _privateConstructorUsedError;
  List<Msg> get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlideListModelCopyWith<SlideListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideListModelCopyWith<$Res> {
  factory $SlideListModelCopyWith(
          SlideListModel value, $Res Function(SlideListModel) then) =
      _$SlideListModelCopyWithImpl<$Res, SlideListModel>;
  @useResult
  $Res call({int code, List<Msg> msg});
}

/// @nodoc
class _$SlideListModelCopyWithImpl<$Res, $Val extends SlideListModel>
    implements $SlideListModelCopyWith<$Res> {
  _$SlideListModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_SlideListModelCopyWith<$Res>
    implements $SlideListModelCopyWith<$Res> {
  factory _$$_SlideListModelCopyWith(
          _$_SlideListModel value, $Res Function(_$_SlideListModel) then) =
      __$$_SlideListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, List<Msg> msg});
}

/// @nodoc
class __$$_SlideListModelCopyWithImpl<$Res>
    extends _$SlideListModelCopyWithImpl<$Res, _$_SlideListModel>
    implements _$$_SlideListModelCopyWith<$Res> {
  __$$_SlideListModelCopyWithImpl(
      _$_SlideListModel _value, $Res Function(_$_SlideListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_$_SlideListModel(
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
class _$_SlideListModel implements _SlideListModel {
  const _$_SlideListModel({required this.code, required final List<Msg> msg})
      : _msg = msg;

  factory _$_SlideListModel.fromJson(Map<String, dynamic> json) =>
      _$$_SlideListModelFromJson(json);

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
    return 'SlideListModel(code: $code, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlideListModel &&
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
  _$$_SlideListModelCopyWith<_$_SlideListModel> get copyWith =>
      __$$_SlideListModelCopyWithImpl<_$_SlideListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlideListModelToJson(
      this,
    );
  }
}

abstract class _SlideListModel implements SlideListModel {
  const factory _SlideListModel(
      {required final int code,
      required final List<Msg> msg}) = _$_SlideListModel;

  factory _SlideListModel.fromJson(Map<String, dynamic> json) =
      _$_SlideListModel.fromJson;

  @override
  int get code;
  @override
  List<Msg> get msg;
  @override
  @JsonKey(ignore: true)
  _$$_SlideListModelCopyWith<_$_SlideListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Msg _$MsgFromJson(Map<String, dynamic> json) {
  return _Msg.fromJson(json);
}

/// @nodoc
mixin _$Msg {
  @JsonKey(name: 'Video')
  Video get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'User')
  User get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sound')
  Sound get sound => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'Video') Video video,
      @JsonKey(name: 'User') User user,
      @JsonKey(name: 'Sound') Sound sound});

  $VideoCopyWith<$Res> get video;
  $UserCopyWith<$Res> get user;
  $SoundCopyWith<$Res> get sound;
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
    Object? video = null,
    Object? user = null,
    Object? sound = null,
  }) {
    return _then(_value.copyWith(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Video,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as Sound,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res> get video {
    return $VideoCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value) as $Val);
    });
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
  $SoundCopyWith<$Res> get sound {
    return $SoundCopyWith<$Res>(_value.sound, (value) {
      return _then(_value.copyWith(sound: value) as $Val);
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
      {@JsonKey(name: 'Video') Video video,
      @JsonKey(name: 'User') User user,
      @JsonKey(name: 'Sound') Sound sound});

  @override
  $VideoCopyWith<$Res> get video;
  @override
  $UserCopyWith<$Res> get user;
  @override
  $SoundCopyWith<$Res> get sound;
}

/// @nodoc
class __$$_MsgCopyWithImpl<$Res> extends _$MsgCopyWithImpl<$Res, _$_Msg>
    implements _$$_MsgCopyWith<$Res> {
  __$$_MsgCopyWithImpl(_$_Msg _value, $Res Function(_$_Msg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
    Object? user = null,
    Object? sound = null,
  }) {
    return _then(_$_Msg(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Video,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      sound: null == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as Sound,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Msg implements _Msg {
  const _$_Msg(
      {@JsonKey(name: 'Video') required this.video,
      @JsonKey(name: 'User') required this.user,
      @JsonKey(name: 'Sound') required this.sound});

  factory _$_Msg.fromJson(Map<String, dynamic> json) => _$$_MsgFromJson(json);

  @override
  @JsonKey(name: 'Video')
  final Video video;
  @override
  @JsonKey(name: 'User')
  final User user;
  @override
  @JsonKey(name: 'Sound')
  final Sound sound;

  @override
  String toString() {
    return 'Msg(video: $video, user: $user, sound: $sound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Msg &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.sound, sound) || other.sound == sound));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, video, user, sound);

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
      {@JsonKey(name: 'Video') required final Video video,
      @JsonKey(name: 'User') required final User user,
      @JsonKey(name: 'Sound') required final Sound sound}) = _$_Msg;

  factory _Msg.fromJson(Map<String, dynamic> json) = _$_Msg.fromJson;

  @override
  @JsonKey(name: 'Video')
  Video get video;
  @override
  @JsonKey(name: 'User')
  User get user;
  @override
  @JsonKey(name: 'Sound')
  Sound get sound;
  @override
  @JsonKey(ignore: true)
  _$$_MsgCopyWith<_$_Msg> get copyWith => throw _privateConstructorUsedError;
}

Sound _$SoundFromJson(Map<String, dynamic> json) {
  return _Sound.fromJson(json);
}

/// @nodoc
mixin _$Sound {
  String? get id => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get thum => throw _privateConstructorUsedError;
  String? get sound_section_id => throw _privateConstructorUsedError;
  String? get uploaded_by => throw _privateConstructorUsedError;
  String? get publish => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoundCopyWith<Sound> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundCopyWith<$Res> {
  factory $SoundCopyWith(Sound value, $Res Function(Sound) then) =
      _$SoundCopyWithImpl<$Res, Sound>;
  @useResult
  $Res call(
      {String? id,
      String? audio,
      String? duration,
      String? name,
      String? description,
      String? thum,
      String? sound_section_id,
      String? uploaded_by,
      String? publish,
      DateTime? created});
}

/// @nodoc
class _$SoundCopyWithImpl<$Res, $Val extends Sound>
    implements $SoundCopyWith<$Res> {
  _$SoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? audio = freezed,
    Object? duration = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? thum = freezed,
    Object? sound_section_id = freezed,
    Object? uploaded_by = freezed,
    Object? publish = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thum: freezed == thum
          ? _value.thum
          : thum // ignore: cast_nullable_to_non_nullable
              as String?,
      sound_section_id: freezed == sound_section_id
          ? _value.sound_section_id
          : sound_section_id // ignore: cast_nullable_to_non_nullable
              as String?,
      uploaded_by: freezed == uploaded_by
          ? _value.uploaded_by
          : uploaded_by // ignore: cast_nullable_to_non_nullable
              as String?,
      publish: freezed == publish
          ? _value.publish
          : publish // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SoundCopyWith<$Res> implements $SoundCopyWith<$Res> {
  factory _$$_SoundCopyWith(_$_Sound value, $Res Function(_$_Sound) then) =
      __$$_SoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? audio,
      String? duration,
      String? name,
      String? description,
      String? thum,
      String? sound_section_id,
      String? uploaded_by,
      String? publish,
      DateTime? created});
}

/// @nodoc
class __$$_SoundCopyWithImpl<$Res> extends _$SoundCopyWithImpl<$Res, _$_Sound>
    implements _$$_SoundCopyWith<$Res> {
  __$$_SoundCopyWithImpl(_$_Sound _value, $Res Function(_$_Sound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? audio = freezed,
    Object? duration = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? thum = freezed,
    Object? sound_section_id = freezed,
    Object? uploaded_by = freezed,
    Object? publish = freezed,
    Object? created = freezed,
  }) {
    return _then(_$_Sound(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thum: freezed == thum
          ? _value.thum
          : thum // ignore: cast_nullable_to_non_nullable
              as String?,
      sound_section_id: freezed == sound_section_id
          ? _value.sound_section_id
          : sound_section_id // ignore: cast_nullable_to_non_nullable
              as String?,
      uploaded_by: freezed == uploaded_by
          ? _value.uploaded_by
          : uploaded_by // ignore: cast_nullable_to_non_nullable
              as String?,
      publish: freezed == publish
          ? _value.publish
          : publish // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sound implements _Sound {
  const _$_Sound(
      {this.id,
      this.audio,
      this.duration,
      this.name,
      this.description,
      this.thum,
      this.sound_section_id,
      this.uploaded_by,
      this.publish,
      this.created});

  factory _$_Sound.fromJson(Map<String, dynamic> json) =>
      _$$_SoundFromJson(json);

  @override
  final String? id;
  @override
  final String? audio;
  @override
  final String? duration;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? thum;
  @override
  final String? sound_section_id;
  @override
  final String? uploaded_by;
  @override
  final String? publish;
  @override
  final DateTime? created;

  @override
  String toString() {
    return 'Sound(id: $id, audio: $audio, duration: $duration, name: $name, description: $description, thum: $thum, sound_section_id: $sound_section_id, uploaded_by: $uploaded_by, publish: $publish, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sound &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thum, thum) || other.thum == thum) &&
            (identical(other.sound_section_id, sound_section_id) ||
                other.sound_section_id == sound_section_id) &&
            (identical(other.uploaded_by, uploaded_by) ||
                other.uploaded_by == uploaded_by) &&
            (identical(other.publish, publish) || other.publish == publish) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, audio, duration, name,
      description, thum, sound_section_id, uploaded_by, publish, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SoundCopyWith<_$_Sound> get copyWith =>
      __$$_SoundCopyWithImpl<_$_Sound>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SoundToJson(
      this,
    );
  }
}

abstract class _Sound implements Sound {
  const factory _Sound(
      {final String? id,
      final String? audio,
      final String? duration,
      final String? name,
      final String? description,
      final String? thum,
      final String? sound_section_id,
      final String? uploaded_by,
      final String? publish,
      final DateTime? created}) = _$_Sound;

  factory _Sound.fromJson(Map<String, dynamic> json) = _$_Sound.fromJson;

  @override
  String? get id;
  @override
  String? get audio;
  @override
  String? get duration;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get thum;
  @override
  String? get sound_section_id;
  @override
  String? get uploaded_by;
  @override
  String? get publish;
  @override
  DateTime? get created;
  @override
  @JsonKey(ignore: true)
  _$$_SoundCopyWith<_$_Sound> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String? get social_id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get profile_pic => throw _privateConstructorUsedError;
  String? get profile_pic_small => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get social => throw _privateConstructorUsedError;
  String? get device_token => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String get active => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get long => throw _privateConstructorUsedError;
  String get online => throw _privateConstructorUsedError;
  String get verified => throw _privateConstructorUsedError;
  String get auth_token => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get device => throw _privateConstructorUsedError;
  String? get ip => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String get city_id => throw _privateConstructorUsedError;
  String get state_id => throw _privateConstructorUsedError;
  String get country_id => throw _privateConstructorUsedError;
  String get wallet => throw _privateConstructorUsedError;
  String? get paypal => throw _privateConstructorUsedError;
  String get reset_wallet_datetime => throw _privateConstructorUsedError;
  String? get fbId => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'PushNotification')
  PushNotification get pushNotification => throw _privateConstructorUsedError;
  @JsonKey(name: 'PrivacySetting')
  PrivacySetting get privacySetting => throw _privateConstructorUsedError;
  String get button => throw _privateConstructorUsedError;

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
      String? first_name,
      String? last_name,
      String? gender,
      String? bio,
      String? website,
      String dob,
      String? social_id,
      String email,
      String? phone,
      String password,
      String? profile_pic,
      String? profile_pic_small,
      String role,
      String username,
      String? social,
      String? device_token,
      String? token,
      String active,
      String? lat,
      String? long,
      String online,
      String verified,
      String auth_token,
      String? version,
      String? device,
      String? ip,
      String? city,
      String? country,
      String city_id,
      String state_id,
      String country_id,
      String wallet,
      String? paypal,
      String reset_wallet_datetime,
      String? fbId,
      DateTime created,
      @JsonKey(name: 'PushNotification') PushNotification pushNotification,
      @JsonKey(name: 'PrivacySetting') PrivacySetting privacySetting,
      String button});

  $PushNotificationCopyWith<$Res> get pushNotification;
  $PrivacySettingCopyWith<$Res> get privacySetting;
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
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? gender = freezed,
    Object? bio = freezed,
    Object? website = freezed,
    Object? dob = null,
    Object? social_id = freezed,
    Object? email = null,
    Object? phone = freezed,
    Object? password = null,
    Object? profile_pic = freezed,
    Object? profile_pic_small = freezed,
    Object? role = null,
    Object? username = null,
    Object? social = freezed,
    Object? device_token = freezed,
    Object? token = freezed,
    Object? active = null,
    Object? lat = freezed,
    Object? long = freezed,
    Object? online = null,
    Object? verified = null,
    Object? auth_token = null,
    Object? version = freezed,
    Object? device = freezed,
    Object? ip = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? city_id = null,
    Object? state_id = null,
    Object? country_id = null,
    Object? wallet = null,
    Object? paypal = freezed,
    Object? reset_wallet_datetime = null,
    Object? fbId = freezed,
    Object? created = null,
    Object? pushNotification = null,
    Object? privacySetting = null,
    Object? button = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      social_id: freezed == social_id
          ? _value.social_id
          : social_id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profile_pic: freezed == profile_pic
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_pic_small: freezed == profile_pic_small
          ? _value.profile_pic_small
          : profile_pic_small // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as String?,
      device_token: freezed == device_token
          ? _value.device_token
          : device_token // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
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
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
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
      paypal: freezed == paypal
          ? _value.paypal
          : paypal // ignore: cast_nullable_to_non_nullable
              as String?,
      reset_wallet_datetime: null == reset_wallet_datetime
          ? _value.reset_wallet_datetime
          : reset_wallet_datetime // ignore: cast_nullable_to_non_nullable
              as String,
      fbId: freezed == fbId
          ? _value.fbId
          : fbId // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pushNotification: null == pushNotification
          ? _value.pushNotification
          : pushNotification // ignore: cast_nullable_to_non_nullable
              as PushNotification,
      privacySetting: null == privacySetting
          ? _value.privacySetting
          : privacySetting // ignore: cast_nullable_to_non_nullable
              as PrivacySetting,
      button: null == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PushNotificationCopyWith<$Res> get pushNotification {
    return $PushNotificationCopyWith<$Res>(_value.pushNotification, (value) {
      return _then(_value.copyWith(pushNotification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrivacySettingCopyWith<$Res> get privacySetting {
    return $PrivacySettingCopyWith<$Res>(_value.privacySetting, (value) {
      return _then(_value.copyWith(privacySetting: value) as $Val);
    });
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
      String? first_name,
      String? last_name,
      String? gender,
      String? bio,
      String? website,
      String dob,
      String? social_id,
      String email,
      String? phone,
      String password,
      String? profile_pic,
      String? profile_pic_small,
      String role,
      String username,
      String? social,
      String? device_token,
      String? token,
      String active,
      String? lat,
      String? long,
      String online,
      String verified,
      String auth_token,
      String? version,
      String? device,
      String? ip,
      String? city,
      String? country,
      String city_id,
      String state_id,
      String country_id,
      String wallet,
      String? paypal,
      String reset_wallet_datetime,
      String? fbId,
      DateTime created,
      @JsonKey(name: 'PushNotification') PushNotification pushNotification,
      @JsonKey(name: 'PrivacySetting') PrivacySetting privacySetting,
      String button});

  @override
  $PushNotificationCopyWith<$Res> get pushNotification;
  @override
  $PrivacySettingCopyWith<$Res> get privacySetting;
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
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? gender = freezed,
    Object? bio = freezed,
    Object? website = freezed,
    Object? dob = null,
    Object? social_id = freezed,
    Object? email = null,
    Object? phone = freezed,
    Object? password = null,
    Object? profile_pic = freezed,
    Object? profile_pic_small = freezed,
    Object? role = null,
    Object? username = null,
    Object? social = freezed,
    Object? device_token = freezed,
    Object? token = freezed,
    Object? active = null,
    Object? lat = freezed,
    Object? long = freezed,
    Object? online = null,
    Object? verified = null,
    Object? auth_token = null,
    Object? version = freezed,
    Object? device = freezed,
    Object? ip = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? city_id = null,
    Object? state_id = null,
    Object? country_id = null,
    Object? wallet = null,
    Object? paypal = freezed,
    Object? reset_wallet_datetime = null,
    Object? fbId = freezed,
    Object? created = null,
    Object? pushNotification = null,
    Object? privacySetting = null,
    Object? button = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      social_id: freezed == social_id
          ? _value.social_id
          : social_id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profile_pic: freezed == profile_pic
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_pic_small: freezed == profile_pic_small
          ? _value.profile_pic_small
          : profile_pic_small // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as String?,
      device_token: freezed == device_token
          ? _value.device_token
          : device_token // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
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
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
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
      paypal: freezed == paypal
          ? _value.paypal
          : paypal // ignore: cast_nullable_to_non_nullable
              as String?,
      reset_wallet_datetime: null == reset_wallet_datetime
          ? _value.reset_wallet_datetime
          : reset_wallet_datetime // ignore: cast_nullable_to_non_nullable
              as String,
      fbId: freezed == fbId
          ? _value.fbId
          : fbId // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pushNotification: null == pushNotification
          ? _value.pushNotification
          : pushNotification // ignore: cast_nullable_to_non_nullable
              as PushNotification,
      privacySetting: null == privacySetting
          ? _value.privacySetting
          : privacySetting // ignore: cast_nullable_to_non_nullable
              as PrivacySetting,
      button: null == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      this.first_name,
      this.last_name,
      this.gender,
      this.bio,
      this.website,
      required this.dob,
      this.social_id,
      required this.email,
      this.phone,
      required this.password,
      this.profile_pic,
      this.profile_pic_small,
      required this.role,
      required this.username,
      this.social,
      this.device_token,
      this.token,
      required this.active,
      this.lat,
      this.long,
      required this.online,
      required this.verified,
      required this.auth_token,
      this.version,
      this.device,
      this.ip,
      this.city,
      this.country,
      required this.city_id,
      required this.state_id,
      required this.country_id,
      required this.wallet,
      this.paypal,
      required this.reset_wallet_datetime,
      this.fbId,
      required this.created,
      @JsonKey(name: 'PushNotification') required this.pushNotification,
      @JsonKey(name: 'PrivacySetting') required this.privacySetting,
      required this.button});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? gender;
  @override
  final String? bio;
  @override
  final String? website;
  @override
  final String dob;
  @override
  final String? social_id;
  @override
  final String email;
  @override
  final String? phone;
  @override
  final String password;
  @override
  final String? profile_pic;
  @override
  final String? profile_pic_small;
  @override
  final String role;
  @override
  final String username;
  @override
  final String? social;
  @override
  final String? device_token;
  @override
  final String? token;
  @override
  final String active;
  @override
  final String? lat;
  @override
  final String? long;
  @override
  final String online;
  @override
  final String verified;
  @override
  final String auth_token;
  @override
  final String? version;
  @override
  final String? device;
  @override
  final String? ip;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String city_id;
  @override
  final String state_id;
  @override
  final String country_id;
  @override
  final String wallet;
  @override
  final String? paypal;
  @override
  final String reset_wallet_datetime;
  @override
  final String? fbId;
  @override
  final DateTime created;
  @override
  @JsonKey(name: 'PushNotification')
  final PushNotification pushNotification;
  @override
  @JsonKey(name: 'PrivacySetting')
  final PrivacySetting privacySetting;
  @override
  final String button;

  @override
  String toString() {
    return 'User(id: $id, first_name: $first_name, last_name: $last_name, gender: $gender, bio: $bio, website: $website, dob: $dob, social_id: $social_id, email: $email, phone: $phone, password: $password, profile_pic: $profile_pic, profile_pic_small: $profile_pic_small, role: $role, username: $username, social: $social, device_token: $device_token, token: $token, active: $active, lat: $lat, long: $long, online: $online, verified: $verified, auth_token: $auth_token, version: $version, device: $device, ip: $ip, city: $city, country: $country, city_id: $city_id, state_id: $state_id, country_id: $country_id, wallet: $wallet, paypal: $paypal, reset_wallet_datetime: $reset_wallet_datetime, fbId: $fbId, created: $created, pushNotification: $pushNotification, privacySetting: $privacySetting, button: $button)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
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
            (identical(other.fbId, fbId) || other.fbId == fbId) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.pushNotification, pushNotification) ||
                other.pushNotification == pushNotification) &&
            (identical(other.privacySetting, privacySetting) ||
                other.privacySetting == privacySetting) &&
            (identical(other.button, button) || other.button == button));
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
        fbId,
        created,
        pushNotification,
        privacySetting,
        button
      ]);

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
      final String? first_name,
      final String? last_name,
      final String? gender,
      final String? bio,
      final String? website,
      required final String dob,
      final String? social_id,
      required final String email,
      final String? phone,
      required final String password,
      final String? profile_pic,
      final String? profile_pic_small,
      required final String role,
      required final String username,
      final String? social,
      final String? device_token,
      final String? token,
      required final String active,
      final String? lat,
      final String? long,
      required final String online,
      required final String verified,
      required final String auth_token,
      final String? version,
      final String? device,
      final String? ip,
      final String? city,
      final String? country,
      required final String city_id,
      required final String state_id,
      required final String country_id,
      required final String wallet,
      final String? paypal,
      required final String reset_wallet_datetime,
      final String? fbId,
      required final DateTime created,
      @JsonKey(name: 'PushNotification')
          required final PushNotification pushNotification,
      @JsonKey(name: 'PrivacySetting')
          required final PrivacySetting privacySetting,
      required final String button}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get gender;
  @override
  String? get bio;
  @override
  String? get website;
  @override
  String get dob;
  @override
  String? get social_id;
  @override
  String get email;
  @override
  String? get phone;
  @override
  String get password;
  @override
  String? get profile_pic;
  @override
  String? get profile_pic_small;
  @override
  String get role;
  @override
  String get username;
  @override
  String? get social;
  @override
  String? get device_token;
  @override
  String? get token;
  @override
  String get active;
  @override
  String? get lat;
  @override
  String? get long;
  @override
  String get online;
  @override
  String get verified;
  @override
  String get auth_token;
  @override
  String? get version;
  @override
  String? get device;
  @override
  String? get ip;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String get city_id;
  @override
  String get state_id;
  @override
  String get country_id;
  @override
  String get wallet;
  @override
  String? get paypal;
  @override
  String get reset_wallet_datetime;
  @override
  String? get fbId;
  @override
  DateTime get created;
  @override
  @JsonKey(name: 'PushNotification')
  PushNotification get pushNotification;
  @override
  @JsonKey(name: 'PrivacySetting')
  PrivacySetting get privacySetting;
  @override
  String get button;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

PrivacySetting _$PrivacySettingFromJson(Map<String, dynamic> json) {
  return _PrivacySetting.fromJson(json);
}

/// @nodoc
mixin _$PrivacySetting {
  String get id => throw _privateConstructorUsedError;
  String get videos_download => throw _privateConstructorUsedError;
  String get direct_message => throw _privateConstructorUsedError;
  String get duet => throw _privateConstructorUsedError;
  String get liked_videos => throw _privateConstructorUsedError;
  String get video_comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivacySettingCopyWith<PrivacySetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacySettingCopyWith<$Res> {
  factory $PrivacySettingCopyWith(
          PrivacySetting value, $Res Function(PrivacySetting) then) =
      _$PrivacySettingCopyWithImpl<$Res, PrivacySetting>;
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
class _$PrivacySettingCopyWithImpl<$Res, $Val extends PrivacySetting>
    implements $PrivacySettingCopyWith<$Res> {
  _$PrivacySettingCopyWithImpl(this._value, this._then);

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
abstract class _$$_PrivacySettingCopyWith<$Res>
    implements $PrivacySettingCopyWith<$Res> {
  factory _$$_PrivacySettingCopyWith(
          _$_PrivacySetting value, $Res Function(_$_PrivacySetting) then) =
      __$$_PrivacySettingCopyWithImpl<$Res>;
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
class __$$_PrivacySettingCopyWithImpl<$Res>
    extends _$PrivacySettingCopyWithImpl<$Res, _$_PrivacySetting>
    implements _$$_PrivacySettingCopyWith<$Res> {
  __$$_PrivacySettingCopyWithImpl(
      _$_PrivacySetting _value, $Res Function(_$_PrivacySetting) _then)
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
    return _then(_$_PrivacySetting(
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
class _$_PrivacySetting implements _PrivacySetting {
  const _$_PrivacySetting(
      {required this.id,
      required this.videos_download,
      required this.direct_message,
      required this.duet,
      required this.liked_videos,
      required this.video_comment});

  factory _$_PrivacySetting.fromJson(Map<String, dynamic> json) =>
      _$$_PrivacySettingFromJson(json);

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
    return 'PrivacySetting(id: $id, videos_download: $videos_download, direct_message: $direct_message, duet: $duet, liked_videos: $liked_videos, video_comment: $video_comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivacySetting &&
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
  _$$_PrivacySettingCopyWith<_$_PrivacySetting> get copyWith =>
      __$$_PrivacySettingCopyWithImpl<_$_PrivacySetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrivacySettingToJson(
      this,
    );
  }
}

abstract class _PrivacySetting implements PrivacySetting {
  const factory _PrivacySetting(
      {required final String id,
      required final String videos_download,
      required final String direct_message,
      required final String duet,
      required final String liked_videos,
      required final String video_comment}) = _$_PrivacySetting;

  factory _PrivacySetting.fromJson(Map<String, dynamic> json) =
      _$_PrivacySetting.fromJson;

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
  _$$_PrivacySettingCopyWith<_$_PrivacySetting> get copyWith =>
      throw _privateConstructorUsedError;
}

PushNotification _$PushNotificationFromJson(Map<String, dynamic> json) {
  return _PushNotification.fromJson(json);
}

/// @nodoc
mixin _$PushNotification {
  String get id => throw _privateConstructorUsedError;
  String get likes => throw _privateConstructorUsedError;
  String get comments => throw _privateConstructorUsedError;
  String get new_followers => throw _privateConstructorUsedError;
  String get mentions => throw _privateConstructorUsedError;
  String get direct_messages => throw _privateConstructorUsedError;
  String get video_updates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushNotificationCopyWith<PushNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationCopyWith<$Res> {
  factory $PushNotificationCopyWith(
          PushNotification value, $Res Function(PushNotification) then) =
      _$PushNotificationCopyWithImpl<$Res, PushNotification>;
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
class _$PushNotificationCopyWithImpl<$Res, $Val extends PushNotification>
    implements $PushNotificationCopyWith<$Res> {
  _$PushNotificationCopyWithImpl(this._value, this._then);

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
abstract class _$$_PushNotificationCopyWith<$Res>
    implements $PushNotificationCopyWith<$Res> {
  factory _$$_PushNotificationCopyWith(
          _$_PushNotification value, $Res Function(_$_PushNotification) then) =
      __$$_PushNotificationCopyWithImpl<$Res>;
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
class __$$_PushNotificationCopyWithImpl<$Res>
    extends _$PushNotificationCopyWithImpl<$Res, _$_PushNotification>
    implements _$$_PushNotificationCopyWith<$Res> {
  __$$_PushNotificationCopyWithImpl(
      _$_PushNotification _value, $Res Function(_$_PushNotification) _then)
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
    return _then(_$_PushNotification(
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
class _$_PushNotification implements _PushNotification {
  const _$_PushNotification(
      {required this.id,
      required this.likes,
      required this.comments,
      required this.new_followers,
      required this.mentions,
      required this.direct_messages,
      required this.video_updates});

  factory _$_PushNotification.fromJson(Map<String, dynamic> json) =>
      _$$_PushNotificationFromJson(json);

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
    return 'PushNotification(id: $id, likes: $likes, comments: $comments, new_followers: $new_followers, mentions: $mentions, direct_messages: $direct_messages, video_updates: $video_updates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushNotification &&
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
  _$$_PushNotificationCopyWith<_$_PushNotification> get copyWith =>
      __$$_PushNotificationCopyWithImpl<_$_PushNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushNotificationToJson(
      this,
    );
  }
}

abstract class _PushNotification implements PushNotification {
  const factory _PushNotification(
      {required final String id,
      required final String likes,
      required final String comments,
      required final String new_followers,
      required final String mentions,
      required final String direct_messages,
      required final String video_updates}) = _$_PushNotification;

  factory _PushNotification.fromJson(Map<String, dynamic> json) =
      _$_PushNotification.fromJson;

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
  _$$_PushNotificationCopyWith<_$_PushNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  String get id => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  String get thum => throw _privateConstructorUsedError;
  String get gif => throw _privateConstructorUsedError;
  String get view => throw _privateConstructorUsedError;
  String get section => throw _privateConstructorUsedError;
  String get sound_id => throw _privateConstructorUsedError;
  String get privacy_type => throw _privateConstructorUsedError;
  String get allow_comments => throw _privateConstructorUsedError;
  String get allow_duet => throw _privateConstructorUsedError;
  String get block => throw _privateConstructorUsedError;
  String get duet_video_id => throw _privateConstructorUsedError;
  String get old_video_id => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get promote => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  int get like => throw _privateConstructorUsedError;
  int get favourite => throw _privateConstructorUsedError;
  int get comment_count => throw _privateConstructorUsedError;
  int get like_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {String id,
      String user_id,
      String description,
      String video,
      String thum,
      String gif,
      String view,
      String section,
      String sound_id,
      String privacy_type,
      String allow_comments,
      String allow_duet,
      String block,
      String duet_video_id,
      String old_video_id,
      String duration,
      String promote,
      DateTime created,
      int like,
      int favourite,
      int comment_count,
      int like_count});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? description = null,
    Object? video = null,
    Object? thum = null,
    Object? gif = null,
    Object? view = null,
    Object? section = null,
    Object? sound_id = null,
    Object? privacy_type = null,
    Object? allow_comments = null,
    Object? allow_duet = null,
    Object? block = null,
    Object? duet_video_id = null,
    Object? old_video_id = null,
    Object? duration = null,
    Object? promote = null,
    Object? created = null,
    Object? like = null,
    Object? favourite = null,
    Object? comment_count = null,
    Object? like_count = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      thum: null == thum
          ? _value.thum
          : thum // ignore: cast_nullable_to_non_nullable
              as String,
      gif: null == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String,
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      sound_id: null == sound_id
          ? _value.sound_id
          : sound_id // ignore: cast_nullable_to_non_nullable
              as String,
      privacy_type: null == privacy_type
          ? _value.privacy_type
          : privacy_type // ignore: cast_nullable_to_non_nullable
              as String,
      allow_comments: null == allow_comments
          ? _value.allow_comments
          : allow_comments // ignore: cast_nullable_to_non_nullable
              as String,
      allow_duet: null == allow_duet
          ? _value.allow_duet
          : allow_duet // ignore: cast_nullable_to_non_nullable
              as String,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String,
      duet_video_id: null == duet_video_id
          ? _value.duet_video_id
          : duet_video_id // ignore: cast_nullable_to_non_nullable
              as String,
      old_video_id: null == old_video_id
          ? _value.old_video_id
          : old_video_id // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      promote: null == promote
          ? _value.promote
          : promote // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      favourite: null == favourite
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as int,
      comment_count: null == comment_count
          ? _value.comment_count
          : comment_count // ignore: cast_nullable_to_non_nullable
              as int,
      like_count: null == like_count
          ? _value.like_count
          : like_count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$_VideoCopyWith(_$_Video value, $Res Function(_$_Video) then) =
      __$$_VideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String user_id,
      String description,
      String video,
      String thum,
      String gif,
      String view,
      String section,
      String sound_id,
      String privacy_type,
      String allow_comments,
      String allow_duet,
      String block,
      String duet_video_id,
      String old_video_id,
      String duration,
      String promote,
      DateTime created,
      int like,
      int favourite,
      int comment_count,
      int like_count});
}

/// @nodoc
class __$$_VideoCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res, _$_Video>
    implements _$$_VideoCopyWith<$Res> {
  __$$_VideoCopyWithImpl(_$_Video _value, $Res Function(_$_Video) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? description = null,
    Object? video = null,
    Object? thum = null,
    Object? gif = null,
    Object? view = null,
    Object? section = null,
    Object? sound_id = null,
    Object? privacy_type = null,
    Object? allow_comments = null,
    Object? allow_duet = null,
    Object? block = null,
    Object? duet_video_id = null,
    Object? old_video_id = null,
    Object? duration = null,
    Object? promote = null,
    Object? created = null,
    Object? like = null,
    Object? favourite = null,
    Object? comment_count = null,
    Object? like_count = null,
  }) {
    return _then(_$_Video(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      thum: null == thum
          ? _value.thum
          : thum // ignore: cast_nullable_to_non_nullable
              as String,
      gif: null == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String,
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      sound_id: null == sound_id
          ? _value.sound_id
          : sound_id // ignore: cast_nullable_to_non_nullable
              as String,
      privacy_type: null == privacy_type
          ? _value.privacy_type
          : privacy_type // ignore: cast_nullable_to_non_nullable
              as String,
      allow_comments: null == allow_comments
          ? _value.allow_comments
          : allow_comments // ignore: cast_nullable_to_non_nullable
              as String,
      allow_duet: null == allow_duet
          ? _value.allow_duet
          : allow_duet // ignore: cast_nullable_to_non_nullable
              as String,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String,
      duet_video_id: null == duet_video_id
          ? _value.duet_video_id
          : duet_video_id // ignore: cast_nullable_to_non_nullable
              as String,
      old_video_id: null == old_video_id
          ? _value.old_video_id
          : old_video_id // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      promote: null == promote
          ? _value.promote
          : promote // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      favourite: null == favourite
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as int,
      comment_count: null == comment_count
          ? _value.comment_count
          : comment_count // ignore: cast_nullable_to_non_nullable
              as int,
      like_count: null == like_count
          ? _value.like_count
          : like_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Video implements _Video {
  const _$_Video(
      {required this.id,
      required this.user_id,
      required this.description,
      required this.video,
      required this.thum,
      required this.gif,
      required this.view,
      required this.section,
      required this.sound_id,
      required this.privacy_type,
      required this.allow_comments,
      required this.allow_duet,
      required this.block,
      required this.duet_video_id,
      required this.old_video_id,
      required this.duration,
      required this.promote,
      required this.created,
      required this.like,
      required this.favourite,
      required this.comment_count,
      required this.like_count});

  factory _$_Video.fromJson(Map<String, dynamic> json) =>
      _$$_VideoFromJson(json);

  @override
  final String id;
  @override
  final String user_id;
  @override
  final String description;
  @override
  final String video;
  @override
  final String thum;
  @override
  final String gif;
  @override
  final String view;
  @override
  final String section;
  @override
  final String sound_id;
  @override
  final String privacy_type;
  @override
  final String allow_comments;
  @override
  final String allow_duet;
  @override
  final String block;
  @override
  final String duet_video_id;
  @override
  final String old_video_id;
  @override
  final String duration;
  @override
  final String promote;
  @override
  final DateTime created;
  @override
  final int like;
  @override
  final int favourite;
  @override
  final int comment_count;
  @override
  final int like_count;

  @override
  String toString() {
    return 'Video(id: $id, user_id: $user_id, description: $description, video: $video, thum: $thum, gif: $gif, view: $view, section: $section, sound_id: $sound_id, privacy_type: $privacy_type, allow_comments: $allow_comments, allow_duet: $allow_duet, block: $block, duet_video_id: $duet_video_id, old_video_id: $old_video_id, duration: $duration, promote: $promote, created: $created, like: $like, favourite: $favourite, comment_count: $comment_count, like_count: $like_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Video &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.thum, thum) || other.thum == thum) &&
            (identical(other.gif, gif) || other.gif == gif) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.sound_id, sound_id) ||
                other.sound_id == sound_id) &&
            (identical(other.privacy_type, privacy_type) ||
                other.privacy_type == privacy_type) &&
            (identical(other.allow_comments, allow_comments) ||
                other.allow_comments == allow_comments) &&
            (identical(other.allow_duet, allow_duet) ||
                other.allow_duet == allow_duet) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.duet_video_id, duet_video_id) ||
                other.duet_video_id == duet_video_id) &&
            (identical(other.old_video_id, old_video_id) ||
                other.old_video_id == old_video_id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.promote, promote) || other.promote == promote) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.favourite, favourite) ||
                other.favourite == favourite) &&
            (identical(other.comment_count, comment_count) ||
                other.comment_count == comment_count) &&
            (identical(other.like_count, like_count) ||
                other.like_count == like_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        user_id,
        description,
        video,
        thum,
        gif,
        view,
        section,
        sound_id,
        privacy_type,
        allow_comments,
        allow_duet,
        block,
        duet_video_id,
        old_video_id,
        duration,
        promote,
        created,
        like,
        favourite,
        comment_count,
        like_count
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoCopyWith<_$_Video> get copyWith =>
      __$$_VideoCopyWithImpl<_$_Video>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  const factory _Video(
      {required final String id,
      required final String user_id,
      required final String description,
      required final String video,
      required final String thum,
      required final String gif,
      required final String view,
      required final String section,
      required final String sound_id,
      required final String privacy_type,
      required final String allow_comments,
      required final String allow_duet,
      required final String block,
      required final String duet_video_id,
      required final String old_video_id,
      required final String duration,
      required final String promote,
      required final DateTime created,
      required final int like,
      required final int favourite,
      required final int comment_count,
      required final int like_count}) = _$_Video;

  factory _Video.fromJson(Map<String, dynamic> json) = _$_Video.fromJson;

  @override
  String get id;
  @override
  String get user_id;
  @override
  String get description;
  @override
  String get video;
  @override
  String get thum;
  @override
  String get gif;
  @override
  String get view;
  @override
  String get section;
  @override
  String get sound_id;
  @override
  String get privacy_type;
  @override
  String get allow_comments;
  @override
  String get allow_duet;
  @override
  String get block;
  @override
  String get duet_video_id;
  @override
  String get old_video_id;
  @override
  String get duration;
  @override
  String get promote;
  @override
  DateTime get created;
  @override
  int get like;
  @override
  int get favourite;
  @override
  int get comment_count;
  @override
  int get like_count;
  @override
  @JsonKey(ignore: true)
  _$$_VideoCopyWith<_$_Video> get copyWith =>
      throw _privateConstructorUsedError;
}
