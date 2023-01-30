import 'package:ghent_mobility/models/dataset/dataset_model.dart';
import 'package:ghent_mobility/models/parking/bicycle_shed_model.dart';
import 'package:ghent_mobility/repositories/bicycle_shed/bicycle_shed_repository.dart';
import 'package:ghent_mobility/services/ghent_api_service.dart';

class HttpBicycleShedRepository implements BicycleShedRepository {
  final GhentApiService _apiService = GhentApiService();

  HttpBicycleShedRepository();

  @override
  Future<List<BicycleShed>> getBicycleSheds() async {
    Dataset<BicycleShed> dataset = await _apiService.getBicycleSheds();

    return dataset.records;
  }
}
