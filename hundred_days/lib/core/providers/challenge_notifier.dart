import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/repository/challenge_repository.dart';
import 'package:hundred_days/model/challenge.dart';

abstract class ChallengeState {

}

class ChallengeLoaded extends ChallengeState {
  final List<Challenge> challenges;

  ChallengeLoaded(this.challenges);

  Challenge getTodayChallenge() {
    return challenges.singleWhere((element) => element.dateOfChallenge!.toDate().toUtc().day == DateTime.now().toUtc().day, orElse: () {
      return challenges[challenges.length-1];
    });
  }

  Challenge getChallengeById(int? challengeId) {
    return challenges.singleWhere((element) => element.id == challengeId, orElse: () {
      return challenges[challenges.length-1];
    });
  }
}

class ChallengeException extends ChallengeState {

}

class ChallengesLoading extends ChallengeState {

}

class ChallengeNotifier extends StateNotifier<ChallengeState> {
  final ChallengeRepository _challengeRepository;
  ChallengeNotifier(this._challengeRepository) :super(ChallengesLoading()) {
    getChallenges();
  }

  Future<void> getChallenges() async {
    state = ChallengesLoading();
    List<QueryDocumentSnapshot<Object?>> data = await _challengeRepository.getChallenges();;
    List<Challenge> challenges = List.empty(growable: true);
    data.forEach((e) {
      challenges.add(Challenge.fromJson(e.data() as Map<String, dynamic>));
    });
    challenges.sort((a, b) => a.dateOfChallenge!.compareTo(b.dateOfChallenge!));
    state = ChallengeLoaded(challenges);
  }
}