import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hundred_days/model/ladder_info.dart';
import 'package:hundred_days/utility.dart';

part 'usermodel.freezed.dart';
part 'usermodel.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String uid,
    required String name,
    required String email,
    List<String>? participatedChallenges,
    List<String>? submissionIds,
    Map<String, LadderInfo>? laddersState,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> data) => _$UserModelFromJson(data);
  
}