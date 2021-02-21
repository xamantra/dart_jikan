import 'package:dart_jikan/src/endpoints/manga/index.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return jojo part 1', () async {
    var result = await jikanGetManga(id: 1517);
    expect(result.response.malId, 1517);
    expect(result.hasData, true);
  });

  test('should return an error', () async {
    var result = await jikanGetManga(id: 999999);
    expect(result.response, null);
    expect(result.hasError, true);
  });
}
