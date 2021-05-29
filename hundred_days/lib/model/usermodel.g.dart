// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    uid: json['uid'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    participatedChallenges: (json['participatedChallenges'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    submissionIds: (json['submissionIds'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    laddersState: (json['laddersState'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, LadderInfo.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'participatedChallenges': instance.participatedChallenges,
      'submissionIds': instance.submissionIds,
      'laddersState': instance.laddersState,
    };
