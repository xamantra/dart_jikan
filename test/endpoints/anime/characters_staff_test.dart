import 'package:flutter_test/flutter_test.dart';

import '../../jikan.dart';

void main() {
  test('should return one piece characters and staffs', () async {
    var result = await jikan.getAnimeCharacterStaff(id: 21);
    // Brook
    expect(result.response.characters.any((x) => x.malId == 5627), true);
    // Nagamine, Tatsuya (Director)
    expect(result.response.staff.any((x) => x.malId == 12867), true);
    expect(result.hasData, true);
  });

  test('should return an error', () async {
    var result = await jikan.getAnimeCharacterStaff(id: 999999);
    expect(result.response, null);
    expect(result.hasError, true);
  });
}
