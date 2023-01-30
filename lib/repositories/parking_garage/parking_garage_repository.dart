import 'package:ghent_mobility/models/parking/parking_garage_model.dart';

abstract class ParkingGarageRepository {
  Future<List<ParkingGarage>> getParkingGarages();
}
