import 'dart:convert';

import 'index.dart';

class ReleaseDate {
  ReleaseDate({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  final DateTime? from;
  final DateTime? to;
  final ReleasePropDate? prop;
  final String? string;

  ReleaseDate? copyWith({
    DateTime? from,
    DateTime? to,
    ReleasePropDate? prop,
    String? string,
  }) =>
      ReleaseDate(
        from: from ?? this.from,
        to: to ?? this.to,
        prop: prop ?? this.prop,
        string: string ?? this.string,
      );

  factory ReleaseDate.fromRawJson(String str) => ReleaseDate.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory ReleaseDate.fromJson(Map<String, dynamic> json) => ReleaseDate(
        from: json["from"] == null ? null : DateTime.parse(json["from"]),
        to: json["to"] == null ? null : DateTime.parse(json["to"]),
        prop: json["prop"] == null ? null : ReleasePropDate.fromJson(json["prop"]),
        string: json["string"] == null ? null : json["string"],
      );

  Map<String, dynamic> toJson() => {
        "from": from == null ? null : from!.toIso8601String(),
        "to": to == null ? null : to!.toIso8601String(),
        "prop": prop == null ? null : prop!.toJson(),
        "string": string == null ? null : string,
      };
}
