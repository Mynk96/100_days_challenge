// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Challenge _$_$_ChallengeFromJson(Map<String, dynamic> json) {
  return _$_Challenge(
    _fromJson(json['dateOfChallenge'] as Timestamp?),
    json['description'] as String,
    json['resourceUrl'] as String,
    json['title'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$_$_ChallengeToJson(_$_Challenge instance) =>
    <String, dynamic>{
      'dateOfChallenge': _toJson(instance.dateOfChallenge),
      'description': instance.description,
      'resourceUrl': instance.resourceUrl,
      'title': instance.title,
      'id': instance.id,
    };
