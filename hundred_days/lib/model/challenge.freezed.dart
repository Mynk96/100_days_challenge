// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Challenge _$ChallengeFromJson(Map<String, dynamic> json) {
  return _Challenge.fromJson(json);
}

/// @nodoc
class _$ChallengeTearOff {
  const _$ChallengeTearOff();

  _Challenge call(
      @JsonKey(fromJson: _fromJson, toJson: _toJson) Timestamp? dateOfChallenge,
      String description,
      String resourceUrl,
      String title,
      int id) {
    return _Challenge(
      dateOfChallenge,
      description,
      resourceUrl,
      title,
      id,
    );
  }

  Challenge fromJson(Map<String, Object> json) {
    return Challenge.fromJson(json);
  }
}

/// @nodoc
const $Challenge = _$ChallengeTearOff();

/// @nodoc
mixin _$Challenge {
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  Timestamp? get dateOfChallenge => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get resourceUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengeCopyWith<Challenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeCopyWith<$Res> {
  factory $ChallengeCopyWith(Challenge value, $Res Function(Challenge) then) =
      _$ChallengeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: _fromJson, toJson: _toJson)
          Timestamp? dateOfChallenge,
      String description,
      String resourceUrl,
      String title,
      int id});
}

/// @nodoc
class _$ChallengeCopyWithImpl<$Res> implements $ChallengeCopyWith<$Res> {
  _$ChallengeCopyWithImpl(this._value, this._then);

  final Challenge _value;
  // ignore: unused_field
  final $Res Function(Challenge) _then;

  @override
  $Res call({
    Object? dateOfChallenge = freezed,
    Object? description = freezed,
    Object? resourceUrl = freezed,
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      dateOfChallenge: dateOfChallenge == freezed
          ? _value.dateOfChallenge
          : dateOfChallenge // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      resourceUrl: resourceUrl == freezed
          ? _value.resourceUrl
          : resourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ChallengeCopyWith<$Res> implements $ChallengeCopyWith<$Res> {
  factory _$ChallengeCopyWith(
          _Challenge value, $Res Function(_Challenge) then) =
      __$ChallengeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: _fromJson, toJson: _toJson)
          Timestamp? dateOfChallenge,
      String description,
      String resourceUrl,
      String title,
      int id});
}

/// @nodoc
class __$ChallengeCopyWithImpl<$Res> extends _$ChallengeCopyWithImpl<$Res>
    implements _$ChallengeCopyWith<$Res> {
  __$ChallengeCopyWithImpl(_Challenge _value, $Res Function(_Challenge) _then)
      : super(_value, (v) => _then(v as _Challenge));

  @override
  _Challenge get _value => super._value as _Challenge;

  @override
  $Res call({
    Object? dateOfChallenge = freezed,
    Object? description = freezed,
    Object? resourceUrl = freezed,
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_Challenge(
      dateOfChallenge == freezed
          ? _value.dateOfChallenge
          : dateOfChallenge // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      resourceUrl == freezed
          ? _value.resourceUrl
          : resourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Challenge implements _Challenge {
  const _$_Challenge(
      @JsonKey(fromJson: _fromJson, toJson: _toJson) this.dateOfChallenge,
      this.description,
      this.resourceUrl,
      this.title,
      this.id);

  factory _$_Challenge.fromJson(Map<String, dynamic> json) =>
      _$_$_ChallengeFromJson(json);

  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final Timestamp? dateOfChallenge;
  @override
  final String description;
  @override
  final String resourceUrl;
  @override
  final String title;
  @override
  final int id;

  @override
  String toString() {
    return 'Challenge(dateOfChallenge: $dateOfChallenge, description: $description, resourceUrl: $resourceUrl, title: $title, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Challenge &&
            (identical(other.dateOfChallenge, dateOfChallenge) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfChallenge, dateOfChallenge)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.resourceUrl, resourceUrl) ||
                const DeepCollectionEquality()
                    .equals(other.resourceUrl, resourceUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateOfChallenge) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(resourceUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ChallengeCopyWith<_Challenge> get copyWith =>
      __$ChallengeCopyWithImpl<_Challenge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChallengeToJson(this);
  }
}

abstract class _Challenge implements Challenge {
  const factory _Challenge(
      @JsonKey(fromJson: _fromJson, toJson: _toJson) Timestamp? dateOfChallenge,
      String description,
      String resourceUrl,
      String title,
      int id) = _$_Challenge;

  factory _Challenge.fromJson(Map<String, dynamic> json) =
      _$_Challenge.fromJson;

  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  Timestamp? get dateOfChallenge => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get resourceUrl => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChallengeCopyWith<_Challenge> get copyWith =>
      throw _privateConstructorUsedError;
}
