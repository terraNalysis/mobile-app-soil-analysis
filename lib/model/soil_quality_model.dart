// To parse this JSON data, do
//
//     final soilQuality = soilQualityFromJson(jsonString);

import 'dart:convert';

SoilQuality soilQualityFromJson(String str) => SoilQuality.fromJson(json.decode(str));

String soilQualityToJson(SoilQuality data) => json.encode(data.toJson());

class SoilQuality {
  String status;
  double moisture;
  double soilPh;
  double phosphorus;
  double nitrogen;
  double potassium;

  SoilQuality({
    required this.status,
    required this.moisture,
    required this.soilPh,
    required this.phosphorus,
    required this.nitrogen,
    required this.potassium,
  });

  factory SoilQuality.fromJson(Map<String, dynamic> json) => SoilQuality(
        status: json["Status"],
        moisture: json["Moisture"]?.toDouble(),
        soilPh: json["SoilPH"]?.toDouble(),
        phosphorus: json["Phosphorus"]?.toDouble(),
        nitrogen: json["Nitrogen"]?.toDouble(),
        potassium: json["Potassium"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "Status": status,
        "Moisture": moisture,
        "SoilPH": soilPh,
        "Phosphorus": phosphorus,
        "Nitrogen": nitrogen,
        "Potassium": potassium,
      };
}
