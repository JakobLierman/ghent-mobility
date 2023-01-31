import 'package:dio/dio.dart';
import 'package:ghent_mobility/models/dataset/dataset_model.dart';
import 'package:ghent_mobility/models/parking/bicycle_shed_model.dart';
import 'package:ghent_mobility/repositories/bicycle_shed/bicycle_shed_repository.dart';

class HttpBicycleShedRepository implements BicycleShedRepository {
  final Dio http;

  HttpBicycleShedRepository({required this.http});

  @override
  Future<List<BicycleShed>> getBicycleSheds() async {
    Response response = await http.get('/', queryParameters: {
      'dataset': 'real-time-bezettingen-fietsenstallingen-gent',
      'q': '',
      'rows': 100,
    });

    Dataset<BicycleShed> dataset =
        Dataset.fromJson(response.data, BicycleShed.fromJson);

    return dataset.records;
  }
}
