import 'dart:convert';

class JikanDate {
  JikanDate({
    this.day,
    this.month,
    this.year,
  });

  final int day;
  final int month;
  final int year;

  JikanDate copyWith({
    int day,
    int month,
    int year,
  }) =>
      JikanDate(
        day: day ?? this.day,
        month: month ?? this.month,
        year: year ?? this.year,
      );

  factory JikanDate.fromRawJson(String str) =>
      JikanDate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory JikanDate.fromJson(Map<String, dynamic> json) => JikanDate(
        day: json["day"] == null ? null : json["day"],
        month: json["month"] == null ? null : json["month"],
        year: json["year"] == null ? null : json["year"],
      );

  Map<String, dynamic> toJson() => {
        "day": day == null ? null : day,
        "month": month == null ? null : month,
        "year": year == null ? null : year,
      };
}
