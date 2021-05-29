import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hundred_days/model/ladder_info.dart';
part 'file_upload_param.freezed.dart';

@freezed
class FileUploadParameter with _$FileUploadParameter{
  const factory FileUploadParameter({
    required String uid,
    required String challengeId,
    required String email,
    required bool isPublic,
    required File image,
    required LadderInfo ladderInfo,
    required String name,
    required String challengeName
  }) = _FileUploadParameter;
}