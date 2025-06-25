import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:terranalysis/services/loading_services.dart';
import 'package:terranalysis/services/message_dialog.dart';

import '../../../model/plant_health_history_model.dart';

class PlantHealthIndicatorController extends GetxController {
  RxDouble leafValue = 0.1.obs;
  RxDouble steamStrengthValue = 0.1.obs;
  RxDouble rootHealthValue = 0.1.obs;
  RxDouble growthRateValue = 0.1.obs;
  RxDouble flowerFruitValue = 0.1.obs;
  RxDouble soilMoistureValue = 0.1.obs;
  RxDouble pestPresenceValue = 0.1.obs;
  RxDouble averageOverAllRate = 0.1.obs;

  RxString averageHealth = ''.obs;
  RxString healthStatus = ''.obs;
  RxString plant = ''.obs;

  Timer? debounce;

  RxList<PlantHealtHistory> plantHistoryList = <PlantHealtHistory>[].obs;

  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? dataListener;

  resetValues() {
    leafValue.value = 0.1;
    steamStrengthValue.value = 0.1;
    rootHealthValue.value = 0.1;
    growthRateValue.value = 0.1;
    flowerFruitValue.value = 0.1;
    soilMoistureValue.value = 0.1;
    pestPresenceValue.value = 0.1;
    calculateAverage();
  }

  Future calculateAverage() async {
    try {
      double allTotal =
          leafValue.value + steamStrengthValue.value + rootHealthValue.value + growthRateValue.value + flowerFruitValue.value + soilMoistureValue.value + pestPresenceValue.value;
      double average = allTotal / 7;
      averageHealth.value = average.toStringAsFixed(2);
      if (average <= 0.9) {
        healthStatus.value = "Poor";
      } else if (average >= 1 && average <= 1.9) {
        healthStatus.value = "Unhealthy";
      } else if (average >= 2 && average <= 3) {
        healthStatus.value = "Healthy";
      }
    } catch (e) {
      log("ERROR (calculateAverage) $e");
    }
  }

  getPlant() async {
    try {
      var res = await FirebaseFirestore.instance.collection('plant').get();
      if (res.docs.isNotEmpty) {
        plant.value = await res.docs[0]['name'];
      }
    } catch (e) {
      log("ERROR (getPlant) $e");
    }
  }

  getPlantMonitoringHistory() async {
    try {
      dataListener = FirebaseFirestore.instance.collection('planthealthhistory').orderBy('datecreated', descending: true).snapshots().listen((event) {
        var history = event.docs;
        List tempdata = [];
        double rates = 0.0;
        for (var i = 0; i < history.length; i++) {
          Map mapdata = history[i].data();
          mapdata['datecreated'] = mapdata['datecreated'].toDate().toString();
          mapdata['id'] = history[i].id;
          tempdata.add(mapdata);
          rates = rates + mapdata['rate'];
        }
        plantHistoryList.assignAll(plantHealtHistoryFromJson(jsonEncode(tempdata)));
        averageOverAllRate.value = rates / history.length;
      });
    } catch (e) {
      log("ERROR (getPlantMonitoringHistory) $e");
    }
  }

  savePlantMonitoring() async {
    try {
      LoadingDialog.showLoadingDialog();
      Future.delayed(const Duration(seconds: 1), () async {
        await FirebaseFirestore.instance.collection('planthealthhistory').add({
          "plant": plant.value.isEmpty ? "Unknown Plant" : plant.value,
          "datecreated": DateTime.now(),
          "status": healthStatus.value,
          "rate": double.parse(averageHealth.value),
        });
        Get.back();
        Get.back();
        MessageDialog.showMessageDialog(message: "Data Saved");
      });
    } catch (e) {
      log("ERROR (savePlantMonitoring) $e");
    }
  }

  editPlant({required String name}) async {
    try {
      LoadingDialog.showLoadingDialog();
      await FirebaseFirestore.instance.collection('plant').doc('o3A162CU9ekO8YyDt5o1').update({"name": name});
      Get.back();
      await getPlant();
      MessageDialog.showMessageDialog(message: "Plant name updated");
    } catch (e) {
      log("ERROR (editPlant) $e");
    }
  }

  @override
  void onInit() {
    getPlantMonitoringHistory();
    calculateAverage();
    getPlant();
    super.onInit();
  }

  @override
  void onClose() {
    if (dataListener != null) {
      dataListener!.cancel();
    }
    super.onClose();
  }
}
