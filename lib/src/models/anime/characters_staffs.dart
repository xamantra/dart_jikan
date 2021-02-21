import 'dart:convert';

import '../index.dart';

class JikanAnimeCharacterStaff {
  JikanAnimeCharacterStaff({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.characters,
    this.staff,
  });

  final String requestHash;
  final bool requestCached;
  final int requestCacheExpiry;
  final List<Character> characters;
  final List<Person> staff;

  JikanAnimeCharacterStaff copyWith({
    String requestHash,
    bool requestCached,
    int requestCacheExpiry,
    List<Character> characters,
    List<Person> staff,
  }) =>
      JikanAnimeCharacterStaff(
        requestHash: requestHash ?? this.requestHash,
        requestCached: requestCached ?? this.requestCached,
        requestCacheExpiry: requestCacheExpiry ?? this.requestCacheExpiry,
        characters: characters ?? this.characters,
        staff: staff ?? this.staff,
      );

  static JikanAnimeCharacterStaff fromRawJson(String str) => JikanAnimeCharacterStaff.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory JikanAnimeCharacterStaff.fromJson(Map<String, dynamic> json) => JikanAnimeCharacterStaff(
        requestHash: json["request_hash"] == null ? null : json["request_hash"],
        requestCached: json["request_cached"] == null ? null : json["request_cached"],
        requestCacheExpiry: json["request_cache_expiry"] == null ? null : json["request_cache_expiry"],
        characters: json["characters"] == null ? null : List<Character>.from(json["characters"].map((x) => Character.fromJson(x))),
        staff: json["staff"] == null ? null : List<Person>.from(json["staff"].map((x) => Person.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "request_hash": requestHash == null ? null : requestHash,
        "request_cached": requestCached == null ? null : requestCached,
        "request_cache_expiry": requestCacheExpiry == null ? null : requestCacheExpiry,
        "characters": characters == null ? null : List<dynamic>.from(characters.map((x) => x.toJson())),
        "staff": staff == null ? null : List<dynamic>.from(staff.map((x) => x.toJson())),
      };
}
