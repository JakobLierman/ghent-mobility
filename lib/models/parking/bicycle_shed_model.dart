import 'package:ghent_mobility/models/dataset/dataset_geometry_model.dart';

import 'parking_model.dart';

class BicycleShed extends Parking {
  BicycleShed({
    required String id,
    required String name,
    required int totalCapacity,
    required int availableCapacity,
    required Geometry geometry,
    required DateTime timestamp,
  }) : super(
          id: id,
          name: name,
          totalCapacity: totalCapacity,
          availableCapacity: availableCapacity,
          geometry: geometry,
          timestamp: timestamp,
        );

  factory BicycleShed.fromJson(Map<String, dynamic> json) {
    return BicycleShed(
      id: json['recordid'],
      name: json['fields']['facilityname'],
      totalCapacity: json['fields']['totalplaces'],
      availableCapacity: json['fields']['freeplaces'],
      geometry: Geometry.fromJson(json['geometry']),
      timestamp: DateTime.parse(json['record_timestamp']),
    );
  }
}
