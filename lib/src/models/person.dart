import 'dart:convert';

class Person {
  Person({
    this.malId,
    this.name,
    this.url,
    this.imageUrl,
    this.language,
    this.positions,
  });

  final int malId;
  final String name;
  final String url;
  final String imageUrl;
  final String language;
  final List<String> positions;

  Person copyWith({
    int malId,
    String name,
    String url,
    String imageUrl,
    String language,
    List<String> positions,
  }) =>
      Person(
        malId: malId ?? this.malId,
        name: name ?? this.name,
        url: url ?? this.url,
        imageUrl: imageUrl ?? this.imageUrl,
        language: language ?? this.language,
        positions: positions ?? this.positions,
      );

  factory Person.fromRawJson(String str) => Person.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Person.fromJson(Map<String, dynamic> json) => Person(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        language: json["language"] == null ? null : json["language"],
        positions: json["positions"] == null ? null : List<String>.from(json["positions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "name": name == null ? null : name,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
        "language": language == null ? null : language,
        "positions": positions == null ? null : List<dynamic>.from(positions.map((x) => x)),
      };
}
