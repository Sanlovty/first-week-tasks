import 'package:dio/dio.dart';

/// Extension to get info about [DioError]
extension CustomToString on DioError {
  String toDebugString() {
    return 'DioError: {\n error: ${error.toString()}},\n response: ${response.toString()},\n type: ${type.toString()}\n }';
  }
}
