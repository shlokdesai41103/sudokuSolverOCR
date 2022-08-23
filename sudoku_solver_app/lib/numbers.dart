// To parse this JSON data, do
//
//     final numbers = numbersFromJson(jsonString);

import 'dart:convert';

Map<String, Numbers> numbersFromJson(String str) => Map.from(json.decode(str))
    .map((k, v) => MapEntry<String, Numbers>(k, Numbers.fromJson(v)));

String numbersToJson(Map<String, Numbers> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class Numbers {
  Numbers({
    required this.val,
  });

  int val;

  factory Numbers.fromJson(Map<String, dynamic> json) => Numbers(
        val: json["val"],
      );

  Map<String, dynamic> toJson() => {
        "val": val,
      };
}
