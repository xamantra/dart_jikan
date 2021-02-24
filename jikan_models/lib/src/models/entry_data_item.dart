import 'dart:convert';

/// {@template entry_data_item}
/// ### This model is used in:
/// - producers
/// - licensors
/// - studios
/// - genres
///
/// ### And also in related entries:
/// - adaptation
/// - summary
/// - prequel
/// - sequel
/// - alternativeSetting
/// - alternativeVersion
/// - spinOff
/// - sideStory
/// - fullStory
/// - parentStory
/// - other
/// - character
/// {@endtemplate}

/// {@macro entry_data_item}
class EntryDataItem {
  /// {@macro entry_data_item}
  const EntryDataItem({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  final int malId;
  final String type;
  final String name;
  final String url;

  EntryDataItem copyWith({
    int malId,
    String type,
    String name,
    String url,
  }) =>
      EntryDataItem(
        malId: malId ?? this.malId,
        type: type ?? this.type,
        name: name ?? this.name,
        url: url ?? this.url,
      );

  factory EntryDataItem.fromRawJson(String str) =>
      EntryDataItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EntryDataItem.fromJson(Map<String, dynamic> json) => EntryDataItem(
        malId: json["mal_id"] == null ? null : json["mal_id"],
        type: json["type"] == null ? null : json["type"],
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId == null ? null : malId,
        "type": type == null ? null : type,
        "name": name == null ? null : name,
        "url": url == null ? null : url,
      };
}
