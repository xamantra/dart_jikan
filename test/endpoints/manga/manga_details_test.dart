import 'package:flutter_test/flutter_test.dart';

import '../../jikan.dart';

void main() {
  test('should return jojo part 1', () async {
    var result = await jikan.getManga(id: 1517);
    expect(result.response.malId, 1517);
    expect(result.hasData, true);
  });

  test('should return an error', () async {
    var result = await jikan.getManga(id: 999999);
    expect(result.response, null);
    expect(result.hasError, true);
  });
}
