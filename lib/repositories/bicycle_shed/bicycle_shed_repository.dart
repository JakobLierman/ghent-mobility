import 'package:ghent_mobility/models/parking/bicycle_shed_model.dart';

abstract class BicycleShedRepository {
  Future<List<BicycleShed>> getBicycleSheds();
}
