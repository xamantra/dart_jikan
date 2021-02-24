import 'package:jikan_models/jikan_models.dart';
import 'package:meta/meta.dart';

class JikanResult<TResponse> {
  JikanResult({
    @required this.response,
    @required this.error,
    @required this.statusCode,
  });

  final TResponse response;
  final JikanError error;
  final int statusCode;

  bool get hasError => error != null;
  bool get hasData => response != null;
}
