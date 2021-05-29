import 'package:freezed_annotation/freezed_annotation.dart';

part 'ladder_info.freezed.dart';
part 'ladder_info.g.dart';

@freezed
class LadderInfo with _$LadderInfo{
  const factory LadderInfo({
    required String ladderId,
    required String currentChallenge
  }) = _LadderInfo;
  factory LadderInfo.fromJson(Map<String, dynamic> json) => _$LadderInfoFromJson(json);
}

