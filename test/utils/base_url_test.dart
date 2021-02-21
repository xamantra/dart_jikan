import 'package:dart_jikan/src/utils/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  test('jikan base url must be correct', () async {
    expect(jikan_base, 'https://api.jikan.moe/v3');
    var response = await http.get(jikan_base);
    expect(response.statusCode, 200);
  });
}
