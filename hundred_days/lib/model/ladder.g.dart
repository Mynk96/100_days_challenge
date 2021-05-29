// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ladder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ladder _$_$_LadderFromJson(Map<String, dynamic> json) {
  return _$_Ladder(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    challengeIds: (json['challengeIds'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_LadderToJson(_$_Ladder instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'challengeIds': instance.challengeIds,
    };
