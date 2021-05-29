import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge.freezed.dart';
part 'challenge.g.dart';

@freezed
class Challenge with _$Challenge{
  const factory Challenge({
    @JsonKey(fromJson: _fromJson, toJson: _toJson) required Timestamp dateOfChallenge,
    required String description,
    required List<String> resourceUrl,
    required String title,
    required String id,
    required bool isPublic,
    required bool isDailyChallenge,
    List<String>? submissionIds,
    int? ladderId
  }) = _Challenge;

  factory Challenge.fromJson(Map<String, dynamic> json) => _$ChallengeFromJson(json);
}

@freezed
class Challenges with _$Challenges{
  const factory Challenges.data(List<Challenge> challenges) = ChallengesData;
  const factory Challenges.loading() = ChallengesLoading;
  const factory Challenges.error(Object error, StackTrace st) = ChallengesError;
}

Timestamp _fromJson(Timestamp? json) => json!;
String _toJson(Timestamp? object) => object!.millisecondsSinceEpoch.toString();
