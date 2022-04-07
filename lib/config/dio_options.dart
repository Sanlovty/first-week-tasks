import 'package:dio/dio.dart';
import 'package:first_week/config/api_urls.dart';

/// [BaseOptions] for [Dio] init
BaseOptions dioOptions = BaseOptions(
  baseUrl: ApiUrls.defautlDioUrl,
  connectTimeout: 30000,
  receiveTimeout: 120000,
);
