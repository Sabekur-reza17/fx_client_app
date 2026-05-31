import 'package:dio/dio.dart';

extension ErrorMessageExtensions on Object {
  String errorMessage() {
    final self = this;
    if (self is DioException) {
      final msg = self.response?.data?.toString();
      if (msg != null && msg.trim().isNotEmpty) return msg;
      if (self.message != null && self.message!.trim().isNotEmpty) {
        return self.message!;
      }
      return 'Network error';
    }
    return toString();
  }
}

