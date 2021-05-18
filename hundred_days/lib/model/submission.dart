import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hundred_days/utility.dart';

part 'submission.freezed.dart';
part 'submission.g.dart';

// class Submission {
//   String? url;
//   int? challengeId;

//   Submission();

//   factory Submission.fromJSON(Map<String, dynamic> data) {
//     Submission s = new Submission();
//     s.url = Utility.getValue(data, 'url', '');
//     s.challengeId = Utility.getValue(data, 'challengeId', 0);
//     return s;
//   }
// }

@freezed
class Submission with _$Submission{
  const factory Submission({String? url, int? challengeId}) = _Submission;
  factory Submission.fromJson(Map<String, dynamic> json) => _$SubmissionFromJson(json);
}