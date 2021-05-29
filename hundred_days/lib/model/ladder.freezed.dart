// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ladder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ladder _$LadderFromJson(Map<String, dynamic> json) {
  return _Ladder.fromJson(json);
}

/// @nodoc
class _$LadderTearOff {
  const _$LadderTearOff();

  _Ladder call(
      {required String id,
      required String title,
      required String description,
      required List<String> challengeIds}) {
    return _Ladder(
      id: id,
      title: title,
      description: description,
      challengeIds: challengeIds,
    );
  }

  Ladder fromJson(Map<String, Object> json) {
    return Ladder.fromJson(json);
  }
}

/// @nodoc
const $Ladder = _$LadderTearOff();

/// @nodoc
mixin _$Ladder {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get challengeIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LadderCopyWith<Ladder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LadderCopyWith<$Res> {
  factory $LadderCopyWith(Ladder value, $Res Function(Ladder) then) =
      _$LadderCopyWithImpl<$Res>;
  $Res call(
      {String id, String title, String description, List<String> challengeIds});
}

/// @nodoc
class _$LadderCopyWithImpl<$Res> implements $LadderCopyWith<$Res> {
  _$LadderCopyWithImpl(this._value, this._then);

  final Ladder _value;
  // ignore: unused_field
  final $Res Function(Ladder) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? challengeIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      challengeIds: challengeIds == freezed
          ? _value.challengeIds
          : challengeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$LadderCopyWith<$Res> implements $LadderCopyWith<$Res> {
  factory _$LadderCopyWith(_Ladder value, $Res Function(_Ladder) then) =
      __$LadderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String title, String description, List<String> challengeIds});
}

/// @nodoc
class __$LadderCopyWithImpl<$Res> extends _$LadderCopyWithImpl<$Res>
    implements _$LadderCopyWith<$Res> {
  __$LadderCopyWithImpl(_Ladder _value, $Res Function(_Ladder) _then)
      : super(_value, (v) => _then(v as _Ladder));

  @override
  _Ladder get _value => super._value as _Ladder;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? challengeIds = freezed,
  }) {
    return _then(_Ladder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      challengeIds: challengeIds == freezed
          ? _value.challengeIds
          : challengeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ladder implements _Ladder {
  const _$_Ladder(
      {required this.id,
      required this.title,
      required this.description,
      required this.challengeIds});

  factory _$_Ladder.fromJson(Map<String, dynamic> json) =>
      _$_$_LadderFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final List<String> challengeIds;

  @override
  String toString() {
    return 'Ladder(id: $id, title: $title, description: $description, challengeIds: $challengeIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ladder &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.challengeIds, challengeIds) ||
                const DeepCollectionEquality()
                    .equals(other.challengeIds, challengeIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(challengeIds);

  @JsonKey(ignore: true)
  @override
  _$LadderCopyWith<_Ladder> get copyWith =>
      __$LadderCopyWithImpl<_Ladder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LadderToJson(this);
  }
}

abstract class _Ladder implements Ladder {
  const factory _Ladder(
      {required String id,
      required String title,
      required String description,
      required List<String> challengeIds}) = _$_Ladder;

  factory _Ladder.fromJson(Map<String, dynamic> json) = _$_Ladder.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  List<String> get challengeIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LadderCopyWith<_Ladder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LaddersTearOff {
  const _$LaddersTearOff();

  LaddersData data(List<Ladder> ladders) {
    return LaddersData(
      ladders,
    );
  }

  LaddersLoading loading() {
    return const LaddersLoading();
  }

  LaddersError error(Object error, StackTrace st) {
    return LaddersError(
      error,
      st,
    );
  }
}

/// @nodoc
const $Ladders = _$LaddersTearOff();

/// @nodoc
mixin _$Ladders {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ladder> ladders) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace st) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ladder> ladders)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace st)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaddersData value) data,
    required TResult Function(LaddersLoading value) loading,
    required TResult Function(LaddersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaddersData value)? data,
    TResult Function(LaddersLoading value)? loading,
    TResult Function(LaddersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaddersCopyWith<$Res> {
  factory $LaddersCopyWith(Ladders value, $Res Function(Ladders) then) =
      _$LaddersCopyWithImpl<$Res>;
}

/// @nodoc
class _$LaddersCopyWithImpl<$Res> implements $LaddersCopyWith<$Res> {
  _$LaddersCopyWithImpl(this._value, this._then);

  final Ladders _value;
  // ignore: unused_field
  final $Res Function(Ladders) _then;
}

/// @nodoc
abstract class $LaddersDataCopyWith<$Res> {
  factory $LaddersDataCopyWith(
          LaddersData value, $Res Function(LaddersData) then) =
      _$LaddersDataCopyWithImpl<$Res>;
  $Res call({List<Ladder> ladders});
}

/// @nodoc
class _$LaddersDataCopyWithImpl<$Res> extends _$LaddersCopyWithImpl<$Res>
    implements $LaddersDataCopyWith<$Res> {
  _$LaddersDataCopyWithImpl(
      LaddersData _value, $Res Function(LaddersData) _then)
      : super(_value, (v) => _then(v as LaddersData));

  @override
  LaddersData get _value => super._value as LaddersData;

  @override
  $Res call({
    Object? ladders = freezed,
  }) {
    return _then(LaddersData(
      ladders == freezed
          ? _value.ladders
          : ladders // ignore: cast_nullable_to_non_nullable
              as List<Ladder>,
    ));
  }
}

/// @nodoc

class _$LaddersData implements LaddersData {
  const _$LaddersData(this.ladders);

  @override
  final List<Ladder> ladders;

  @override
  String toString() {
    return 'Ladders.data(ladders: $ladders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LaddersData &&
            (identical(other.ladders, ladders) ||
                const DeepCollectionEquality().equals(other.ladders, ladders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ladders);

  @JsonKey(ignore: true)
  @override
  $LaddersDataCopyWith<LaddersData> get copyWith =>
      _$LaddersDataCopyWithImpl<LaddersData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ladder> ladders) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace st) error,
  }) {
    return data(ladders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ladder> ladders)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace st)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(ladders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaddersData value) data,
    required TResult Function(LaddersLoading value) loading,
    required TResult Function(LaddersError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaddersData value)? data,
    TResult Function(LaddersLoading value)? loading,
    TResult Function(LaddersError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class LaddersData implements Ladders {
  const factory LaddersData(List<Ladder> ladders) = _$LaddersData;

  List<Ladder> get ladders => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaddersDataCopyWith<LaddersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaddersLoadingCopyWith<$Res> {
  factory $LaddersLoadingCopyWith(
          LaddersLoading value, $Res Function(LaddersLoading) then) =
      _$LaddersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LaddersLoadingCopyWithImpl<$Res> extends _$LaddersCopyWithImpl<$Res>
    implements $LaddersLoadingCopyWith<$Res> {
  _$LaddersLoadingCopyWithImpl(
      LaddersLoading _value, $Res Function(LaddersLoading) _then)
      : super(_value, (v) => _then(v as LaddersLoading));

  @override
  LaddersLoading get _value => super._value as LaddersLoading;
}

/// @nodoc

class _$LaddersLoading implements LaddersLoading {
  const _$LaddersLoading();

  @override
  String toString() {
    return 'Ladders.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LaddersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ladder> ladders) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace st) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ladder> ladders)? data,
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
    required TResult Function(LaddersData value) data,
    required TResult Function(LaddersLoading value) loading,
    required TResult Function(LaddersError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaddersData value)? data,
    TResult Function(LaddersLoading value)? loading,
    TResult Function(LaddersError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LaddersLoading implements Ladders {
  const factory LaddersLoading() = _$LaddersLoading;
}

/// @nodoc
abstract class $LaddersErrorCopyWith<$Res> {
  factory $LaddersErrorCopyWith(
          LaddersError value, $Res Function(LaddersError) then) =
      _$LaddersErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace st});
}

/// @nodoc
class _$LaddersErrorCopyWithImpl<$Res> extends _$LaddersCopyWithImpl<$Res>
    implements $LaddersErrorCopyWith<$Res> {
  _$LaddersErrorCopyWithImpl(
      LaddersError _value, $Res Function(LaddersError) _then)
      : super(_value, (v) => _then(v as LaddersError));

  @override
  LaddersError get _value => super._value as LaddersError;

  @override
  $Res call({
    Object? error = freezed,
    Object? st = freezed,
  }) {
    return _then(LaddersError(
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

class _$LaddersError implements LaddersError {
  const _$LaddersError(this.error, this.st);

  @override
  final Object error;
  @override
  final StackTrace st;

  @override
  String toString() {
    return 'Ladders.error(error: $error, st: $st)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LaddersError &&
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
  $LaddersErrorCopyWith<LaddersError> get copyWith =>
      _$LaddersErrorCopyWithImpl<LaddersError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ladder> ladders) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace st) error,
  }) {
    return error(this.error, st);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ladder> ladders)? data,
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
    required TResult Function(LaddersData value) data,
    required TResult Function(LaddersLoading value) loading,
    required TResult Function(LaddersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaddersData value)? data,
    TResult Function(LaddersLoading value)? loading,
    TResult Function(LaddersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LaddersError implements Ladders {
  const factory LaddersError(Object error, StackTrace st) = _$LaddersError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get st => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaddersErrorCopyWith<LaddersError> get copyWith =>
      throw _privateConstructorUsedError;
}
