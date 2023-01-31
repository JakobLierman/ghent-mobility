import 'package:ghent_mobility/models/parking/parking_garage_model.dart';
import 'package:ghent_mobility/repositories/parking_garage/http_parking_garage_repository.dart';
import 'package:ghent_mobility/repositories/parking_garage/parking_garage_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api_client_provider.dart';

part 'parking_garage_provider.g.dart';

@riverpod
ParkingGarageRepository parkingGarageRepository(
        ParkingGarageRepositoryRef ref) =>
    HttpParkingGarageRepository(http: ref.watch(apiClientProvider));

@riverpod
Future<List<ParkingGarage>> getParkingGarages(GetParkingGaragesRef ref) async =>
    ref.watch(parkingGarageRepositoryProvider).getParkingGarages();
