import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:terranalysis/src/home_screen/controller/home_controller.dart';
import 'package:terranalysis/src/more_details_screen/controller/more_details_controller.dart';
import 'package:terranalysis/src/soil_status_screen/controller/soil_status_controller.dart';

import '../../../config/app_colors.dart';
import '../../plant_health_indicator_screen/controller/plant_health_indicator_controller.dart';
import '../../result_history_screen/controller/result_history_controller.dart';
import '../controller/bottom_nav_controller.dart';

class BottomNavPage extends GetView<BottomNavController> {
  const BottomNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavController());
    Get.put(HomeController());
    Get.put(SoilStatusController());
    Get.put(MoreDetailsController());
    Get.put(PlantHealthIndicatorController());
    Get.put(ResultHistoryController());

    return Scaffold(
      body: Obx(() => controller.body[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: AppColors.darkgreen,
          unselectedItemColor: AppColors.dark,
          showUnselectedLabels: true,
          onTap: (index) {
            controller.currentIndex.value = index;
          },
          currentIndex: controller.currentIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Soil Status',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.nature),
            //   label: 'Plant Health',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_rounded),
              label: 'More Details',
            ),
          ],
        ),
      ),
    );
  }
}
