import 'package:ghent_mobility/models/dataset/dataset_geometry_model.dart';

import 'parking_model.dart';

class ParkRide extends Parking {
  final String description;
  final String openingTime;
  final bool isOpen;
  final bool temporaryClosed;
  final bool free;
  final String operatorInformation;
  final String type;
  final String url;
  final bool ghentFestival;

  ParkRide({
    required String id,
    required String name,
    required this.description,
    required this.openingTime,
    required int totalCapacity,
    required int availableCapacity,
    required this.isOpen,
    required this.temporaryClosed,
    required this.free,
    required this.operatorInformation,
    required this.type,
    required this.url,
    required this.ghentFestival,
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

  factory ParkRide.fromJson(Map<String, dynamic> json) {
    return ParkRide(
      id: json['recordid'],
      name: json['fields']['name'],
      description: json['fields']['description'],
      openingTime: json['fields']['openingtimesdescription'],
      totalCapacity: json['fields']['numberofspaces'],
      availableCapacity: json['fields']['availablespaces'],
      isOpen: json['fields']['isopennow'] == 1 ? true : false,
      temporaryClosed: json['fields']['temporaryclosed'] == 1 ? true : false,
      free: json['fields']['freeparking'] == 1 ? true : false,
      operatorInformation: json['fields']['operatorinformation'],
      type: json['fields']['type'],
      url: json['fields']['urllinkaddress'],
      ghentFestival: json['fields']['ghentfestival'] == 1 ? true : false,
      geometry: Geometry.fromJson(json['geometry']),
      timestamp: DateTime.parse(json['record_timestamp']),
    );
  }
}
