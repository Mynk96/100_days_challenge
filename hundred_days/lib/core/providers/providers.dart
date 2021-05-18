import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/providers/authentication_notifier.dart';
import 'package:hundred_days/core/providers/challenge_notifier.dart';
import 'package:hundred_days/core/providers/storage_notifier.dart';
import 'package:hundred_days/core/providers/submission_notifier.dart';
import 'package:hundred_days/core/repository/challenge_repository.dart';
import 'package:hundred_days/core/repository/file_repository.dart';
import 'package:hundred_days/core/repository/user_repository.dart';
import 'package:hundred_days/model/challenge.dart';
import 'package:hundred_days/model/submission.dart';
import 'package:hundred_days/model/usermodel.dart';


final userRepoProvider = Provider<UserRepository>((ref) {
  return UserRepository.instance();
});

final userProvider = StateNotifierProvider<AuthenticationNotifier, AuthenticationState>((ref) {
  return AuthenticationNotifier(ref.watch(userRepoProvider));
});

final challengeRepoProvider = Provider<ChallengeRepository>((ref) {
  return ChallengeRepository();
});

final challengeProvider = StateNotifierProvider<ChallengeNotifier, ChallengeState>((ref) {
  return ChallengeNotifier(ref.watch(challengeRepoProvider));
});

final screenProvider = StateProvider<int>((ref) {
  return 0;
});

final fileRepoProvider = Provider<FileRepository>((ref) {
  return FileRepository.instance();
});

final fileProvider = StateNotifierProvider<StorageNotifier, StorageState>((ref) {
  return StorageNotifier(ref.watch(fileRepoProvider));
});

final submissionProvider = FutureProvider<List<Submission>>((ref) {
  final user = ref.watch(userProvider);
  final filep = ref.watch(fileProvider);
  final _userRepository = ref.watch(userRepoProvider);
  if (user is Authenticated) {
    if (filep is FileUploaded) {
      return SubmissionNotifier.saveSubmissionAndGet(user.user!.uid, filep.challengeId, filep.url, _userRepository);
    } else {
      return SubmissionNotifier.getSubmissions(_userRepository, user.user!.uid);
    }
  }
  return Future.delayed(Duration(seconds: 0), () => List<Submission>.empty());
});




