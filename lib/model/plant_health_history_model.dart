// To parse this JSON data, do
//
//     final plantHealtHistory = plantHealtHistoryFromJson(jsonString);

import 'dart:convert';

List<PlantHealtHistory> plantHealtHistoryFromJson(String str) => List<PlantHealtHistory>.from(json.decode(str).map((x) => PlantHealtHistory.fromJson(x)));

String plantHealtHistoryToJson(List<PlantHealtHistory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PlantHealtHistory {
  double rate;
  String plant;
  DateTime datecreated;
  String status;
  String id;

  PlantHealtHistory({
    required this.rate,
    required this.plant,
    required this.datecreated,
    required this.status,
    required this.id,
  });

  factory PlantHealtHistory.fromJson(Map<String, dynamic> json) => PlantHealtHistory(
        rate: json["rate"]?.toDouble(),
        plant: json["plant"],
        datecreated: DateTime.parse(json["datecreated"]),
        status: json["status"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "plant": plant,
        "datecreated": datecreated.toIso8601String(),
        "status": status,
        "id": id,
      };
}
