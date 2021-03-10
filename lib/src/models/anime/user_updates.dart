import 'dart:convert';

import 'index.dart';

class JikanAnimeUserUpdates {
  JikanAnimeUserUpdates({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.users,
  });

  final String? requestHash;
  final bool? requestCached;
  final int? requestCacheExpiry;
  final List<UserAnimeUpdate>? users;

  JikanAnimeUserUpdates copyWith({
    String? requestHash,
    bool? requestCached,
    int? requestCacheExpiry,
    List<UserAnimeUpdate>? users,
  }) =>
      JikanAnimeUserUpdates(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        users: users ?? this.users,
      );

  static JikanAnimeUserUpdates fromRawJson(String str) => JikanAnimeUserUpdates.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory JikanAnimeUserUpdates.fromJson(Map<String, dynamic> json) => JikanAnimeUserUpdates(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        users: json["users"] == null ? null : List<UserAnimeUpdate>.from(json["users"].map((x) => UserAnimeUpdate.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "users": users == null ? null : List<dynamic>.from(users!.map((x) => x.toJson())),
      };
}
