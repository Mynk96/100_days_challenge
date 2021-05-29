import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/repository/challenge_repository.dart';
import 'package:hundred_days/model/challenge.dart';

class ChallengeNotifier extends StateNotifier<Challenges> {
  final ChallengeRepository _challengeRepository;
  ChallengeNotifier(this._challengeRepository) : super(ChallengesLoading()) {}

  Future<void> getChallenges(List<String> challengeIds) async {
    try {
      state = ChallengesLoading();
      List<QueryDocumentSnapshot<Object?>> data =
          await _challengeRepository.getChallenges(challengeIds);
      List<Challenge> challenges = List.empty(growable: true);
      data.forEach((e) {
        challenges.add(Challenge.fromJson(e.data() as Map<String, dynamic>));
      });
      challenges.sort((a, b) => a.id.compareTo(b.id));
      state = Challenges.data(challenges);
    } catch (e, st) {
      state = ChallengesError(e, st);
    }
  }
}
