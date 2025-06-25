import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../model/history_result_model.dart';
import '../../../model/soil_quality_model.dart';

class ResultHistoryController extends GetxController {
  RxList<HistoryResult> historyResult = <HistoryResult>[].obs;
  RxList<HistoryResult> historyResultMasterList = <HistoryResult>[].obs;

  RxDouble moisture = 0.0.obs;
  RxDouble nitrogen = 0.0.obs;
  RxDouble phosphorus = 0.0.obs;
  RxDouble potassium = 0.0.obs;
  RxDouble soilPH = 0.0.obs;
  RxString status = "".obs;
  RxString moistureType = "".obs;

  RxString moistureStatus = "".obs;
  RxString nitrogenStatus = "".obs;
  RxString phosphorusStatus = "".obs;
  RxString potassiumStatus = "".obs;
  RxString soilPHStatus = "".obs;
  RxString soilPHClass = "".obs;

  RxString completeUreaResult = " 0.0".obs;
  RxString incompleteUreaResult = " 0.0".obs;
  RxString ammoniumSulfateResult = "0.0".obs;
  RxString ammoniumPhosphateResult = "0.0".obs;
  RxString solophosResult = "0.0".obs;
  RxString triplefourtheenResult = "0.0".obs;
  RxString singlePotasResult = " 0.0".obs;
  RxString incompletePotasResult = " 0.0".obs;
  RxString completePotasResult = " 0.0".obs;
  RxString organicMaterialResult = "0.0".obs;

  DateTime? fromDate;
  DateTime? toDate;

  RxString dateFilter = ''.obs;

  RxDouble averagemoisture = 0.0.obs;
  RxDouble averagenitrogen = 0.0.obs;
  RxDouble averagephosphorus = 0.0.obs;
  RxDouble averagepotassium = 0.0.obs;
  RxDouble averagesoilPH = 0.0.obs;
  RxString averagestatus = "".obs;
  RxString averagemoistureType = "".obs;

  RxString averagemoistureStatus = "".obs;
  RxString averagenitrogenStatus = "".obs;
  RxString averagephosphorusStatus = "".obs;
  RxString averagepotassiumStatus = "".obs;
  RxString averagesoilPHStatus = "".obs;
  RxString averagesoilPHClass = "".obs;

  getHistoryResult() async {
    try {
      var res = await FirebaseFirestore.instance.collection('SoilReadings').orderBy('Timestamp', descending: true).get();
      var scanresults = res.docs;
      List templist = [];
      for (var i = 0; i < scanresults.length; i++) {
        Map mapdata = scanresults[i].data();
        mapdata['Timestamp'] = mapdata['Timestamp'].toDate().toString();
        mapdata['id'] = scanresults[i].id;
        // templist.add(mapdata);

        SoilQuality soilQuality = SoilQuality(
          status: mapdata['Status'].toString(),
          moisture: double.parse(mapdata['Moisture'].toString()),
          soilPh: double.parse(mapdata['SoilPH'].toString()),
          phosphorus: double.parse(mapdata['Phosphorus'].toString()),
          nitrogen: double.parse(mapdata['Nitrogen'].toString()),
          potassium: double.parse(mapdata['Potassium'].toString()),
        );

        moisture.value = soilQuality.moisture;
        nitrogen.value = soilQuality.nitrogen;
        phosphorus.value = soilQuality.phosphorus;
        potassium.value = soilQuality.potassium;
        soilPH.value = soilQuality.soilPh;
        status.value = soilQuality.status;

        // NITROGEN
        if (nitrogen.value < 240) {
          nitrogenStatus.value = "Low";
        } else if (nitrogen.value >= 240 && nitrogen.value < 480) {
          nitrogenStatus.value = "Med";
        } else if (nitrogen.value >= 480) {
          nitrogenStatus.value = "High";
        }
        // PHOSPHORUS
        if (phosphorus.value < 11) {
          phosphorusStatus.value = "Low";
        } else if (phosphorus.value >= 11 && phosphorus.value < 22) {
          phosphorusStatus.value = "Med";
        } else if (phosphorus.value >= 22) {
          phosphorusStatus.value = "High";
        }
        // POTASSIUM
        if (potassium.value < 110) {
          potassiumStatus.value = "Low";
        } else if (potassium.value >= 110 && potassium.value < 280) {
          potassiumStatus.value = "Med";
        } else if (potassium.value >= 280) {
          potassiumStatus.value = "High";
        }
        // SOIL PH
        if (soilPH.value >= 4.5 && soilPH.value < 6.5) {
          soilPHClass.value = "Acidic";
          if (soilPH.value < 4.5) {
            soilPHStatus.value = "High";
          } else if (soilPH.value >= 4.6 && soilPH.value < 5.5) {
            soilPHStatus.value = "Med";
          } else if (soilPH.value >= 5.6 && soilPH.value < 6.5) {
            soilPHStatus.value = "High";
          }
        } else if (soilPH.value >= 6.6 && soilPH.value < 7.5) {
          soilPHClass.value = "Neutral";
          soilPHStatus.value = "Med";
        } else if (soilPH.value >= 7.6) {
          soilPHClass.value = "Alkaline";
          if (soilPH.value < 4.5) {
            soilPHStatus.value = "Low";
          } else if (soilPH.value >= 8.6 && soilPH.value < 9) {
            soilPHStatus.value = "Med";
          } else if (soilPH.value >= 9.1) {
            soilPHStatus.value = "High";
          }
        }

        // MOISTURE
        if (moisture.value <= 40) {
          moistureStatus.value = "Low";
        } else if (moisture.value >= 41 && moisture.value < 61) {
          moistureStatus.value = "Med";
        } else if (moisture.value >= 61) {
          moistureStatus.value = "High";
        }

        // MOISTURE TYPE
        if (moisture.value < 20) {
          moistureType.value = "Extremely Dry";
        } else if (moisture.value >= 21 && moisture.value < 40) {
          moistureType.value = "Slightly Wet";
        } else if (moisture.value >= 41 && moisture.value < 60) {
          moistureType.value = "Moderately Wet";
        } else if (moisture.value >= 61) {
          moistureType.value = "Extremely Wet";
        }

        // AMMMONIUM SULFATE
        ammoniumSulfateResult.value = (((nitrogen.value / 0.21) / 50) * 0.21).toStringAsFixed(2);
        log("AMMMONIUM SULFATE: ${ammoniumSulfateResult.value} kg/ha");

        // AMMMONIUM PHOSPHATE
        // var nitrogenRecommendation = (((potassium.value / 0.16) / 50) * 0.16).toStringAsFixed(2);
        var phosphorusRecommendation = (((phosphorus.value / 0.20) / 50) * 0.20).toStringAsFixed(2);
        ammoniumPhosphateResult.value = phosphorusRecommendation.toString();
        log("AMMMONIUM PHOSPHATE: ${ammoniumPhosphateResult.value} kg/ha");

        //INCOMPLETE UREA
        // incompleteUreaResult.value = (((nitrogen.value / 0.46) / 50) * 0.46).toStringAsFixed(2);
        var incompleteUreaVariableOne = phosphorus.value / .20;
        incompleteUreaResult.value = ((((nitrogen.value - incompleteUreaVariableOne * .16) / .46) / 50) * .46).toStringAsFixed(2);

        log("INCOMPLETE UREA: ${incompleteUreaResult.value} kg/ha");

        // SOLOPHOS
        solophosResult.value = (((phosphorus.value / 0.18) / 50) * 0.18).toStringAsFixed(2);
        log("SOLOPHOS: ${solophosResult.value} kg/ha");

        // TRIPLE 14
        triplefourtheenResult.value = (((phosphorus.value / .14) / 50) * .14).toStringAsFixed(2);
        log("TRIPLE 14: ${triplefourtheenResult.value} kg/ha");

        //COMPLETE UREA
        // incompleteUreaResult.value = (((nitrogen.value / 0.46) / 50) * 0.46).toStringAsFixed(2);
        var completeUreaVariableOne = phosphorus.value / .14;
        completeUreaResult.value = ((((nitrogen.value - completeUreaVariableOne * .14) / .46) / 50) * .46).toStringAsFixed(2);
        log("COMPLETE UREA: ${completeUreaResult.value} kg/ha");

        //SINGLE POTASH
        // potashResult.value = (((potassium.value / 0.60) / 50) * 0.60).toStringAsFixed(2);
        singlePotasResult.value = (((potassium.value / 0.60) / 50) * 0.60).toStringAsFixed(2);
        log("SINGLE POTASH: ${singlePotasResult.value} kg/ha");

        //INCOMPLETE POTASH
        incompletePotasResult.value = (((potassium.value / 0.60) / 50) * 0.60).toStringAsFixed(2);
        log("INCOMPLETE POTASH: ${incompletePotasResult.value} kg/ha");

        //COMPLETE POTASH
        var completePotashVariableOne = phosphorus.value / .14;
        completePotasResult.value = ((((potassium.value - completePotashVariableOne * .14) / .60) / 50) * .60).toStringAsFixed(2);
        log("COMPLETE POTASH: ${completePotasResult.value} kg/ha");

        // ORGANIC MATERIAL
        var oraganicMaterialNitrogen = (((nitrogen.value / 0.02) / 50) * 0.02);
        var oraganicMaterialPhosphorus = (((phosphorus.value / 0.02) / 50) * 0.02);
        var oraganicMaterialPotassium = (((potassium.value / 0.02) / 50) * 0.02);
        organicMaterialResult.value = (oraganicMaterialNitrogen + oraganicMaterialPhosphorus + oraganicMaterialPotassium).toStringAsFixed(2);
        log("ORGANIC MATERIAL: ${organicMaterialResult.value} kg/ha");

        mapdata['PotassiumStatus'] = potassiumStatus.value;
        mapdata['NitrogenStatus'] = nitrogenStatus.value;
        mapdata['PhosphorusStatus'] = phosphorusStatus.value;
        mapdata['SoilPHStatus'] = soilPHStatus.value;
        mapdata['SoilPHClass'] = soilPHClass.value;
        mapdata['MoistureStatus'] = moistureStatus.value;
        mapdata['MoistureType'] = moistureType.value;

        templist.add(mapdata);
      }
      historyResult.assignAll(historyResultFromJson(jsonEncode(templist)));
      historyResultMasterList.assignAll(historyResultFromJson(jsonEncode(templist)));

      if (fromDate != null && toDate != null) {
        searchData(from: fromDate!.subtract(const Duration(hours: 1)), to: toDate!.add(const Duration(days: 1)));
      } else {
        calculateAverage();
      }
    } catch (e) {
      log("ERROR (getHistoryResult) $e");
    }
  }

  calculateAverage() async {
    averagenitrogen.value = 0;
    averagephosphorus.value = 0;
    averagepotassium.value = 0;
    averagesoilPH.value = 0;
    averagemoisture.value = 0;

    for (var i = 0; i < historyResult.length; i++) {
      averagenitrogen.value = averagenitrogen.value + historyResult[i].nitrogen;
      averagephosphorus.value = averagephosphorus.value + historyResult[i].phosphorus;
      averagepotassium.value = averagepotassium.value + historyResult[i].potassium;
      averagesoilPH.value = averagesoilPH.value + historyResult[i].soilPh;
      averagemoisture.value = averagemoisture.value + historyResult[i].moisture;
    }

    averagenitrogen.value = averagenitrogen.value / historyResult.length;
    averagephosphorus.value = averagephosphorus.value / historyResult.length;
    averagepotassium.value = averagepotassium.value / historyResult.length;
    averagesoilPH.value = averagesoilPH.value / historyResult.length;
    averagemoisture.value = averagemoisture.value / historyResult.length;

    // NITROGEN
    if (averagenitrogen.value < 240) {
      averagenitrogenStatus.value = "Low";
    } else if (averagenitrogen.value >= 240 && averagenitrogen.value < 480) {
      averagenitrogenStatus.value = "Med";
    } else if (averagenitrogen.value >= 480) {
      averagenitrogenStatus.value = "High";
    }
    // PHOSPHORUS
    if (averagephosphorus.value < 11) {
      averagephosphorusStatus.value = "Low";
    } else if (averagephosphorus.value >= 11 && averagephosphorus.value < 22) {
      averagephosphorusStatus.value = "Med";
    } else if (averagephosphorus.value >= 22) {
      averagephosphorusStatus.value = "High";
    }
    // POTASSIUM
    if (averagepotassium.value < 110) {
      averagepotassiumStatus.value = "Low";
    } else if (averagepotassium.value >= 110 && averagepotassium.value < 280) {
      averagepotassiumStatus.value = "Med";
    } else if (potassium.value >= 280) {
      averagepotassiumStatus.value = "High";
    }
    // SOIL PH
    if (averagesoilPH.value >= 4.5 && averagesoilPH.value < 6.5) {
      averagesoilPHClass.value = "Acidic";
      if (averagesoilPH.value < 4.5) {
        averagesoilPHStatus.value = "High";
      } else if (averagesoilPH.value >= 4.6 && averagesoilPH.value < 5.5) {
        averagesoilPHStatus.value = "Med";
      } else if (averagesoilPH.value >= 5.6 && averagesoilPH.value < 6.5) {
        averagesoilPHStatus.value = "High";
      }
    } else if (averagesoilPH.value >= 6.6 && averagesoilPH.value < 7.5) {
      averagesoilPHClass.value = "Neutral";
      averagesoilPHStatus.value = "Med";
    } else if (averagesoilPH.value >= 7.6) {
      averagesoilPHClass.value = "Alkaline";
      if (averagesoilPH.value < 4.5) {
        averagesoilPHStatus.value = "Low";
      } else if (averagesoilPH.value >= 8.6 && averagesoilPH.value < 9) {
        averagesoilPHStatus.value = "Med";
      } else if (soilPH.value >= 9.1) {
        averagesoilPHStatus.value = "High";
      }
    }

    // MOISTURE
    if (averagemoisture.value <= 40) {
      averagemoistureStatus.value = "Low";
    } else if (averagemoisture.value >= 41 && averagemoisture.value < 61) {
      averagemoistureStatus.value = "Med";
    } else if (moisture.value >= 61) {
      averagemoistureStatus.value = "High";
    }

    // MOISTURE TYPE
    if (averagemoisture.value < 20) {
      averagemoistureType.value = "Extremely Dry";
    } else if (moisture.value >= 21 && averagemoisture.value < 40) {
      averagemoistureType.value = "Slightly Wet";
    } else if (averagemoisture.value >= 41 && averagemoisture.value < 60) {
      averagemoistureType.value = "Moderately Wet";
    } else if (averagemoisture.value >= 61) {
      averagemoistureType.value = "Extremely Wet";
    }
  }

  searchData({
    required DateTime from,
    required DateTime to,
  }) async {
    historyResult.clear();
    for (var i = 0; i < historyResultMasterList.length; i++) {
      if (historyResultMasterList[i].timestamp.isAfter(from) && historyResultMasterList[i].timestamp.isBefore(to)) {
        historyResult.add(historyResultMasterList[i]);
      }
    }
    calculateAverage();
  }

  @override
  void onInit() {
    getHistoryResult();
    super.onInit();
  }
}
