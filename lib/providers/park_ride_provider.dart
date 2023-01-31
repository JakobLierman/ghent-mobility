import 'package:ghent_mobility/models/parking/park_ride_model.dart';
import 'package:ghent_mobility/repositories/park_ride/http_park_ride_repository.dart';
import 'package:ghent_mobility/repositories/park_ride/park_ride_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api_client_provider.dart';

part 'park_ride_provider.g.dart';

@riverpod
ParkRideRepository parkRideRepository(ParkRideRepositoryRef ref) =>
    HttpParkRideRepository(http: ref.watch(apiClientProvider));

@riverpod
Future<List<ParkRide>> getParkRides(GetParkRidesRef ref) async =>
    ref.watch(parkRideRepositoryProvider).getParkRides();
