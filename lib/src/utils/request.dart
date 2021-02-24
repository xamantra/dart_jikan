import 'package:http/http.dart' as http;

import '../models/index.dart';
import 'index.dart';

const _logHeader = '(dart_jikan)';

Future<JikanResult<T>> request<T>(
  String path,
  T Function(String) transformer,
  Map<String, String> headers, {
  bool returnPlain = false,
}) async {
  var url = '$jikan_base/$path';
  print('$_logHeader : Requesting [get] -> "$url"');
  var response = await http.get(url, headers: headers);
  if (response.statusCode != 200) {
    var error = JikanError.fromRawJson(response.body);
    var result = JikanResult(
        response: null, error: error, statusCode: response.statusCode);
    print('$_logHeader : Request [error] -> "$url"');
    return result;
  }
  var data = transformer(response.body);
  var result =
      JikanResult(response: data, error: null, statusCode: response.statusCode);
  print('$_logHeader : Request [success] -> "$url"');
  return result;
}
