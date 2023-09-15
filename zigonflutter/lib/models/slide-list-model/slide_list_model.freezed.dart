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
  String? get profile_pic => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
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
      String? profile_pic,
      String username,
      bool verified,
      String button});
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
    Object? profile_pic = freezed,
    Object? username = null,
    Object? verified = null,
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
      profile_pic: freezed == profile_pic
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      button: null == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
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
      String? first_name,
      String? last_name,
      String? profile_pic,
      String username,
      bool verified,
      String button});
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
    Object? profile_pic = freezed,
    Object? username = null,
    Object? verified = null,
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
      profile_pic: freezed == profile_pic
          ? _value.profile_pic
          : profile_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
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
      this.profile_pic,
      required this.username,
      required this.verified,
      required this.button});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? profile_pic;
  @override
  final String username;
  @override
  final bool verified;
  @override
  final String button;

  @override
  String toString() {
    return 'User(id: $id, first_name: $first_name, last_name: $last_name, profile_pic: $profile_pic, username: $username, verified: $verified, button: $button)';
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
            (identical(other.profile_pic, profile_pic) ||
                other.profile_pic == profile_pic) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.button, button) || other.button == button));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, first_name, last_name,
      profile_pic, username, verified, button);

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
      final String? profile_pic,
      required final String username,
      required final bool verified,
      required final String button}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get profile_pic;
  @override
  String get username;
  @override
  bool get verified;
  @override
  String get button;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
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
  bool get isVideoLiked => throw _privateConstructorUsedError;
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
      bool isVideoLiked,
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
    Object? isVideoLiked = null,
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
      isVideoLiked: null == isVideoLiked
          ? _value.isVideoLiked
          : isVideoLiked // ignore: cast_nullable_to_non_nullable
              as bool,
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
      bool isVideoLiked,
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
    Object? isVideoLiked = null,
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
      isVideoLiked: null == isVideoLiked
          ? _value.isVideoLiked
          : isVideoLiked // ignore: cast_nullable_to_non_nullable
              as bool,
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
      required this.isVideoLiked,
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
  final bool isVideoLiked;
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
  final int favourite;
  @override
  final int comment_count;
  @override
  final int like_count;

  @override
  String toString() {
    return 'Video(id: $id, user_id: $user_id, description: $description, video: $video, thum: $thum, gif: $gif, view: $view, isVideoLiked: $isVideoLiked, section: $section, sound_id: $sound_id, privacy_type: $privacy_type, allow_comments: $allow_comments, allow_duet: $allow_duet, block: $block, duet_video_id: $duet_video_id, old_video_id: $old_video_id, duration: $duration, promote: $promote, created: $created, favourite: $favourite, comment_count: $comment_count, like_count: $like_count)';
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
            (identical(other.isVideoLiked, isVideoLiked) ||
                other.isVideoLiked == isVideoLiked) &&
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
        isVideoLiked,
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
      required final bool isVideoLiked,
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
  bool get isVideoLiked;
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
