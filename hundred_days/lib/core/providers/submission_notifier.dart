import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/repository/user_repository.dart';
import 'package:hundred_days/model/submission.dart';

class SubmissionNotifier {
  static Future<List<Submission>> saveSubmissionAndGet(String? uid, int? challengeId, String submissionUrl, UserRepository _userRepository) async {
    try {
      await _userRepository.saveSubmission(uid, challengeId, submissionUrl);
    } catch (e) {

    }
    return getSubmissions(_userRepository, uid);
  }

  static Future<List<Submission>> getSubmissions(UserRepository _userRepository, String? uid) async {
    List<Submission> subms = List.empty(growable:true);
    try {
      QuerySnapshot q = await _userRepository.getAllSubmissions(uid);
      q.docs.forEach((element) {
        subms.add(Submission.fromJson(element.data() as Map<String, dynamic>));
      });
    } catch (e, trace) {
      print(trace.toString());
    }
    return subms;
  }
}