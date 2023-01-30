import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ghent_mobility/models/dataset/dataset_model.dart';
import 'package:ghent_mobility/models/parking/bicycle_shed_model.dart';
import 'package:ghent_mobility/models/parking/park_ride_model.dart';
import 'package:ghent_mobility/models/parking/parking_garage_model.dart';
import 'package:ghent_mobility/services/api_service.dart';

class GhentApiService extends ApiService {
  GhentApiService() : super(baseUrl: dotenv.env['BASE_URL']!);

  Future<Dataset<ParkingGarage>> getParkingGarages() async {
    Response respone = await client.get('/', queryParameters: {
      'dataset': 'bezetting-parkeergarages-real-time',
      'q': '',
      'rows': 100,
    });

    return Dataset.fromJson(respone.data, ParkingGarage.fromJson);
  }

  Future<Dataset<ParkRide>> getParkRides() async {
    Response respone = await client.get('/', queryParameters: {
      'dataset': 'real-time-bezetting-pr-gent',
      'q': '',
      'rows': 100,
    });

    return Dataset.fromJson(respone.data, ParkRide.fromJson);
  }

  Future<Dataset<BicycleShed>> getBicycleSheds() async {
    Response respone = await client.get('/', queryParameters: {
      'dataset': 'real-time-bezettingen-fietsenstallingen-gent',
      'q': '',
      'rows': 100,
    });

    return Dataset.fromJson(respone.data, BicycleShed.fromJson);
  }
}
