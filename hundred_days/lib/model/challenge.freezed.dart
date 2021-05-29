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
      {@JsonKey(fromJson: _fromJson, toJson: _toJson)
          required Timestamp dateOfChallenge,
      required String description,
      required List<String> resourceUrl,
      required String title,
      required String id,
      required bool isPublic,
      required bool isDailyChallenge,
      List<String>? submissionIds,
      int? ladderId}) {
    return _Challenge(
      dateOfChallenge: dateOfChallenge,
      description: description,
      resourceUrl: resourceUrl,
      title: title,
      id: id,
      isPublic: isPublic,
      isDailyChallenge: isDailyChallenge,
      submissionIds: submissionIds,
      ladderId: ladderId,
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
  Timestamp get dateOfChallenge => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get resourceUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  bool get isDailyChallenge => throw _privateConstructorUsedError;
  List<String>? get submissionIds => throw _privateConstructorUsedError;
  int? get ladderId => throw _privateConstructorUsedError;

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
      {@JsonKey(fromJson: _fromJson, toJson: _toJson) Timestamp dateOfChallenge,
      String description,
      List<String> resourceUrl,
      String title,
      String id,
      bool isPublic,
      bool isDailyChallenge,
      List<String>? submissionIds,
      int? ladderId});
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
    Object? isPublic = freezed,
    Object? isDailyChallenge = freezed,
    Object? submissionIds = freezed,
    Object? ladderId = freezed,
  }) {
    return _then(_value.copyWith(
      dateOfChallenge: dateOfChallenge == freezed
          ? _value.dateOfChallenge
          : dateOfChallenge // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      resourceUrl: resourceUrl == freezed
          ? _value.resourceUrl
          : resourceUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isDailyChallenge: isDailyChallenge == freezed
          ? _value.isDailyChallenge
          : isDailyChallenge // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionIds: submissionIds == freezed
          ? _value.submissionIds
          : submissionIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ladderId: ladderId == freezed
          ? _value.ladderId
          : ladderId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(fromJson: _fromJson, toJson: _toJson) Timestamp dateOfChallenge,
      String description,
      List<String> resourceUrl,
      String title,
      String id,
      bool isPublic,
      bool isDailyChallenge,
      List<String>? submissionIds,
      int? ladderId});
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
    Object? isPublic = freezed,
    Object? isDailyChallenge = freezed,
    Object? submissionIds = freezed,
    Object? ladderId = freezed,
  }) {
    return _then(_Challenge(
      dateOfChallenge: dateOfChallenge == freezed
          ? _value.dateOfChallenge
          : dateOfChallenge // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      resourceUrl: resourceUrl == freezed
          ? _value.resourceUrl
          : resourceUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isDailyChallenge: isDailyChallenge == freezed
          ? _value.isDailyChallenge
          : isDailyChallenge // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionIds: submissionIds == freezed
          ? _value.submissionIds
          : submissionIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ladderId: ladderId == freezed
          ? _value.ladderId
          : ladderId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Challenge implements _Challenge {
  const _$_Challenge(
      {@JsonKey(fromJson: _fromJson, toJson: _toJson)
          required this.dateOfChallenge,
      required this.description,
      required this.resourceUrl,
      required this.title,
      required this.id,
      required this.isPublic,
      required this.isDailyChallenge,
      this.submissionIds,
      this.ladderId});

  factory _$_Challenge.fromJson(Map<String, dynamic> json) =>
      _$_$_ChallengeFromJson(json);

  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final Timestamp dateOfChallenge;
  @override
  final String description;
  @override
  final List<String> resourceUrl;
  @override
  final String title;
  @override
  final String id;
  @override
  final bool isPublic;
  @override
  final bool isDailyChallenge;
  @override
  final List<String>? submissionIds;
  @override
  final int? ladderId;

  @override
  String toString() {
    return 'Challenge(dateOfChallenge: $dateOfChallenge, description: $description, resourceUrl: $resourceUrl, title: $title, id: $id, isPublic: $isPublic, isDailyChallenge: $isDailyChallenge, submissionIds: $submissionIds, ladderId: $ladderId)';
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
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isPublic, isPublic) ||
                const DeepCollectionEquality()
                    .equals(other.isPublic, isPublic)) &&
            (identical(other.isDailyChallenge, isDailyChallenge) ||
                const DeepCollectionEquality()
                    .equals(other.isDailyChallenge, isDailyChallenge)) &&
            (identical(other.submissionIds, submissionIds) ||
                const DeepCollectionEquality()
                    .equals(other.submissionIds, submissionIds)) &&
            (identical(other.ladderId, ladderId) ||
                const DeepCollectionEquality()
                    .equals(other.ladderId, ladderId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateOfChallenge) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(resourceUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isPublic) ^
      const DeepCollectionEquality().hash(isDailyChallenge) ^
      const DeepCollectionEquality().hash(submissionIds) ^
      const DeepCollectionEquality().hash(ladderId);

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
      {@JsonKey(fromJson: _fromJson, toJson: _toJson)
          required Timestamp dateOfChallenge,
      required String description,
      required List<String> resourceUrl,
      required String title,
      required String id,
      required bool isPublic,
      required bool isDailyChallenge,
      List<String>? submissionIds,
      int? ladderId}) = _$_Challenge;

  factory _Challenge.fromJson(Map<String, dynamic> json) =
      _$_Challenge.fromJson;

  @override
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  Timestamp get dateOfChallenge => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  List<String> get resourceUrl => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  bool get isPublic => throw _privateConstructorUsedError;
  @override
  bool get isDailyChallenge => throw _privateConstructorUsedError;
  @override
  List<String>? get submissionIds => throw _privateConstructorUsedError;
  @override
  int? get ladderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChallengeCopyWith<_Challenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChallengesTearOff {
  const _$ChallengesTearOff();

  ChallengesData data(List<Challenge> challenges) {
    return ChallengesData(
      challenges,
    );
  }

  ChallengesLoading loading() {
    return const ChallengesLoading();
  }

  ChallengesError error(Object error, StackTrace st) {
    return ChallengesError(
      error,
      st,
    );
  }
}

/// @nodoc
const $Challenges = _$ChallengesTearOff();

/// @nodoc
mixin _$Challenges {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Challenge> challenges) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace st) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Challenge> challenges)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace st)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChallengesData value) data,
    required TResult Function(ChallengesLoading value) loading,
    required TResult Function(ChallengesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChallengesData value)? data,
    TResult Function(ChallengesLoading value)? loading,
    TResult Function(ChallengesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengesCopyWith<$Res> {
  factory $ChallengesCopyWith(
          Challenges value, $Res Function(Challenges) then) =
      _$ChallengesCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChallengesCopyWithImpl<$Res> implements $ChallengesCopyWith<$Res> {
  _$ChallengesCopyWithImpl(this._value, this._then);

  final Challenges _value;
  // ignore: unused_field
  final $Res Function(Challenges) _then;
}

/// @nodoc
abstract class $ChallengesDataCopyWith<$Res> {
  factory $ChallengesDataCopyWith(
          ChallengesData value, $Res Function(ChallengesData) then) =
      _$ChallengesDataCopyWithImpl<$Res>;
  $Res call({List<Challenge> challenges});
}

/// @nodoc
class _$ChallengesDataCopyWithImpl<$Res> extends _$ChallengesCopyWithImpl<$Res>
    implements $ChallengesDataCopyWith<$Res> {
  _$ChallengesDataCopyWithImpl(
      ChallengesData _value, $Res Function(ChallengesData) _then)
      : super(_value, (v) => _then(v as ChallengesData));

  @override
  ChallengesData get _value => super._value as ChallengesData;

  @override
  $Res call({
    Object? challenges = freezed,
  }) {
    return _then(ChallengesData(
      challenges == freezed
          ? _value.challenges
          : challenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
    ));
  }
}

/// @nodoc

class _$ChallengesData implements ChallengesData {
  const _$ChallengesData(this.challenges);

  @override
  final List<Challenge> challenges;

  @override
  String toString() {
    return 'Challenges.data(challenges: $challenges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChallengesData &&
            (identical(other.challenges, challenges) ||
                const DeepCollectionEquality()
                    .equals(other.challenges, challenges)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(challenges);

  @JsonKey(ignore: true)
  @override
  $ChallengesDataCopyWith<ChallengesData> get copyWith =>
      _$ChallengesDataCopyWithImpl<ChallengesData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Challenge> challenges) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace st) error,
  }) {
    return data(challenges);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Challenge> challenges)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace st)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(challenges);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChallengesData value) data,
    required TResult Function(ChallengesLoading value) loading,
    required TResult Function(ChallengesError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChallengesData value)? data,
    TResult Function(ChallengesLoading value)? loading,
    TResult Function(ChallengesError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ChallengesData implements Challenges {
  const factory ChallengesData(List<Challenge> challenges) = _$ChallengesData;

  List<Challenge> get challenges => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengesDataCopyWith<ChallengesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengesLoadingCopyWith<$Res> {
  factory $ChallengesLoadingCopyWith(
          ChallengesLoading value, $Res Function(ChallengesLoading) then) =
      _$ChallengesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChallengesLoadingCopyWithImpl<$Res>
    extends _$ChallengesCopyWithImpl<$Res>
    implements $ChallengesLoadingCopyWith<$Res> {
  _$ChallengesLoadingCopyWithImpl(
      ChallengesLoading _value, $Res Function(ChallengesLoading) _then)
      : super(_value, (v) => _then(v as ChallengesLoading));

  @override
  ChallengesLoading get _value => super._value as ChallengesLoading;
}

/// @nodoc

class _$ChallengesLoading implements ChallengesLoading {
  const _$ChallengesLoading();

  @override
  String toString() {
    return 'Challenges.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChallengesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Challenge> challenges) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace st) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Challenge> challenges)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace st)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChallengesData value) data,
    required TResult Function(ChallengesLoading value) loading,
    required TResult Function(ChallengesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChallengesData value)? data,
    TResult Function(ChallengesLoading value)? loading,
    TResult Function(ChallengesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChallengesLoading implements Challenges {
  const factory ChallengesLoading() = _$ChallengesLoading;
}

/// @nodoc
abstract class $ChallengesErrorCopyWith<$Res> {
  factory $ChallengesErrorCopyWith(
          ChallengesError value, $Res Function(ChallengesError) then) =
      _$ChallengesErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace st});
}

/// @nodoc
class _$ChallengesErrorCopyWithImpl<$Res> extends _$ChallengesCopyWithImpl<$Res>
    implements $ChallengesErrorCopyWith<$Res> {
  _$ChallengesErrorCopyWithImpl(
      ChallengesError _value, $Res Function(ChallengesError) _then)
      : super(_value, (v) => _then(v as ChallengesError));

  @override
  ChallengesError get _value => super._value as ChallengesError;

  @override
  $Res call({
    Object? error = freezed,
    Object? st = freezed,
  }) {
    return _then(ChallengesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      st == freezed
          ? _value.st
          : st // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ChallengesError implements ChallengesError {
  const _$ChallengesError(this.error, this.st);

  @override
  final Object error;
  @override
  final StackTrace st;

  @override
  String toString() {
    return 'Challenges.error(error: $error, st: $st)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChallengesError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.st, st) ||
                const DeepCollectionEquality().equals(other.st, st)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(st);

  @JsonKey(ignore: true)
  @override
  $ChallengesErrorCopyWith<ChallengesError> get copyWith =>
      _$ChallengesErrorCopyWithImpl<ChallengesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Challenge> challenges) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace st) error,
  }) {
    return error(this.error, st);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Challenge> challenges)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace st)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, st);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChallengesData value) data,
    required TResult Function(ChallengesLoading value) loading,
    required TResult Function(ChallengesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChallengesData value)? data,
    TResult Function(ChallengesLoading value)? loading,
    TResult Function(ChallengesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChallengesError implements Challenges {
  const factory ChallengesError(Object error, StackTrace st) =
      _$ChallengesError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get st => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengesErrorCopyWith<ChallengesError> get copyWith =>
      throw _privateConstructorUsedError;
}
