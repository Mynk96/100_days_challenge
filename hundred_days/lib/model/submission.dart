import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission.freezed.dart';
part 'submission.g.dart';


@freezed
class Submission with _$Submission{
  const factory Submission({
    required String id,
    required String challengeId,
    required bool isPublic,
    required String submittedById,
    required String submittedByName,
    required String challengeName,
    @JsonKey(fromJson: _fromJson, toJson: _toJson) required Timestamp submittedAt,
    required String url,
    required List<String> likedBy
  }) = _Submission;
  factory Submission.fromJson(Map<String, dynamic> json) => _$SubmissionFromJson(json);
}

Timestamp _fromJson(Timestamp? json) => json!;
String _toJson(Timestamp? object) => object!.millisecondsSinceEpoch.toString();