// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Submission _$_$_SubmissionFromJson(Map<String, dynamic> json) {
  return _$_Submission(
    id: json['id'] as String,
    challengeId: json['challengeId'] as String,
    isPublic: json['isPublic'] as bool,
    submittedById: json['submittedById'] as String,
    submittedByName: json['submittedByName'] as String,
    challengeName: json['challengeName'] as String,
    submittedAt: _fromJson(json['submittedAt'] as Timestamp?),
    url: json['url'] as String,
    likedBy:
        (json['likedBy'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_SubmissionToJson(_$_Submission instance) =>
    <String, dynamic>{
      'id': instance.id,
      'challengeId': instance.challengeId,
      'isPublic': instance.isPublic,
      'submittedById': instance.submittedById,
      'submittedByName': instance.submittedByName,
      'challengeName': instance.challengeName,
      'submittedAt': _toJson(instance.submittedAt),
      'url': instance.url,
      'likedBy': instance.likedBy,
    };
