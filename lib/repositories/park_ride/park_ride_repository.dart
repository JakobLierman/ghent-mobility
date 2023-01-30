import 'package:ghent_mobility/models/parking/park_ride_model.dart';

abstract class ParkRideRepository {
  Future<List<ParkRide>> getParkRides();
}
