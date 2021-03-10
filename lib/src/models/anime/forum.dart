import 'dart:convert';

import '../index.dart';

class JikanAnimeForum {
  JikanAnimeForum({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.topics,
  });

  final String? requestHash;
  final bool? requestCached;
  final int? requestCacheExpiry;
  final List<ForumTopic>? topics;

  JikanAnimeForum copyWith({
    String? requestHash,
    bool? requestCached,
    int? requestCacheExpiry,
    List<ForumTopic>? topics,
  }) =>
      JikanAnimeForum(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        topics: topics ?? this.topics,
      );

  static JikanAnimeForum fromRawJson(String str) => JikanAnimeForum.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory JikanAnimeForum.fromJson(Map<String, dynamic> json) => JikanAnimeForum(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        topics: json["topics"] == null ? null : List<ForumTopic>.from(json["topics"].map((x) => ForumTopic.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "topics": topics == null ? null : List<dynamic>.from(topics!.map((x) => x.toJson())),
      };
}
