import 'dart:developer';

import 'package:get/get.dart';
import 'package:terranalysis/model/soil_quality_model.dart';

class ResultHistoryDetailsController extends GetxController {
  RxBool isLoading = true.obs;
  RxDouble moisture = 0.0.obs;
  RxDouble nitrogen = 0.0.obs;
  RxDouble phosphorus = 0.0.obs;
  RxDouble potassium = 0.0.obs;
  RxDouble soilPH = 0.0.obs;
  RxString status = "".obs;
  RxString moistureType = "".obs;

  RxDouble nitrogenPercent = 0.0.obs;
  RxDouble phosphorusPercent = 0.0.obs;
  RxDouble potassiumPercent = 0.0.obs;
  RxDouble soilPHpercent = 0.0.obs;

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

  SoilQuality soilQuality = SoilQuality(
    status: "",
    moisture: 0.0,
    soilPh: 0.0,
    phosphorus: 0.0,
    nitrogen: 0.0,
    potassium: 0.0,
  );

  calculateData() async {
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

    nitrogenPercent.value = nitrogen.value > 1000 ? 1 : (nitrogen.value / 1000);
    phosphorusPercent.value = phosphorus.value > 1000 ? 1 : (phosphorus.value / 1000);
    potassiumPercent.value = potassium.value > 1000 ? 1 : (potassium.value / 1000);
    soilPHpercent.value = soilPH.value > 10 ? 1 : (soilPH.value / 10);

    calculateRecommendation();
  }

  Future calculateRecommendation() async {
    try {
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
    } catch (e) {
      log("ERROR (calculateRecommendation) $e");
    }
    Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;
    });
  }

  @override
  void onInit() async {
    soilQuality = await Get.arguments['soilQuality'];
    calculateData();
    super.onInit();
  }
}
