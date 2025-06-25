import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terranalysis/src/home_screen/view/home_view.dart';
import 'package:terranalysis/src/more_details_screen/view/more_details_view.dart';
import 'package:terranalysis/src/soil_status_screen/view/soil_status_view.dart';
// import '../../plant_health_indicator_screen/view/plant_health_history_details_view.dart';
import '../../result_history_screen/view/result_history_view.dart';

class BottomNavController extends GetxController {
  RxInt currentIndex = 0.obs;
  final List<Widget> body = [
    const HomePage(),
    const SoilStatus(),
    const ResultHistoryPage(),
    // const PlantHealthHistoryPage(),
    const MoreDetailsPage(),
  ];
}
