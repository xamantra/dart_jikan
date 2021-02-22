import 'package:flutter_test/flutter_test.dart';

import '../../jikan.dart';

void main() {
  test('should return one piece', () async {
    var result = await jikan.getAnime(id: 21);
    expect(result.response.malId, 21);
    expect(result.hasData, true);
  });

  test('should return an error', () async {
    var result = await jikan.getAnime(id: 999999);
    expect(result.response, null);
    expect(result.hasError, true);
  });
}
