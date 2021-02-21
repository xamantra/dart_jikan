import 'package:meta/meta.dart';

import '../models/index.dart';

class JikanResult<TResponse> {
  JikanResult({
    @required this.response,
    @required this.error,
    @required this.statusCode,
  });

  final TResponse response;
  final JikanError error;
  final int statusCode;
}
