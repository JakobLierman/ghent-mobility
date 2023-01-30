import 'package:ghent_mobility/models/dataset/dataset_geometry_model.dart';

import 'parking_model.dart';

class ParkingGarage extends Parking {
  final String description;
  final String openingTime;
  final bool isOpen;
  final bool temporaryClosed;
  final bool free;
  final String operatorInformation;
  final String type;
  final String url;

  ParkingGarage({
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

  factory ParkingGarage.fromJson(Map<String, dynamic> json) {
    return ParkingGarage(
      id: json['recordid'],
      name: json['fields']['name'],
      description: json['fields']['description'],
      openingTime: json['fields']['openingtimesdescription'],
      totalCapacity: json['fields']['totalcapacity'],
      availableCapacity: json['fields']['availablecapacity'],
      isOpen: json['fields']['isopennow'] == 1 ? true : false,
      temporaryClosed: json['fields']['temporaryclosed'] == 1 ? true : false,
      free: json['fields']['freeparking'] == 1 ? true : false,
      operatorInformation: json['fields']['operatorinformation'],
      type: json['fields']['type'],
      url: json['fields']['urllinkaddress'],
      geometry: Geometry.fromJson(json['geometry']),
      timestamp: DateTime.parse(json['record_timestamp']),
    );
  }
}
