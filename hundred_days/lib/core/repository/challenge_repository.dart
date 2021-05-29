import 'package:cloud_firestore/cloud_firestore.dart';

class ChallengeRepository {
  final CollectionReference challengeDb = FirebaseFirestore.instance.collection('challenges');

  Future<List<QueryDocumentSnapshot<Object?>>> getChallenges(List<String> challengeIds) async {
    QuerySnapshot q = await challengeDb.where('id', whereIn: challengeIds).get();
    return q.docs;
  }

  Future<QuerySnapshot<Object?>> getChallenge(String challengeId) async {
    return await challengeDb.where('id', isEqualTo: challengeId).get();
  }

  Future<QuerySnapshot<Object?>> getTodayChallenge() async {
    DateTime _now = DateTime.now();
    DateTime _current = DateTime(_now.year, _now.month, _now.day);
    return await challengeDb.where('isDailyChallenge', isEqualTo: true).where('dateOfChallenge', isEqualTo: _current).get();
  }

  Future<void> updateChallengeDetails(String challengeId, Map<String, dynamic> data) async {
    Map<String, dynamic> dataToUpdate = _getChallengeUpdateMap(data);
    return FirebaseFirestore.instance.runTransaction((transaction) async {
      DocumentReference doc = challengeDb.doc(challengeId);
      transaction.update(doc, dataToUpdate);
    }).then((value) => print('Challenge Updated'));
  }

  Map<String, dynamic> _getChallengeUpdateMap(Map<String, dynamic> data) {
    Map<String, dynamic> dataToUpdate = new Map<String, dynamic>();
    if (data.containsKey('submissionId')) {
      dataToUpdate['submissionIds'] = FieldValue.arrayUnion(List.filled(1, data['submissionId']));
    }
    return dataToUpdate;
  }

  void subscribeToChallenge(List<String> challengeIds) {
    challengeIds.forEach((element) {
      challengeDb.doc(element).snapshots().listen((event) {
        
      });
    });
  }
}