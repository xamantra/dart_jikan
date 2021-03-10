import 'dart:convert';

import 'index.dart';

class JikanAnimeEpisodes {
  JikanAnimeEpisodes({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.episodesLastPage,
    this.episodes,
  });

  final String? requestHash;
  final bool? requestCached;
  final int? requestCacheExpiry;
  final int? episodesLastPage;
  final List<Episode>? episodes;

  JikanAnimeEpisodes copyWith({
    String? requestHash,
    bool? requestCached,
    int? requestCacheExpiry,
    int? episodesLastPage,
    List<Episode>? episodes,
  }) =>
      JikanAnimeEpisodes(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        episodesLastPage: episodesLastPage ?? this.episodesLastPage,
        episodes: episodes ?? this.episodes,
      );

  static JikanAnimeEpisodes fromRawJson(String str) => JikanAnimeEpisodes.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory JikanAnimeEpisodes.fromJson(Map<String, dynamic> json) => JikanAnimeEpisodes(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        episodesLastPage: json["episodes_last_page"] == null ? null : json["episodes_last_page"],
        episodes: json["episodes"] == null ? null : List<Episode>.from(json["episodes"].map((x) => Episode.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "episodes_last_page": episodesLastPage == null ? null : episodesLastPage,
        "episodes": episodes == null ? null : List<dynamic>.from(episodes!.map((x) => x.toJson())),
      };
}
