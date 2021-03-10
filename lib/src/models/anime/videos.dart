import 'dart:convert';

import '../index.dart';
import 'index.dart';

class JikanAnimeVideos {
  JikanAnimeVideos({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.promo,
    this.episodes,
  });

  final String? requestHash;
  final bool? requestCached;
  final int? requestCacheExpiry;
  final List<PromoVideo>? promo;
  final List<EpisodeVideo>? episodes;

  JikanAnimeVideos copyWith({
    String? requestHash,
    bool? requestCached,
    int? requestCacheExpiry,
    List<PromoVideo>? promo,
    List<EpisodeVideo>? episodes,
  }) =>
      JikanAnimeVideos(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        promo: promo ?? this.promo,
        episodes: episodes ?? this.episodes,
      );

  static JikanAnimeVideos fromRawJson(String str) => JikanAnimeVideos.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory JikanAnimeVideos.fromJson(Map<String, dynamic> json) => JikanAnimeVideos(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        promo: json["promo"] == null ? null : List<PromoVideo>.from(json["promo"].map((x) => PromoVideo.fromJson(x))),
        episodes: json["episodes"] == null ? null : List<EpisodeVideo>.from(json["episodes"].map((x) => EpisodeVideo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "promo": promo == null ? null : List<dynamic>.from(promo!.map((x) => x.toJson())),
        "episodes": episodes == null ? null : List<dynamic>.from(episodes!.map((x) => x.toJson())),
      };
}
