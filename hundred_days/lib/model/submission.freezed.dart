// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Submission _$SubmissionFromJson(Map<String, dynamic> json) {
  return _Submission.fromJson(json);
}

/// @nodoc
class _$SubmissionTearOff {
  const _$SubmissionTearOff();

  _Submission call(
      {required String id,
      required String challengeId,
      required bool isPublic,
      required String submittedById,
      required String submittedByName,
      required String challengeName,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required Timestamp submittedAt,
      required String url,
      required List<String> likedBy}) {
    return _Submission(
      id: id,
      challengeId: challengeId,
      isPublic: isPublic,
      submittedById: submittedById,
      submittedByName: submittedByName,
      challengeName: challengeName,
      submittedAt: submittedAt,
      url: url,
      likedBy: likedBy,
    );
  }

  Submission fromJson(Map<String, Object> json) {
    return Submission.fromJson(json);
  }
}

/// @nodoc
const $Submission = _$SubmissionTearOff();

/// @nodoc
mixin _$Submission {
  String get id => throw _privateConstructorUsedError;
  String get challengeId => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  String get submittedById => throw _privateConstructorUsedError;
  String get submittedByName => throw _privateConstructorUsedError;
  String get challengeName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  Timestamp get submittedAt => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<String> get likedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionCopyWith<Submission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionCopyWith<$Res> {
  factory $SubmissionCopyWith(
          Submission value, $Res Function(Submission) then) =
      _$SubmissionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String challengeId,
      bool isPublic,
      String submittedById,
      String submittedByName,
      String challengeName,
      @JsonKey(fromJson: _fromJson, toJson: _toJson) Timestamp submittedAt,
      String url,
      List<String> likedBy});
}

/// @nodoc
class _$SubmissionCopyWithImpl<$Res> implements $SubmissionCopyWith<$Res> {
  _$SubmissionCopyWithImpl(this._value, this._then);

  final Submission _value;
  // ignore: unused_field
  final $Res Function(Submission) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? challengeId = freezed,
    Object? isPublic = freezed,
    Object? submittedById = freezed,
    Object? submittedByName = freezed,
    Object? challengeName = freezed,
    Object? submittedAt = freezed,
    Object? url = freezed,
    Object? likedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      challengeId: challengeId == freezed
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      submittedById: submittedById == freezed
          ? _value.submittedById
          : submittedById // ignore: cast_nullable_to_non_nullable
              as String,
      submittedByName: submittedByName == freezed
          ? _value.submittedByName
          : submittedByName // ignore: cast_nullable_to_non_nullable
              as String,
      challengeName: challengeName == freezed
          ? _value.challengeName
          : challengeName // ignore: cast_nullable_to_non_nullable
              as String,
      submittedAt: submittedAt == freezed
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$SubmissionCopyWith<$Res> implements $SubmissionCopyWith<$Res> {
  factory _$SubmissionCopyWith(
          _Submission value, $Res Function(_Submission) then) =
      __$SubmissionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String challengeId,
      bool isPublic,
      String submittedById,
      String submittedByName,
      String challengeName,
      @JsonKey(fromJson: _fromJson, toJson: _toJson) Timestamp submittedAt,
      String url,
      List<String> likedBy});
}

/// @nodoc
class __$SubmissionCopyWithImpl<$Res> extends _$SubmissionCopyWithImpl<$Res>
    implements _$SubmissionCopyWith<$Res> {
  __$SubmissionCopyWithImpl(
      _Submission _value, $Res Function(_Submission) _then)
      : super(_value, (v) => _then(v as _Submission));

  @override
  _Submission get _value => super._value as _Submission;

  @override
  $Res call({
    Object? id = freezed,
    Object? challengeId = freezed,
    Object? isPublic = freezed,
    Object? submittedById = freezed,
    Object? submittedByName = freezed,
    Object? challengeName = freezed,
    Object? submittedAt = freezed,
    Object? url = freezed,
    Object? likedBy = freezed,
  }) {
    return _then(_Submission(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      challengeId: challengeId == freezed
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      submittedById: submittedById == freezed
          ? _value.submittedById
          : submittedById // ignore: cast_nullable_to_non_nullable
              as String,
      submittedByName: submittedByName == freezed
          ? _value.submittedByName
          : submittedByName // ignore: cast_nullable_to_non_nullable
              as String,
      challengeName: challengeName == freezed
          ? _value.challengeName
          : challengeName // ignore: cast_nullable_to_non_nullable
              as String,
      submittedAt: submittedAt == freezed
          ? _value.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Submission implements _Submission {
  const _$_Submission(
      {required this.id,
      required this.challengeId,
      required this.isPublic,
      required this.submittedById,
      required this.submittedByName,
      required this.challengeName,
      @JsonKey(fromJson: _fromJson, toJson: _toJson) required this.submittedAt,
      required this.url,
      required this.likedBy});

  factory _$_Submission.fromJson(Map<String, dynamic> json) =>
      _$_$_SubmissionFromJson(json);

  @override
  final String id;
  @override
  final String challengeId;
  @override
  final bool isPublic;
  @override
  final String submittedById;
  @override
  final String submittedByName;
  @override
  final String challengeName;
  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final Timestamp submittedAt;
  @override
  final String url;
  @override
  final List<String> likedBy;

  @override
  String toString() {
    return 'Submission(id: $id, challengeId: $challengeId, isPublic: $isPublic, submittedById: $submittedById, submittedByName: $submittedByName, challengeName: $challengeName, submittedAt: $submittedAt, url: $url, likedBy: $likedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Submission &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.challengeId, challengeId) ||
                const DeepCollectionEquality()
                    .equals(other.challengeId, challengeId)) &&
            (identical(other.isPublic, isPublic) ||
                const DeepCollectionEquality()
                    .equals(other.isPublic, isPublic)) &&
            (identical(other.submittedById, submittedById) ||
                const DeepCollectionEquality()
                    .equals(other.submittedById, submittedById)) &&
            (identical(other.submittedByName, submittedByName) ||
                const DeepCollectionEquality()
                    .equals(other.submittedByName, submittedByName)) &&
            (identical(other.challengeName, challengeName) ||
                const DeepCollectionEquality()
                    .equals(other.challengeName, challengeName)) &&
            (identical(other.submittedAt, submittedAt) ||
                const DeepCollectionEquality()
                    .equals(other.submittedAt, submittedAt)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.likedBy, likedBy) ||
                const DeepCollectionEquality().equals(other.likedBy, likedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(challengeId) ^
      const DeepCollectionEquality().hash(isPublic) ^
      const DeepCollectionEquality().hash(submittedById) ^
      const DeepCollectionEquality().hash(submittedByName) ^
      const DeepCollectionEquality().hash(challengeName) ^
      const DeepCollectionEquality().hash(submittedAt) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(likedBy);

  @JsonKey(ignore: true)
  @override
  _$SubmissionCopyWith<_Submission> get copyWith =>
      __$SubmissionCopyWithImpl<_Submission>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubmissionToJson(this);
  }
}

abstract class _Submission implements Submission {
  const factory _Submission(
      {required String id,
      required String challengeId,
      required bool isPublic,
      required String submittedById,
      required String submittedByName,
      required String challengeName,
      @JsonKey(fromJson: _fromJson, toJson: _toJson)
          required Timestamp submittedAt,
      required String url,
      required List<String> likedBy}) = _$_Submission;

  factory _Submission.fromJson(Map<String, dynamic> json) =
      _$_Submission.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get challengeId => throw _privateConstructorUsedError;
  @override
  bool get isPublic => throw _privateConstructorUsedError;
  @override
  String get submittedById => throw _privateConstructorUsedError;
  @override
  String get submittedByName => throw _privateConstructorUsedError;
  @override
  String get challengeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  Timestamp get submittedAt => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  List<String> get likedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubmissionCopyWith<_Submission> get copyWith =>
      throw _privateConstructorUsedError;
}
