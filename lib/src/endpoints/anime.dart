import '../docs/index.dart';
import '../models/anime/index.dart';
import '../models/index.dart';
import '../utils/index.dart';

mixin JikanAnimeEndpoints implements JikanAnimeDocs {
  Future<JikanResult<JikanAnimeDetails?>> getAnime({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId',
      JikanAnimeDetails.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanAnimeCharacterStaff?>> getAnimeCharacterStaff({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/characters_staff',
      JikanAnimeCharacterStaff.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanAnimeEpisodes?>> getAnimeEpisodes({
    required int animeId,
    int page = 1,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/episodes/$page',
      JikanAnimeEpisodes.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanAnimeNews?>> getAnimeNews({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/news',
      JikanAnimeNews.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanAnimePictures?>> getAnimePictures({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/pictures',
      JikanAnimePictures.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanAnimeVideos?>> getAnimeVideos({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/videos',
      JikanAnimeVideos.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanAnimeStats?>> getAnimeStats({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/stats',
      JikanAnimeStats.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanAnimeForum?>> getAnimeForum({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/forum',
      JikanAnimeForum.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanMoreInfo?>> getAnimeMoreInfo({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/moreinfo',
      JikanMoreInfo.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanAnimeReviews?>> getAnimeReviews({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/reviews',
      JikanAnimeReviews.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanAnimeRecommendations?>> getAnimeRecommendations({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/recommendations',
      JikanAnimeRecommendations.fromRawJson,
      headers,
    );
    return result;
  }

  Future<JikanResult<JikanAnimeUserUpdates?>> getAnimeUserUpdates({
    required int animeId,
    Map<String, String>? headers,
  }) async {
    var result = await request(
      'anime/$animeId/userupdates',
      JikanAnimeUserUpdates.fromRawJson,
      headers,
    );
    return result;
  }
}
