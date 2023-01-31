import 'package:ghent_mobility/models/parking/bicycle_shed_model.dart';
import 'package:ghent_mobility/repositories/bicycle_shed/bicycle_shed_repository.dart';
import 'package:ghent_mobility/repositories/bicycle_shed/http_bicycle_shed_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api_client_provider.dart';

part 'bicycle_shed_provider.g.dart';

@riverpod
BicycleShedRepository bicycleShedRepository(BicycleShedRepositoryRef ref) =>
    HttpBicycleShedRepository(http: ref.watch(apiClientProvider));

@riverpod
Future<List<BicycleShed>> getBicycleSheds(GetBicycleShedsRef ref) async =>
    ref.watch(bicycleShedRepositoryProvider).getBicycleSheds();
