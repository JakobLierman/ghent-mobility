class DatasetParameters {
  final String name;
  final int rows;
  final int start;
  final List<String>? sort;
  final List<String>? facet;
  final String timezone;

  DatasetParameters({
    required this.name,
    required this.rows,
    required this.start,
    this.sort,
    this.facet,
    this.timezone = 'UTC',
  });

  factory DatasetParameters.fromJson(Map<String, dynamic> json) {
    return DatasetParameters(
      name: json['dataset'],
      rows: json['rows'],
      start: json['start'],
      sort: json['sort'],
      facet: json['facet'],
      timezone: json['timezone'],
    );
  }
}
