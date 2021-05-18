import 'package:cloud_firestore/cloud_firestore.dart';

class ChallengeRepository {
  final CollectionReference challengeDb = FirebaseFirestore.instance.collection('challenges');

  Future<List<QueryDocumentSnapshot<Object?>>> getChallenges() async {
    QuerySnapshot q = await challengeDb.get();
    return q.docs;
  }
}