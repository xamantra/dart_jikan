import 'dart:convert';

class Picture {
  Picture({
    this.large,
    this.small,
  });

  final String large;
  final String small;

  Picture copyWith({
    String large,
    String small,
  }) =>
      Picture(
        large: large ?? this.large,
        small: small ?? this.small,
      );

  factory Picture.fromRawJson(String str) => Picture.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        large: json["large"] == null ? null : json["large"],
        small: json["small"] == null ? null : json["small"],
      );

  Map<String, dynamic> toJson() => {
        "large": large == null ? null : large,
        "small": small == null ? null : small,
      };
}
