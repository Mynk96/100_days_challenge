import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hundred_days/utility.dart';

part 'challenge.freezed.dart';
part 'challenge.g.dart';
// class Challenge {
//   Timestamp? dateOfChallenge;
//   String? description;
//   String? resourceUrl;
//   String? title;
//   int? id;

//   Challenge();

//   factory Challenge.fromJSON(Map<String, dynamic> data) {
//     Challenge challenge = new Challenge();
//     challenge.dateOfChallenge = Utility.getValue(data, 'dateOfChallenge', Timestamp.now());
//     challenge.description = Utility.getValue(data, 'description', '');
//     challenge.resourceUrl = Utility.getValue(data, 'resourceurl', '');
//     challenge.title = Utility.getValue(data, 'title', '');
//     challenge.id = Utility.getValue(data, 'id', 1);
//     return challenge;
//   }
// }
Timestamp _fromJson(Timestamp? json) => json!;
String _toJson(Timestamp? object) => object!.millisecondsSinceEpoch.toString();

@freezed
class Challenge with _$Challenge{
  const factory Challenge(@JsonKey(fromJson: _fromJson, toJson: _toJson)Timestamp? dateOfChallenge, String description, String resourceUrl, String title, int id) = _Challenge;

  factory Challenge.fromJson(Map<String, dynamic> json) => _$ChallengeFromJson(json);
}