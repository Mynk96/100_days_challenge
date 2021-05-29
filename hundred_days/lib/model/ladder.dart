import 'package:freezed_annotation/freezed_annotation.dart';

part 'ladder.freezed.dart';
part 'ladder.g.dart';

@freezed
class Ladder with _$Ladder{
  const factory Ladder({
    required String id,
    required String title,
    required String description,
    required List<String> challengeIds
  }) = _Ladder;

  factory Ladder.fromJson(Map<String, dynamic> json) => _$LadderFromJson(json);
}

@freezed
class Ladders with _$Ladders{
  const factory Ladders.data(List<Ladder> ladders) = LaddersData;
  const factory Ladders.loading() = LaddersLoading;
  const factory Ladders.error(Object error, StackTrace st) = LaddersError;

}


