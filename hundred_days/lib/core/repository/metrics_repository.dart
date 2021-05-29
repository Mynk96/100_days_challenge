import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hundred_days/model/metrics.dart';

class MetricsRepository {
  final CollectionReference metricsDb = FirebaseFirestore.instance.collection('metrics');
  late Stream<Metrics> metrics;
  MetricsRepository() {
    subscribeToMetricsChanges();
  }

  void subscribeToMetricsChanges() {
    metrics = metricsDb.snapshots().map((event) => Metrics.fromJson(event.docs.first.data() as Map<String, dynamic>));
  }
}