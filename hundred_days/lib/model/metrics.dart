import 'package:freezed_annotation/freezed_annotation.dart';

part 'metrics.freezed.dart';
part 'metrics.g.dart';

@freezed
class Metrics with _$Metrics{
  const factory Metrics({
    required int submissionCount
  }) = _Metrics;
  factory Metrics.fromJson(Map<String, dynamic> json) => _$MetricsFromJson(json);
}
