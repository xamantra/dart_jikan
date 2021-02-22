import 'package:flutter_test/flutter_test.dart';

import '../../jikan.dart';
import '../../limit.dart';

Future<void> episodes() async {
  var result1 = await limit(jikan.getAnimeEpisodes(id: 21, page: 5));
  var result2 = await limit(jikan.getAnimeEpisodes(id: 999999));

  test('should return one piece episodes', () async {
    expect(result1.response.episodes.any((x) => x.episodeId == 481), true);
    expect(result1.hasData, true);
  });

  test('should return empty episodes list', () async {
    expect(result2.response.episodes.isEmpty, true);
    expect(result2.hasData, true);
  });
}
