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
  Videos get Video => throw _privateConstructorUsedError;
  Users get User => throw _privateConstructorUsedError;
  Sounds get Sound => throw _privateConstructorUsedError;
  List<dynamic> get video_comment => throw _privateConstructorUsedError;
  List<dynamic> get video_favourite => throw _privateConstructorUsedError;
  List<dynamic> get video_like => throw _privateConstructorUsedError;
  List<dynamic> get video_watch => throw _privateConstructorUsedError;

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
      {Videos Video,
      Users User,
      Sounds Sound,
      List<dynamic> video_comment,
      List<dynamic> video_favourite,
      List<dynamic> video_like,
      List<dynamic> video_watch});

  $VideosCopyWith<$Res> get Video;
  $UsersCopyWith<$Res> get User;
  $SoundsCopyWith<$Res> get Sound;
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
    Object? Video = null,
    Object? User = null,
    Object? Sound = null,
    Object? video_comment = null,
    Object? video_favourite = null,
    Object? video_like = null,
    Object? video_watch = null,
  }) {
    return _then(_value.copyWith(
      Video: null == Video
          ? _value.Video
          : Video // ignore: cast_nullable_to_non_nullable
              as Videos,
      User: null == User
          ? _value.User
          : User // ignore: cast_nullable_to_non_nullable
              as Users,
      Sound: null == Sound
          ? _value.Sound
          : Sound // ignore: cast_nullable_to_non_nullable
              as Sounds,
      video_comment: null == video_comment
          ? _value.video_comment
          : video_comment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      video_favourite: null == video_favourite
          ? _value.video_favourite
          : video_favourite // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      video_like: null == video_like
          ? _value.video_like
          : video_like // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      video_watch: null == video_watch
          ? _value.video_watch
          : video_watch // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideosCopyWith<$Res> get Video {
    return $VideosCopyWith<$Res>(_value.Video, (value) {
      return _then(_value.copyWith(Video: value) as $Val);
    });
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
  $SoundsCopyWith<$Res> get Sound {
    return $SoundsCopyWith<$Res>(_value.Sound, (value) {
      return _then(_value.copyWith(Sound: value) as $Val);
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
      {Videos Video,
      Users User,
      Sounds Sound,
      List<dynamic> video_comment,
      List<dynamic> video_favourite,
      List<dynamic> video_like,
      List<dynamic> video_watch});

  @override
  $VideosCopyWith<$Res> get Video;
  @override
  $UsersCopyWith<$Res> get User;
  @override
  $SoundsCopyWith<$Res> get Sound;
}

/// @nodoc
class __$$_MsgCopyWithImpl<$Res> extends _$MsgCopyWithImpl<$Res, _$_Msg>
    implements _$$_MsgCopyWith<$Res> {
  __$$_MsgCopyWithImpl(_$_Msg _value, $Res Function(_$_Msg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Video = null,
    Object? User = null,
    Object? Sound = null,
    Object? video_comment = null,
    Object? video_favourite = null,
    Object? video_like = null,
    Object? video_watch = null,
  }) {
    return _then(_$_Msg(
      Video: null == Video
          ? _value.Video
          : Video // ignore: cast_nullable_to_non_nullable
              as Videos,
      User: null == User
          ? _value.User
          : User // ignore: cast_nullable_to_non_nullable
              as Users,
      Sound: null == Sound
          ? _value.Sound
          : Sound // ignore: cast_nullable_to_non_nullable
              as Sounds,
      video_comment: null == video_comment
          ? _value._video_comment
          : video_comment // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      video_favourite: null == video_favourite
          ? _value._video_favourite
          : video_favourite // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      video_like: null == video_like
          ? _value._video_like
          : video_like // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      video_watch: null == video_watch
          ? _value._video_watch
          : video_watch // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Msg implements _Msg {
  const _$_Msg(
      {required this.Video,
      required this.User,
      required this.Sound,
      required final List<dynamic> video_comment,
      required final List<dynamic> video_favourite,
      required final List<dynamic> video_like,
      required final List<dynamic> video_watch})
      : _video_comment = video_comment,
        _video_favourite = video_favourite,
        _video_like = video_like,
        _video_watch = video_watch;

  factory _$_Msg.fromJson(Map<String, dynamic> json) => _$$_MsgFromJson(json);

  @override
  final Videos Video;
  @override
  final Users User;
  @override
  final Sounds Sound;
  final List<dynamic> _video_comment;
  @override
  List<dynamic> get video_comment {
    if (_video_comment is EqualUnmodifiableListView) return _video_comment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_video_comment);
  }

  final List<dynamic> _video_favourite;
  @override
  List<dynamic> get video_favourite {
    if (_video_favourite is EqualUnmodifiableListView) return _video_favourite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_video_favourite);
  }

  final List<dynamic> _video_like;
  @override
  List<dynamic> get video_like {
    if (_video_like is EqualUnmodifiableListView) return _video_like;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_video_like);
  }

  final List<dynamic> _video_watch;
  @override
  List<dynamic> get video_watch {
    if (_video_watch is EqualUnmodifiableListView) return _video_watch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_video_watch);
  }

  @override
  String toString() {
    return 'Msg(Video: $Video, User: $User, Sound: $Sound, video_comment: $video_comment, video_favourite: $video_favourite, video_like: $video_like, video_watch: $video_watch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Msg &&
            (identical(other.Video, Video) || other.Video == Video) &&
            (identical(other.User, User) || other.User == User) &&
            (identical(other.Sound, Sound) || other.Sound == Sound) &&
            const DeepCollectionEquality()
                .equals(other._video_comment, _video_comment) &&
            const DeepCollectionEquality()
                .equals(other._video_favourite, _video_favourite) &&
            const DeepCollectionEquality()
                .equals(other._video_like, _video_like) &&
            const DeepCollectionEquality()
                .equals(other._video_watch, _video_watch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      Video,
      User,
      Sound,
      const DeepCollectionEquality().hash(_video_comment),
      const DeepCollectionEquality().hash(_video_favourite),
      const DeepCollectionEquality().hash(_video_like),
      const DeepCollectionEquality().hash(_video_watch));

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
      {required final Videos Video,
      required final Users User,
      required final Sounds Sound,
      required final List<dynamic> video_comment,
      required final List<dynamic> video_favourite,
      required final List<dynamic> video_like,
      required final List<dynamic> video_watch}) = _$_Msg;

  factory _Msg.fromJson(Map<String, dynamic> json) = _$_Msg.fromJson;

  @override
  Videos get Video;
  @override
  Users get User;
  @override
  Sounds get Sound;
  @override
  List<dynamic> get video_comment;
  @override
  List<dynamic> get video_favourite;
  @override
  List<dynamic> get video_like;
  @override
  List<dynamic> get video_watch;
  @override
  @JsonKey(ignore: true)
  _$$_MsgCopyWith<_$_Msg> get copyWith => throw _privateConstructorUsedError;
}

Sounds _$SoundsFromJson(Map<String, dynamic> json) {
  return _Sounds.fromJson(json);
}

/// @nodoc
mixin _$Sounds {
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
  $SoundsCopyWith<Sounds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundsCopyWith<$Res> {
  factory $SoundsCopyWith(Sounds value, $Res Function(Sounds) then) =
      _$SoundsCopyWithImpl<$Res, Sounds>;
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
class _$SoundsCopyWithImpl<$Res, $Val extends Sounds>
    implements $SoundsCopyWith<$Res> {
  _$SoundsCopyWithImpl(this._value, this._then);

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
abstract class _$$_SoundsCopyWith<$Res> implements $SoundsCopyWith<$Res> {
  factory _$$_SoundsCopyWith(_$_Sounds value, $Res Function(_$_Sounds) then) =
      __$$_SoundsCopyWithImpl<$Res>;
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
class __$$_SoundsCopyWithImpl<$Res>
    extends _$SoundsCopyWithImpl<$Res, _$_Sounds>
    implements _$$_SoundsCopyWith<$Res> {
  __$$_SoundsCopyWithImpl(_$_Sounds _value, $Res Function(_$_Sounds) _then)
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
    return _then(_$_Sounds(
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
class _$_Sounds implements _Sounds {
  const _$_Sounds(
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

  factory _$_Sounds.fromJson(Map<String, dynamic> json) =>
      _$$_SoundsFromJson(json);

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
    return 'Sounds(id: $id, audio: $audio, duration: $duration, name: $name, description: $description, thum: $thum, sound_section_id: $sound_section_id, uploaded_by: $uploaded_by, publish: $publish, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sounds &&
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
  _$$_SoundsCopyWith<_$_Sounds> get copyWith =>
      __$$_SoundsCopyWithImpl<_$_Sounds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SoundsToJson(
      this,
    );
  }
}

abstract class _Sounds implements Sounds {
  const factory _Sounds(
      {final String? id,
      final String? audio,
      final String? duration,
      final String? name,
      final String? description,
      final String? thum,
      final String? sound_section_id,
      final String? uploaded_by,
      final String? publish,
      final DateTime? created}) = _$_Sounds;

  factory _Sounds.fromJson(Map<String, dynamic> json) = _$_Sounds.fromJson;

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
  _$$_SoundsCopyWith<_$_Sounds> get copyWith =>
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
  String get authToken => throw _privateConstructorUsedError;
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
  String get button => throw _privateConstructorUsedError;

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
      String authToken,
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
      String button});
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
    Object? authToken = null,
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
    Object? button = null,
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
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
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
      button: null == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as String,
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
      String authToken,
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
      String button});
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
    Object? authToken = null,
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
    Object? button = null,
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
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
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
      button: null == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.authToken,
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
      required this.button});

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
  final String button;

  @override
  String toString() {
    return 'Users(id: $id, first_name: $first_name, last_name: $last_name, gender: $gender, bio: $bio, website: $website, dob: $dob, social_id: $social_id, email: $email, phone: $phone, password: $password, profile_pic: $profile_pic, profile_pic_small: $profile_pic_small, role: $role, username: $username, social: $social, device_token: $device_token, token: $token, active: $active, lat: $lat, long: $long, online: $online, verified: $verified, authToken: $authToken, version: $version, device: $device, ip: $ip, city: $city, country: $country, city_id: $city_id, state_id: $state_id, country_id: $country_id, wallet: $wallet, paypal: $paypal, reset_wallet_datetime: $reset_wallet_datetime, fb_id: $fb_id, created: $created, button: $button)';
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
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
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
        authToken,
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
        button
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
      required final String authToken,
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
      required final String button}) = _$_Users;

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
  String get button;
  @override
  @JsonKey(ignore: true)
  _$$_UsersCopyWith<_$_Users> get copyWith =>
      throw _privateConstructorUsedError;
}

Videos _$VideosFromJson(Map<String, dynamic> json) {
  return _Videos.fromJson(json);
}

/// @nodoc
mixin _$Videos {
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
  $VideosCopyWith<Videos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosCopyWith<$Res> {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) then) =
      _$VideosCopyWithImpl<$Res, Videos>;
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
class _$VideosCopyWithImpl<$Res, $Val extends Videos>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._value, this._then);

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
abstract class _$$_VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$$_VideosCopyWith(_$_Videos value, $Res Function(_$_Videos) then) =
      __$$_VideosCopyWithImpl<$Res>;
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
class __$$_VideosCopyWithImpl<$Res>
    extends _$VideosCopyWithImpl<$Res, _$_Videos>
    implements _$$_VideosCopyWith<$Res> {
  __$$_VideosCopyWithImpl(_$_Videos _value, $Res Function(_$_Videos) _then)
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
    return _then(_$_Videos(
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
class _$_Videos implements _Videos {
  const _$_Videos(
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

  factory _$_Videos.fromJson(Map<String, dynamic> json) =>
      _$$_VideosFromJson(json);

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
    return 'Videos(id: $id, user_id: $user_id, description: $description, video: $video, thum: $thum, gif: $gif, view: $view, section: $section, sound_id: $sound_id, privacy_type: $privacy_type, allow_comments: $allow_comments, allow_duet: $allow_duet, block: $block, duet_video_id: $duet_video_id, old_video_id: $old_video_id, duration: $duration, promote: $promote, created: $created, like: $like, favourite: $favourite, comment_count: $comment_count, like_count: $like_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Videos &&
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
  _$$_VideosCopyWith<_$_Videos> get copyWith =>
      __$$_VideosCopyWithImpl<_$_Videos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideosToJson(
      this,
    );
  }
}

abstract class _Videos implements Videos {
  const factory _Videos(
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
      required final int like_count}) = _$_Videos;

  factory _Videos.fromJson(Map<String, dynamic> json) = _$_Videos.fromJson;

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
  _$$_VideosCopyWith<_$_Videos> get copyWith =>
      throw _privateConstructorUsedError;
}
