import 'dataset_geometry_model.dart';

abstract class DatasetRecord {
  final String id;
  final Geometry? geometry;
  final DateTime timestamp;

  DatasetRecord({
    required this.id,
    this.geometry,
    required this.timestamp,
  })  : assert(id.isNotEmpty),
        assert(timestamp.isUtc);
}
