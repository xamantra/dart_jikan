import 'dart:convert';

import '../index.dart';

class JikanAnimePictures {
  JikanAnimePictures({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.pictures,
  });

  final String? requestHash;
  final bool? requestCached;
  final int? requestCacheExpiry;
  final List<Picture>? pictures;

  JikanAnimePictures copyWith({
    String? requestHash,
    bool? requestCached,
    int? requestCacheExpiry,
    List<Picture>? pictures,
  }) =>
      JikanAnimePictures(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        pictures: pictures ?? this.pictures,
      );

  static JikanAnimePictures fromRawJson(String str) => JikanAnimePictures.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory JikanAnimePictures.fromJson(Map<String, dynamic> json) => JikanAnimePictures(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        pictures: json["pictures"] == null ? null : List<Picture>.from(json["pictures"].map((x) => Picture.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "pictures": pictures == null ? null : List<dynamic>.from(pictures!.map((x) => x.toJson())),
      };
}
