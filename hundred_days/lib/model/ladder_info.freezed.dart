// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ladder_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LadderInfo _$LadderInfoFromJson(Map<String, dynamic> json) {
  return _LadderInfo.fromJson(json);
}

/// @nodoc
class _$LadderInfoTearOff {
  const _$LadderInfoTearOff();

  _LadderInfo call(
      {required String ladderId, required String currentChallenge}) {
    return _LadderInfo(
      ladderId: ladderId,
      currentChallenge: currentChallenge,
    );
  }

  LadderInfo fromJson(Map<String, Object> json) {
    return LadderInfo.fromJson(json);
  }
}

/// @nodoc
const $LadderInfo = _$LadderInfoTearOff();

/// @nodoc
mixin _$LadderInfo {
  String get ladderId => throw _privateConstructorUsedError;
  String get currentChallenge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LadderInfoCopyWith<LadderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LadderInfoCopyWith<$Res> {
  factory $LadderInfoCopyWith(
          LadderInfo value, $Res Function(LadderInfo) then) =
      _$LadderInfoCopyWithImpl<$Res>;
  $Res call({String ladderId, String currentChallenge});
}

/// @nodoc
class _$LadderInfoCopyWithImpl<$Res> implements $LadderInfoCopyWith<$Res> {
  _$LadderInfoCopyWithImpl(this._value, this._then);

  final LadderInfo _value;
  // ignore: unused_field
  final $Res Function(LadderInfo) _then;

  @override
  $Res call({
    Object? ladderId = freezed,
    Object? currentChallenge = freezed,
  }) {
    return _then(_value.copyWith(
      ladderId: ladderId == freezed
          ? _value.ladderId
          : ladderId // ignore: cast_nullable_to_non_nullable
              as String,
      currentChallenge: currentChallenge == freezed
          ? _value.currentChallenge
          : currentChallenge // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LadderInfoCopyWith<$Res> implements $LadderInfoCopyWith<$Res> {
  factory _$LadderInfoCopyWith(
          _LadderInfo value, $Res Function(_LadderInfo) then) =
      __$LadderInfoCopyWithImpl<$Res>;
  @override
  $Res call({String ladderId, String currentChallenge});
}

/// @nodoc
class __$LadderInfoCopyWithImpl<$Res> extends _$LadderInfoCopyWithImpl<$Res>
    implements _$LadderInfoCopyWith<$Res> {
  __$LadderInfoCopyWithImpl(
      _LadderInfo _value, $Res Function(_LadderInfo) _then)
      : super(_value, (v) => _then(v as _LadderInfo));

  @override
  _LadderInfo get _value => super._value as _LadderInfo;

  @override
  $Res call({
    Object? ladderId = freezed,
    Object? currentChallenge = freezed,
  }) {
    return _then(_LadderInfo(
      ladderId: ladderId == freezed
          ? _value.ladderId
          : ladderId // ignore: cast_nullable_to_non_nullable
              as String,
      currentChallenge: currentChallenge == freezed
          ? _value.currentChallenge
          : currentChallenge // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LadderInfo implements _LadderInfo {
  const _$_LadderInfo({required this.ladderId, required this.currentChallenge});

  factory _$_LadderInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_LadderInfoFromJson(json);

  @override
  final String ladderId;
  @override
  final String currentChallenge;

  @override
  String toString() {
    return 'LadderInfo(ladderId: $ladderId, currentChallenge: $currentChallenge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LadderInfo &&
            (identical(other.ladderId, ladderId) ||
                const DeepCollectionEquality()
                    .equals(other.ladderId, ladderId)) &&
            (identical(other.currentChallenge, currentChallenge) ||
                const DeepCollectionEquality()
                    .equals(other.currentChallenge, currentChallenge)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ladderId) ^
      const DeepCollectionEquality().hash(currentChallenge);

  @JsonKey(ignore: true)
  @override
  _$LadderInfoCopyWith<_LadderInfo> get copyWith =>
      __$LadderInfoCopyWithImpl<_LadderInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LadderInfoToJson(this);
  }
}

abstract class _LadderInfo implements LadderInfo {
  const factory _LadderInfo(
      {required String ladderId,
      required String currentChallenge}) = _$_LadderInfo;

  factory _LadderInfo.fromJson(Map<String, dynamic> json) =
      _$_LadderInfo.fromJson;

  @override
  String get ladderId => throw _privateConstructorUsedError;
  @override
  String get currentChallenge => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LadderInfoCopyWith<_LadderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
