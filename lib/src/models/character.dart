import 'dart:convert';

import 'index.dart';

class Character {
  Character({
    this.malId,
    this.url,
    this.imageUrl,
    this.name,
    this.role,
    this.voiceActors,
  });

  final int malId;
  final String url;
  final String imageUrl;
  final String name;
  final String role;
  final List<Person> voiceActors;

  Character copyWith({
    int malId,
    String url,
    String imageUrl,
    String name,
    String role,
    List<Person> voiceActors,
  }) =>
      Character(
        malId: malId ?? this.malId,
        url: url ?? this.url,
        imageUrl: imageUrl ?? this.imageUrl,
        name: name ?? this.name,
        role: role ?? this.role,
        voiceActors: voiceActors ?? this.voiceActors,
      );

  factory Character.fromRawJson(String str) => Character.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        name: json["name"] == null ? null : json["name"],
        role: json["role"] == null ? null : json["role"],
        voiceActors: json["voice_actors"] == null ? null : List<Person>.from(json["voice_actors"].map((x) => Person.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "name": name == null ? null : name,
        "role": role == null ? null : role,
        "voice_actors": voiceActors == null ? null : List<dynamic>.from(voiceActors.map((x) => x.toJson())),
      };
}
