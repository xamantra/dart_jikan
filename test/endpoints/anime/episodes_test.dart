import 'package:flutter_test/flutter_test.dart';

import '../../jikan.dart';

void main() async {
  test('should return one piece episodes', () async {
    var result = await jikan.getAnimeEpisodes(id: 21, page: 5);
    expect(result.response.episodes.any((x) => x.episodeId == 481), true);
    expect(result.hasData, true);
  });

  test('should return empty episodes list', () async {
    var result = await jikan.getAnimeEpisodes(id: 999999);
    expect(result.response.episodes.isEmpty, true);
    expect(result.hasData, true);
  });
}
