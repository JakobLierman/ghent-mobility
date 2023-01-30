import 'package:ghent_mobility/models/dataset/dataset_model.dart';
import 'package:ghent_mobility/models/parking/parking_garage_model.dart';
import 'package:ghent_mobility/repositories/parking_garage/parking_garage_repository.dart';
import 'package:ghent_mobility/services/ghent_api_service.dart';

class HttpParkingGarageRepository implements ParkingGarageRepository {
  final GhentApiService _apiService = GhentApiService();

  HttpParkingGarageRepository();

  @override
  Future<List<ParkingGarage>> getParkingGarages() async {
    Dataset<ParkingGarage> dataset = await _apiService.getParkingGarages();

    return dataset.records;
  }
}
