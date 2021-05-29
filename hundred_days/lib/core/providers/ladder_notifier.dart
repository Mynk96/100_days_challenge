import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hundred_days/core/repository/ladder_repository.dart';
import 'package:hundred_days/model/ladder.dart';

class LadderNotifier extends StateNotifier<Ladders> {
  final LadderRepository _ladderRepository;
  LadderNotifier(this._ladderRepository) : super(Ladders.loading()) {
    getLadders();
  }

  Future<void> getLadders() async {
    try {
      state = Ladders.loading();
      List<QueryDocumentSnapshot<Object?>> data =
          await _ladderRepository.getLadders();
      List<Ladder> ladders = List.empty(growable: true);
      data.forEach((element) {
        ladders.add(Ladder.fromJson(element.data() as Map<String, dynamic>));
      });
      state = Ladders.data(ladders);
    } catch (e, st) {
      state = Ladders.error(e, st);
    }
  }
}
