import 'dataset_parameters_model.dart';
import 'dataset_record_model.dart';

class Dataset<Record extends DatasetRecord> {
  final String id;
  final int amount;
  final DatasetParameters parameters;
  final List<Record> records;

  Dataset({
    required this.id,
    required this.amount,
    required this.parameters,
    required this.records,
  })  : assert(id.isNotEmpty),
        assert(amount >= 0),
        assert(records.length <= parameters.rows);

  factory Dataset.fromJson(Map<String, dynamic> json,
      Record Function(Map<String, dynamic>) recordMapper) {
    return Dataset(
      id: json['parameters']['dataset'],
      amount: json['nhits'],
      parameters: DatasetParameters.fromJson(json['parameters']),
      records: json['records'].map<Record>(recordMapper).toList(),
    );
  }
}
