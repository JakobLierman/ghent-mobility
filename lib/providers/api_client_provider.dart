import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ghent_mobility/services/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client_provider.g.dart';

@riverpod
Dio apiClient(ApiClientRef ref) {
  return ApiService(baseUrl: dotenv.env['BASE_URL']!).client;
}
