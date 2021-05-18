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

  _Submission call({String? url, int? challengeId}) {
    return _Submission(
      url: url,
      challengeId: challengeId,
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
  String? get url => throw _privateConstructorUsedError;
  int? get challengeId => throw _privateConstructorUsedError;

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
  $Res call({String? url, int? challengeId});
}

/// @nodoc
class _$SubmissionCopyWithImpl<$Res> implements $SubmissionCopyWith<$Res> {
  _$SubmissionCopyWithImpl(this._value, this._then);

  final Submission _value;
  // ignore: unused_field
  final $Res Function(Submission) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? challengeId = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      challengeId: challengeId == freezed
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SubmissionCopyWith<$Res> implements $SubmissionCopyWith<$Res> {
  factory _$SubmissionCopyWith(
          _Submission value, $Res Function(_Submission) then) =
      __$SubmissionCopyWithImpl<$Res>;
  @override
  $Res call({String? url, int? challengeId});
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
    Object? url = freezed,
    Object? challengeId = freezed,
  }) {
    return _then(_Submission(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      challengeId: challengeId == freezed
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Submission implements _Submission {
  const _$_Submission({this.url, this.challengeId});

  factory _$_Submission.fromJson(Map<String, dynamic> json) =>
      _$_$_SubmissionFromJson(json);

  @override
  final String? url;
  @override
  final int? challengeId;

  @override
  String toString() {
    return 'Submission(url: $url, challengeId: $challengeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Submission &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.challengeId, challengeId) ||
                const DeepCollectionEquality()
                    .equals(other.challengeId, challengeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(challengeId);

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
  const factory _Submission({String? url, int? challengeId}) = _$_Submission;

  factory _Submission.fromJson(Map<String, dynamic> json) =
      _$_Submission.fromJson;

  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  int? get challengeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubmissionCopyWith<_Submission> get copyWith =>
      throw _privateConstructorUsedError;
}
