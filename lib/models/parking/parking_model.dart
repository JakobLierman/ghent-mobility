import 'package:ghent_mobility/models/dataset/dataset_geometry_model.dart';
import 'package:ghent_mobility/models/dataset/dataset_record_model.dart';

abstract class Parking extends DatasetRecord {
  final String name;
  final int totalCapacity;
  final int availableCapacity;
  late final int occupiedCapacity = totalCapacity - availableCapacity;
  late final int occupationPercentage =
      (availableCapacity / totalCapacity * 100).round();

  Parking({
    required String id,
    required this.name,
    required this.totalCapacity,
    required this.availableCapacity,
    required Geometry geometry,
    required DateTime timestamp,
  })  : assert(name.isNotEmpty),
        assert(totalCapacity > 0),
        assert(totalCapacity >= availableCapacity),
        super(id: id, geometry: geometry, timestamp: timestamp);
}
