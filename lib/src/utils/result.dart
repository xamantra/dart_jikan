import '../models/index.dart';

class JikanResult<TResponse> {
  JikanResult({
    this.response,
    this.error,
    required this.statusCode,
  });

  final TResponse? response;
  final JikanError? error;
  final int statusCode;

  bool get hasError => error != null;
  bool get hasData => response != null;
}
