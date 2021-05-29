import 'package:cloud_firestore/cloud_firestore.dart';

class LadderRepository {
  final CollectionReference ladderDb = FirebaseFirestore.instance.collection('ladders');

  Future<List<QueryDocumentSnapshot<Object?>>> getLadders() async {
    QuerySnapshot q = await ladderDb.get();
    return q.docs;
  }
}