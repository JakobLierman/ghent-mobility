import 'package:dio/dio.dart';
import 'package:ghent_mobility/models/dataset/dataset_model.dart';
import 'package:ghent_mobility/models/parking/parking_garage_model.dart';
import 'package:ghent_mobility/repositories/parking_garage/parking_garage_repository.dart';

class HttpParkingGarageRepository implements ParkingGarageRepository {
  final Dio http;

  HttpParkingGarageRepository({required this.http});

  @override
  Future<List<ParkingGarage>> getParkingGarages() async {
    Response response = await http.get('/', queryParameters: {
      'dataset': 'bezetting-parkeergarages-real-time',
      'q': '',
      'rows': 100,
    });

    Dataset<ParkingGarage> dataset =
        Dataset.fromJson(response.data, ParkingGarage.fromJson);

    return dataset.records;
  }
}
