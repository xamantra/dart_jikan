import 'dart:convert';

class JikanMoreInfo {
  JikanMoreInfo({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.moreinfo,
  });

  final String requestHash;
  final bool requestCached;
  final int requestCacheExpiry;
  final String moreinfo;

  JikanMoreInfo copyWith({
    String requestHash,
    bool requestCached,
    int requestCacheExpiry,
    String moreinfo,
  }) =>
      JikanMoreInfo(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        moreinfo: moreinfo ?? this.moreinfo,
      );

  static JikanMoreInfo fromRawJson(String str) => JikanMoreInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory JikanMoreInfo.fromJson(Map<String, dynamic> json) => JikanMoreInfo(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        moreinfo: json["moreinfo"] == null ? null : json["moreinfo"],
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "moreinfo": moreinfo == null ? null : moreinfo,
      };
}
