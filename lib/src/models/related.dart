import 'dart:convert';

import 'index.dart';

class Related {
  Related({
    this.adaptation,
    this.summary,
    this.prequel,
    this.sequel,
    this.alternativeSetting,
    this.alternativeVersion,
    this.spinOff,
    this.sideStory,
    this.fullStory,
    this.parentStory,
    this.other,
    this.character,
  });

  final List<EntryDataItem> adaptation;
  final List<EntryDataItem> summary;
  final List<EntryDataItem> prequel;
  final List<EntryDataItem> sequel;
  final List<EntryDataItem> alternativeSetting;
  final List<EntryDataItem> alternativeVersion;
  final List<EntryDataItem> spinOff;
  final List<EntryDataItem> sideStory;
  final List<EntryDataItem> fullStory;
  final List<EntryDataItem> parentStory;
  final List<EntryDataItem> other;
  final List<EntryDataItem> character;

  Related copyWith({
    List<EntryDataItem> adaptation,
    List<EntryDataItem> summary,
    List<EntryDataItem> prequel,
    List<EntryDataItem> sequel,
    List<EntryDataItem> alternativeSetting,
    List<EntryDataItem> alternativeVersion,
    List<EntryDataItem> spinOff,
    List<EntryDataItem> sideStory,
    List<EntryDataItem> fullStory,
    List<EntryDataItem> parentStory,
    List<EntryDataItem> other,
    List<EntryDataItem> character,
  }) =>
      Related(
        adaptation: adaptation ?? this.adaptation,
        summary: summary ?? this.summary,
        prequel: prequel ?? this.prequel,
        sequel: sequel ?? this.sequel,
        alternativeSetting: alternativeSetting ?? this.alternativeSetting,
        alternativeVersion: alternativeVersion ?? this.alternativeVersion,
        spinOff: spinOff ?? this.spinOff,
        sideStory: sideStory ?? this.sideStory,
        fullStory: fullStory ?? this.fullStory,
        parentStory: parentStory ?? this.parentStory,
        other: other ?? this.other,
        character: character ?? this.character,
      );

  factory Related.fromRawJson(String str) => Related.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Related.fromJson(Map<String, dynamic> json) => Related(
        adaptation: json["Adaptation"] == null
            ? null
            : List<EntryDataItem>.from(
                json["Adaptation"].map((x) => EntryDataItem.fromJson(x))),
        summary: json["Summary"] == null
            ? null
            : List<EntryDataItem>.from(
                json["Summary"].map((x) => EntryDataItem.fromJson(x))),
        prequel: json["Prequel"] == null
            ? null
            : List<EntryDataItem>.from(
                json["Prequel"].map((x) => EntryDataItem.fromJson(x))),
        sequel: json["Sequel"] == null
            ? null
            : List<EntryDataItem>.from(
                json["Sequel"].map((x) => EntryDataItem.fromJson(x))),
        alternativeSetting: json["Alternative setting"] == null
            ? null
            : List<EntryDataItem>.from(json["Alternative setting"]
                .map((x) => EntryDataItem.fromJson(x))),
        alternativeVersion: json["Alternative version"] == null
            ? null
            : List<EntryDataItem>.from(json["Alternative version"]
                .map((x) => EntryDataItem.fromJson(x))),
        spinOff: json["Spin-off"] == null
            ? null
            : List<EntryDataItem>.from(
                json["Spin-off"].map((x) => EntryDataItem.fromJson(x))),
        sideStory: json["Side story"] == null
            ? null
            : List<EntryDataItem>.from(
                json["Side story"].map((x) => EntryDataItem.fromJson(x))),
        fullStory: json["Full story"] == null
            ? null
            : List<EntryDataItem>.from(
                json["Full story"].map((x) => EntryDataItem.fromJson(x))),
        parentStory: json["Parent story"] == null
            ? null
            : List<EntryDataItem>.from(
                json["Parent story"].map((x) => EntryDataItem.fromJson(x))),
        other: json["Other"] == null
            ? null
            : List<EntryDataItem>.from(
                json["Other"].map((x) => EntryDataItem.fromJson(x))),
        character: json["Character"] == null
            ? null
            : List<EntryDataItem>.from(
                json["Character"].map((x) => EntryDataItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Adaptation": adaptation == null
            ? null
            : List<dynamic>.from(adaptation.map((x) => x.toJson())),
        "Summary": summary == null
            ? null
            : List<dynamic>.from(summary.map((x) => x.toJson())),
        "Prequel": prequel == null
            ? null
            : List<dynamic>.from(prequel.map((x) => x.toJson())),
        "Sequel": sequel == null
            ? null
            : List<dynamic>.from(sequel.map((x) => x.toJson())),
        "Alternative setting": alternativeSetting == null
            ? null
            : List<dynamic>.from(alternativeSetting.map((x) => x.toJson())),
        "Alternative version": alternativeVersion == null
            ? null
            : List<dynamic>.from(alternativeVersion.map((x) => x.toJson())),
        "Spin-off": spinOff == null
            ? null
            : List<dynamic>.from(spinOff.map((x) => x.toJson())),
        "Side story": sideStory == null
            ? null
            : List<dynamic>.from(sideStory.map((x) => x.toJson())),
        "Full story": fullStory == null
            ? null
            : List<dynamic>.from(fullStory.map((x) => x.toJson())),
        "Parent story": parentStory == null
            ? null
            : List<dynamic>.from(parentStory.map((x) => x.toJson())),
        "Other": other == null
            ? null
            : List<dynamic>.from(other.map((x) => x.toJson())),
        "Character": character == null
            ? null
            : List<dynamic>.from(character.map((x) => x.toJson())),
      };
}
