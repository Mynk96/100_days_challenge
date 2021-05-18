import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/repository/file_repository.dart';

abstract class StorageState {

}

class FileUploading extends StorageState {

}

class FileUploaded extends StorageState {
  String url;
  int? challengeId;
  FileUploaded({required this.url, required this.challengeId});
}

class FileInitial extends StorageState {

}

class FileUploadError extends StorageState {
  String? message;
  FileUploadError({required this.message});
}

class StorageNotifier extends StateNotifier<StorageState> {
  final FileRepository _fileRepository;
  StorageNotifier(this._fileRepository) : super(FileInitial());

  Future<void> uploadFile(int? challengeId, String email, File image) async {
    String imageName = challengeId.toString() + '_' + email;
    try {
      state = FileUploading();
      String url = await _fileRepository.uploadFile(imageName, image);
      state = FileUploaded(challengeId: challengeId, url: url);
    } catch (e, trace) {
      state = FileUploadError(message: trace.toString());
    }
  }
  
}