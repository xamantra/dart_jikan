import 'dart:convert';

import '../utils/index.dart';

class JikanError {
  JikanError({
    this.status,
    this.type,
    this.message,
    this.error,
  });

  final int? status;
  final String? type;
  final String? message;
  final String? error;

  JikanError copyWith({
    int? status,
    String? type,
    String? message,
    String? error,
  }) =>
      JikanError(
        status: status ?? this.status,
        type: type ?? this.type,
        message: message ?? this.message,
        error: error ?? this.error,
      );

  factory JikanError.fromRawJson(String str) => JikanError.fromJson(json.decode(str));

  String? toRawJson() => json.encode(toJson());

  factory JikanError.fromJson(Map<String, dynamic> json) => JikanError(
        status: json["status"] == null ? null : toInt(json["status"]),
        type: json["type"] == null ? null : json["type"],
        message: json["message"] == null ? null : json["message"],
        error: json["error"] == null ? null : json["error"],
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "type": type == null ? null : type,
        "message": message == null ? null : message,
        "error": error == null ? null : error,
      };
}
