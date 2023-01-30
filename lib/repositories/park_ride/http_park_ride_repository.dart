import 'package:ghent_mobility/models/dataset/dataset_model.dart';
import 'package:ghent_mobility/models/parking/park_ride_model.dart';
import 'package:ghent_mobility/repositories/park_ride/park_ride_repository.dart';
import 'package:ghent_mobility/services/ghent_api_service.dart';

class HttpParkRideRepository implements ParkRideRepository {
  final GhentApiService _apiService = GhentApiService();

  HttpParkRideRepository();

  @override
  Future<List<ParkRide>> getParkRides() async {
    Dataset<ParkRide> dataset = await _apiService.getParkRides();

    return dataset.records;
  }
}
