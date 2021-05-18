import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class FileRepository {
  FileRepository.instance()
    : _storage = FirebaseStorage.instance;

  FirebaseStorage _storage;

  Future<String> uploadFile(String imageName, File image) async {
    try {
      TaskSnapshot snapshot = await _storage
      .ref()
      .child("images/$imageName")
      .putFile(image);
      return snapshot.ref.getDownloadURL();
    } catch (e) {
      throw e;
    }
  }
}