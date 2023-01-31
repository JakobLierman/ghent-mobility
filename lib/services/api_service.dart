import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl;
  late final BaseOptions _baseOptions = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  late final Dio client = Dio(_baseOptions);

  ApiService({required this.baseUrl}) : assert(baseUrl.isNotEmpty) {
    client.interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
    ));
  }
}
