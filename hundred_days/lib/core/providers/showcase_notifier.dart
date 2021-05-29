import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hundred_days/core/repository/submission_repository.dart';
import 'package:hundred_days/model/submission.dart';

class ShowCaseNotifier {
  final SubmissionRepository _submissionRepository;
  ShowCaseNotifier(this._submissionRepository) : super();

  DocumentSnapshot? lastDocument;
  Future<List<Submission>> getSubmissions(int page) async {
    List<Submission> submissions = List.empty(growable: true);
    try {
      QuerySnapshot<Object?> data =
          (page == 1)
          ? await _submissionRepository.getAllSubmissions(null)
          : await _submissionRepository.getAllSubmissions(lastDocument);
      data.docs.forEach((element) {
        submissions.add(Submission.fromJson(element.data() as Map<String, dynamic>));
      });
      lastDocument = data.docs.last;
    } catch (e, st) {

    }
    return submissions;
  }

  Future<void> likeSubmission(String uid, String submissionId) async {
    await _submissionRepository.likeSubmission(uid, submissionId);
  }

  Future<void> disLikeSubmission(String uid, String submissionId) async {
    await _submissionRepository.disLikeSubmission(uid, submissionId);
  }
}