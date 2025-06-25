// To parse this JSON data, do
//
//     final historyResult = historyResultFromJson(jsonString);

import 'dart:convert';

List<HistoryResult> historyResultFromJson(String str) => List<HistoryResult>.from(json.decode(str).map((x) => HistoryResult.fromJson(x)));

String historyResultToJson(List<HistoryResult> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HistoryResult {
  double moisture;
  double soilPh;
  double phosphorus;
  double nitrogen;
  double potassium;
  DateTime timestamp;
  String id;
  String potassiumStatus;
  String nitrogenStatus;
  String phosphorusStatus;
  String soilPhStatus;
  String soilPhClass;
  String moistureStatus;
  String moistureType;

  HistoryResult({
    required this.moisture,
    required this.soilPh,
    required this.phosphorus,
    required this.nitrogen,
    required this.potassium,
    required this.timestamp,
    required this.id,
    required this.potassiumStatus,
    required this.nitrogenStatus,
    required this.phosphorusStatus,
    required this.soilPhStatus,
    required this.soilPhClass,
    required this.moistureStatus,
    required this.moistureType,
  });

  factory HistoryResult.fromJson(Map<String, dynamic> json) => HistoryResult(
        moisture: json["Moisture"]?.toDouble(),
        soilPh: json["SoilPH"]?.toDouble(),
        phosphorus: json["Phosphorus"]?.toDouble(),
        nitrogen: json["Nitrogen"]?.toDouble(),
        potassium: json["Potassium"]?.toDouble(),
        timestamp: DateTime.parse(json["Timestamp"]),
        id: json["id"],
        potassiumStatus: json["PotassiumStatus"],
        nitrogenStatus: json["NitrogenStatus"],
        phosphorusStatus: json["PhosphorusStatus"],
        soilPhStatus: json["SoilPHStatus"],
        soilPhClass: json["SoilPHClass"],
        moistureStatus: json["MoistureStatus"],
        moistureType: json["MoistureType"],
      );

  Map<String, dynamic> toJson() => {
        "Moisture": moisture,
        "SoilPH": soilPh,
        "Phosphorus": phosphorus,
        "Nitrogen": nitrogen,
        "Potassium": potassium,
        "Timestamp": timestamp.toIso8601String(),
        "id": id,
        "PotassiumStatus": potassiumStatus,
        "NitrogenStatus": nitrogenStatus,
        "PhosphorusStatus": phosphorusStatus,
        "SoilPHStatus": soilPhStatus,
        "SoilPHClass": soilPhClass,
        "MoistureStatus": moistureStatus,
        "MoistureType": moistureType,
      };
}
