import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/repository/challenge_repository.dart';
import 'package:hundred_days/core/repository/submission_repository.dart';
import 'package:hundred_days/core/repository/user_repository.dart';
import 'package:hundred_days/model/file_upload_param.dart';
import 'package:hundred_days/model/file_upload_status.dart';

class SubmissionNotifier extends StateNotifier<FileUploadStatus> {
  final SubmissionRepository _submissionRepository;
  final UserRepository _userRepository;
  final ChallengeRepository _challengeRepository;
  SubmissionNotifier(this._userRepository, this._challengeRepository, this._submissionRepository) : super(FileUploadStatus.INITIAL);

  Future submit(FileUploadParameter params) async {
    String imageName = params.challengeId.toString() + '_' + params.email;
    state = FileUploadStatus.UPLOADING;
    try {
      String url = await _submissionRepository.uploadFile(imageName, params.image);
      String submId = await _submissionRepository.saveSubmission(params.uid, params.challengeId, url, params.isPublic, params.name, params.challengeName);
      Map<String, dynamic> userDetailsToUpdate = {
        'submissionId': submId,
        'challengeId': params.challengeId,
        'laddersState.${params.ladderInfo.ladderId}': params.ladderInfo.toJson()
      };
      Map<String, dynamic> challengeDetailsToUpdate = {
        'submissionId': submId
      };
      
      await _userRepository.updateUserDetails(params.uid, userDetailsToUpdate);
      await _challengeRepository.updateChallengeDetails(params.challengeId, challengeDetailsToUpdate);
      state = FileUploadStatus.UPLOADED;
    } catch (e, trace) {
      state = FileUploadStatus.ERROR;
    }
  }
}