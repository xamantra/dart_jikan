import 'dart:convert';

import 'index.dart';

class ReleasePropDate {
  ReleasePropDate({
    this.from,
    this.to,
  });

  final JikanDate? from;
  final JikanDate? to;

  ReleasePropDate copyWith({
    JikanDate? from,
    JikanDate? to,
  }) =>
      ReleasePropDate(
        from: from ?? this.from,
        to: to ?? this.to,
      );

  factory ReleasePropDate.fromRawJson(String str) => ReleasePropDate.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory ReleasePropDate.fromJson(Map<String, dynamic> json) => ReleasePropDate(
        from: json["from"] == null ? null : JikanDate.fromJson(json["from"]),
        to: json["to"] == null ? null : JikanDate.fromJson(json["to"]),
      );

  Map<String, dynamic> toJson() => {
        "from": from == null ? null : from!.toJson(),
        "to": to == null ? null : to!.toJson(),
      };
}
