// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Metrics _$MetricsFromJson(Map<String, dynamic> json) {
  return _Metrics.fromJson(json);
}

/// @nodoc
class _$MetricsTearOff {
  const _$MetricsTearOff();

  _Metrics call({required int submissionCount}) {
    return _Metrics(
      submissionCount: submissionCount,
    );
  }

  Metrics fromJson(Map<String, Object> json) {
    return Metrics.fromJson(json);
  }
}

/// @nodoc
const $Metrics = _$MetricsTearOff();

/// @nodoc
mixin _$Metrics {
  int get submissionCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetricsCopyWith<Metrics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricsCopyWith<$Res> {
  factory $MetricsCopyWith(Metrics value, $Res Function(Metrics) then) =
      _$MetricsCopyWithImpl<$Res>;
  $Res call({int submissionCount});
}

/// @nodoc
class _$MetricsCopyWithImpl<$Res> implements $MetricsCopyWith<$Res> {
  _$MetricsCopyWithImpl(this._value, this._then);

  final Metrics _value;
  // ignore: unused_field
  final $Res Function(Metrics) _then;

  @override
  $Res call({
    Object? submissionCount = freezed,
  }) {
    return _then(_value.copyWith(
      submissionCount: submissionCount == freezed
          ? _value.submissionCount
          : submissionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MetricsCopyWith<$Res> implements $MetricsCopyWith<$Res> {
  factory _$MetricsCopyWith(_Metrics value, $Res Function(_Metrics) then) =
      __$MetricsCopyWithImpl<$Res>;
  @override
  $Res call({int submissionCount});
}

/// @nodoc
class __$MetricsCopyWithImpl<$Res> extends _$MetricsCopyWithImpl<$Res>
    implements _$MetricsCopyWith<$Res> {
  __$MetricsCopyWithImpl(_Metrics _value, $Res Function(_Metrics) _then)
      : super(_value, (v) => _then(v as _Metrics));

  @override
  _Metrics get _value => super._value as _Metrics;

  @override
  $Res call({
    Object? submissionCount = freezed,
  }) {
    return _then(_Metrics(
      submissionCount: submissionCount == freezed
          ? _value.submissionCount
          : submissionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Metrics implements _Metrics {
  const _$_Metrics({required this.submissionCount});

  factory _$_Metrics.fromJson(Map<String, dynamic> json) =>
      _$_$_MetricsFromJson(json);

  @override
  final int submissionCount;

  @override
  String toString() {
    return 'Metrics(submissionCount: $submissionCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Metrics &&
            (identical(other.submissionCount, submissionCount) ||
                const DeepCollectionEquality()
                    .equals(other.submissionCount, submissionCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(submissionCount);

  @JsonKey(ignore: true)
  @override
  _$MetricsCopyWith<_Metrics> get copyWith =>
      __$MetricsCopyWithImpl<_Metrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MetricsToJson(this);
  }
}

abstract class _Metrics implements Metrics {
  const factory _Metrics({required int submissionCount}) = _$_Metrics;

  factory _Metrics.fromJson(Map<String, dynamic> json) = _$_Metrics.fromJson;

  @override
  int get submissionCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MetricsCopyWith<_Metrics> get copyWith =>
      throw _privateConstructorUsedError;
}
