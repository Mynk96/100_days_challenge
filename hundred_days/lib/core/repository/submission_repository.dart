import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class SubmissionRepository {
  final CollectionReference submissionDb = FirebaseFirestore.instance.collection('submissions');
  
  SubmissionRepository.instance() 
    : _storage = FirebaseStorage.instance; 

  FirebaseStorage _storage;

  Future<String> uploadFile(String imageName, File image) async {
      TaskSnapshot snapshot = await _storage
      .ref()
      .child("images/$imageName")
      .putFile(image);
      return snapshot.ref.getDownloadURL();
    }

  Future<QuerySnapshot> getAllSubmissions(DocumentSnapshot? doc) async {
    if (doc != null)
      return await submissionDb.startAfterDocument(doc).limit(20).get();
    return await submissionDb.limit(20).get();
  }

  Future<String> saveSubmission(String uid, String challengeId, String submissionUrl, bool isPublic, String name, String challengeName) async {
    String id = Uuid().v4();
      await submissionDb.doc(id).set({
      'id':id,
      'challengeId':challengeId,
      'isPublic': isPublic,
      'submittedById': uid,
      'submittedAt': Timestamp.now(),
      'url': submissionUrl,
      'submittedByName': name,
      'challengeName': challengeName,
      'likedBy':[]
    });
    return id;
  }

  Future<void> likeSubmission(String uid, String submissionId) async {
    List<String> toAdd = List<String>.filled(1, uid);
    await submissionDb.doc(submissionId).update({
      'likedBy': FieldValue.arrayUnion(toAdd)
    });
  }

  Future<void> disLikeSubmission(String uid, String submissionId) async {
    List<String> toAdd = List<String>.filled(1, uid);
    await submissionDb.doc(submissionId).update({
      'likedBy': FieldValue.arrayRemove(toAdd)
    });
  }
}