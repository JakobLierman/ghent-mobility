import 'package:dio/dio.dart';
import 'package:ghent_mobility/models/dataset/dataset_model.dart';
import 'package:ghent_mobility/models/parking/park_ride_model.dart';
import 'package:ghent_mobility/repositories/park_ride/park_ride_repository.dart';

class HttpParkRideRepository implements ParkRideRepository {
  final Dio http;

  HttpParkRideRepository({required this.http});

  @override
  Future<List<ParkRide>> getParkRides() async {
    Response response = await http.get('/', queryParameters: {
      'dataset': 'real-time-bezetting-pr-gent',
      'q': '',
      'rows': 100,
    });

    Dataset<ParkRide> dataset =
        Dataset.fromJson(response.data, ParkRide.fromJson);

    return dataset.records;
  }
}
