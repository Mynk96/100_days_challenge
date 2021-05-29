import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/authentication_notifier.dart';
import 'package:hundred_days/core/providers/challenge_notifier.dart';
import 'package:hundred_days/core/providers/ladder_notifier.dart';
import 'package:hundred_days/core/providers/showcase_notifier.dart';
import 'package:hundred_days/core/providers/submission_notifier.dart';
import 'package:hundred_days/core/repository/challenge_repository.dart';
import 'package:hundred_days/core/repository/ladder_repository.dart';
import 'package:hundred_days/core/repository/metrics_repository.dart';
import 'package:hundred_days/core/repository/submission_repository.dart';
import 'package:hundred_days/core/repository/user_repository.dart';
import 'package:hundred_days/model/challenge.dart';
import 'package:hundred_days/model/current_app_state.dart';
import 'package:hundred_days/model/file_upload_status.dart';
import 'package:hundred_days/model/ladder.dart';
import 'package:hundred_days/model/metrics.dart';
import 'package:hundred_days/model/submission.dart';


final userRepoProvider = Provider<UserRepository>((ref) {
  return UserRepository.instance();
});

final userProvider = StateNotifierProvider<AuthenticationNotifier, AuthenticationState>((ref) {
  return AuthenticationNotifier(ref.watch(userRepoProvider), ref.watch(ladderRepoProvider));
});

final challengeRepoProvider = Provider<ChallengeRepository>((ref) {
  return ChallengeRepository();
});

final submissionRepoProvider = Provider<SubmissionRepository>((ref) {
  return SubmissionRepository.instance();
});

final ladderRepoProvider = Provider<LadderRepository>((ref) {
  return LadderRepository();
});

final metricsRepoProvider = Provider<MetricsRepository>((ref) {
  return MetricsRepository();
});

final challengesProvider = StateNotifierProvider<ChallengeNotifier, Challenges>((ref) {
  return ChallengeNotifier(ref.watch(challengeRepoProvider));
});

final screenProvider = StateProvider<int>((ref) {
  return 0;
});

final submissionProvider = StateNotifierProvider<SubmissionNotifier, FileUploadStatus>((ref) {
  final user = ref.watch(userRepoProvider);
  final submission = ref.watch(submissionRepoProvider);
  final challenge = ref.watch(challengeRepoProvider);
  return SubmissionNotifier(user, challenge, submission);
});

// final showCaseProvider = StateNotifierProvider<ShowCaseNotifier, Submissions>((ref) {
//   return ShowCaseNotifier(ref.watch(submissionRepoProvider));
// });

final showCaseProvider = Provider((ref) {
  return ShowCaseNotifier(ref.watch(submissionRepoProvider));
});

final dailyChallengeProvider = FutureProvider<Challenge>((ref) {
  final challengeRepo = ref.watch(challengeRepoProvider);
  return challengeRepo.getTodayChallenge().then((value) => (value.docs.length > 0) ? Challenge.fromJson(value.docs.first.data() as Map<String, dynamic>) : throw Exception('No challenge configured'));
});

final challengeProvider = FutureProvider.autoDispose.family<Challenge, String>((ref, challengeId) {
  final challengeRepo = ref.watch(challengeRepoProvider);
  return challengeRepo.getChallenge(challengeId).then((value) => (value.docs.length > 0) ? Challenge.fromJson(value.docs.first.data() as Map<String, dynamic>) : throw Exception('No challenge configured'));
});

final metricsNotifier = StreamProvider<Metrics>((ref){
  final metricsRepo = ref.watch(metricsRepoProvider);
  return metricsRepo.metrics.skip(1);
});



final ladderProvider = StateNotifierProvider<LadderNotifier, Ladders>((ref) {
  final ladderRepo = ref.watch(ladderRepoProvider);
  return LadderNotifier(ladderRepo);
});

final currentAppState = Provider<CurrentAppState>((ref) {
  return CurrentAppState();
});



