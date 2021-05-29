// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Challenge _$_$_ChallengeFromJson(Map<String, dynamic> json) {
  return _$_Challenge(
    dateOfChallenge: _fromJson(json['dateOfChallenge'] as Timestamp?),
    description: json['description'] as String,
    resourceUrl:
        (json['resourceUrl'] as List<dynamic>).map((e) => e as String).toList(),
    title: json['title'] as String,
    id: json['id'] as String,
    isPublic: json['isPublic'] as bool,
    isDailyChallenge: json['isDailyChallenge'] as bool,
    submissionIds: (json['submissionIds'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    ladderId: json['ladderId'] as int?,
  );
}

Map<String, dynamic> _$_$_ChallengeToJson(_$_Challenge instance) =>
    <String, dynamic>{
      'dateOfChallenge': _toJson(instance.dateOfChallenge),
      'description': instance.description,
      'resourceUrl': instance.resourceUrl,
      'title': instance.title,
      'id': instance.id,
      'isPublic': instance.isPublic,
      'isDailyChallenge': instance.isDailyChallenge,
      'submissionIds': instance.submissionIds,
      'ladderId': instance.ladderId,
    };
