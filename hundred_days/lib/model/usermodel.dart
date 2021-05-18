import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hundred_days/utility.dart';

part 'usermodel.freezed.dart';
part 'usermodel.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String name, required String email, required String uid}) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> data) => _$UserModelFromJson(data);
}