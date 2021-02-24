import 'dart:convert';

import '../index.dart';

class JikanAnimeStats {
  JikanAnimeStats({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.watching,
    this.completed,
    this.onHold,
    this.dropped,
    this.planToWatch,
    this.total,
    this.scores,
  });

  final String requestHash;
  final bool requestCached;
  final int requestCacheExpiry;
  final int watching;
  final int completed;
  final int onHold;
  final int dropped;
  final int planToWatch;
  final int total;

  /// The map keys are the score number from 1 to 10.
  /// ```json
  /// {
  ///   "1": {
  ///     "votes": 6325,
  ///     "percentage": 0.8
  ///   },
  ///   /// ...
  ///   "9": {
  ///     "votes": 165720,
  ///     "percentage": 21.8
  ///   },
  ///   "10": {
  ///     "votes": 291565,
  ///     "percentage": 38.4
  ///   }
  /// }
  /// ```
  final Map<String, ScoreVote> scores;

  JikanAnimeStats copyWith({
    String requestHash,
    bool requestCached,
    int requestCacheExpiry,
    int watching,
    int completed,
    int onHold,
    int dropped,
    int planToWatch,
    int total,
    Map<String, ScoreVote> scores,
  }) =>
      JikanAnimeStats(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        watching: watching ?? this.watching,
        completed: completed ?? this.completed,
        onHold: onHold ?? this.onHold,
        dropped: dropped ?? this.dropped,
        planToWatch: planToWatch ?? this.planToWatch,
        total: total ?? this.total,
        scores: scores ?? this.scores,
      );

  static JikanAnimeStats fromRawJson(String str) =>
      JikanAnimeStats.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory JikanAnimeStats.fromJson(Map<String, dynamic> json) =>
      JikanAnimeStats(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached:
            json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null
            ? null
            : json["request_cache_expiry"],
        watching: json["watching"] == null ? null : json["watching"],
        completed: json["completed"] == null ? null : json["completed"],
        onHold: json["on_hold"] == null ? null : json["on_hold"],
        dropped: json["dropped"] == null ? null : json["dropped"],
        planToWatch:
            json["plan_to_watch"] == null ? null : json["plan_to_watch"],
        total: json["total"] == null ? null : json["total"],
        scores: json["scores"] == null
            ? null
            : Map.from(json["scores"]).map((k, v) =>
                MapEntry<String, ScoreVote>(k, ScoreVote.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry":
            requestCacheExpiry == null ? null : requestCacheExpiry,
        "watching": watching == null ? null : watching,
        "completed": completed == null ? null : completed,
        "on_hold": onHold == null ? null : onHold,
        "dropped": dropped == null ? null : dropped,
        "plan_to_watch": planToWatch == null ? null : planToWatch,
        "total": total == null ? null : total,
        "scores": scores == null
            ? null
            : Map.from(scores)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}
