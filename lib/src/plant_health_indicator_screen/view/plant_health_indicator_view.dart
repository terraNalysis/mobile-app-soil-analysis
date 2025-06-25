import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:terranalysis/config/app_colors.dart';
import 'package:terranalysis/src/plant_health_indicator_screen/dialog/edit_plant_dialog.dart';
import '../../../config/app_fontsizes.dart';
import '../controller/plant_health_indicator_controller.dart';
import 'plant_health_details_view.dart';

class PlantHealthIndicatorPage extends GetView<PlantHealthIndicatorController> {
  const PlantHealthIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: 100.h,
      width: 100.w,
      child: Padding(
        padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 6.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Plant Health Indicator",
                  style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.bold, fontSize: AppFontSizes.large),
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(() => const PlantHealthDetailsPage());
                    },
                    child: const Icon(Icons.info))
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "0.1 - 0.9 rate - Poor",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
            ),
            Text(
              "1.0 - 1.9  rate - Unhealthy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
            ),
            Text(
              "2.0 - 3.0 rate - Healthy ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
            ),
            SizedBox(
              height: 1.h,
            ),
            const Divider(),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 7.h,
              width: 100.w,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(left: 3.w, right: 3.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          controller.plant.value.isEmpty ? "Unknown Plant" : controller.plant.value,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.green,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            EditPlantNameDialog.showEditDialog(plant: controller.plant.value);
                          },
                          child: const Text("Edit Plan"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 7.h,
              width: 100.w,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(left: 3.w, right: 3.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          controller.healthStatus.value,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                      ),
                      Obx(
                        () => Text(
                          controller.averageHealth.value,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Leaf Color",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Obx(
                          () => Slider(
                            value: controller.leafValue.value, // Current value of the slider
                            min: 0.1, // Minimum value
                            max: 3, // Maximum value
                            divisions: 30, // Optional: divides slider into steps
                            label: controller.leafValue.value.toStringAsFixed(2), // Shows tooltip label
                            onChanged: (double newValue) {
                              controller.leafValue.value = newValue;
                              if (controller.debounce?.isActive ?? false) controller.debounce?.cancel();
                              controller.debounce = Timer(const Duration(milliseconds: 1000), () {
                                controller.calculateAverage();
                              });
                            },
                            activeColor: Colors.green, // Color of the active part of the slider
                            inactiveColor: Colors.grey, // Color of the inactive part
                          ),
                        ),
                      ),
                      Obx(() => Text(
                            controller.leafValue.value.toStringAsFixed(2),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.small),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Steam Strength",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Obx(
                          () => Slider(
                            value: controller.steamStrengthValue.value, // Current value of the slider
                            min: 0.1, // Minimum value
                            max: 3, // Maximum value
                            divisions: 30, // Optional: divides slider into steps
                            label: controller.steamStrengthValue.value.toStringAsFixed(2), // Shows tooltip label
                            onChanged: (double newValue) {
                              controller.steamStrengthValue.value = newValue;
                              if (controller.debounce?.isActive ?? false) controller.debounce?.cancel();
                              controller.debounce = Timer(const Duration(milliseconds: 1000), () {
                                controller.calculateAverage();
                              });
                            },
                            activeColor: Colors.green, // Color of the active part of the slider
                            inactiveColor: Colors.grey, // Color of the inactive part
                          ),
                        ),
                      ),
                      Obx(() => Text(
                            controller.steamStrengthValue.value.toStringAsFixed(2),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.small),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Root Health",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Obx(
                          () => Slider(
                            value: controller.rootHealthValue.value, // Current value of the slider
                            min: 0.1, // Minimum value
                            max: 3, // Maximum value
                            divisions: 30, // Optional: divides slider into steps
                            label: controller.rootHealthValue.value.toStringAsFixed(2), // Shows tooltip label
                            onChanged: (double newValue) {
                              controller.rootHealthValue.value = newValue;
                              if (controller.debounce?.isActive ?? false) controller.debounce?.cancel();
                              controller.debounce = Timer(const Duration(milliseconds: 1000), () {
                                controller.calculateAverage();
                              });
                            },
                            activeColor: Colors.green, // Color of the active part of the slider
                            inactiveColor: Colors.grey, // Color of the inactive part
                          ),
                        ),
                      ),
                      Obx(() => Text(
                            controller.rootHealthValue.value.toStringAsFixed(2),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.small),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Growth Rate",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Obx(
                          () => Slider(
                            value: controller.growthRateValue.value, // Current value of the slider
                            min: 0.1, // Minimum value
                            max: 3, // Maximum value
                            divisions: 30, // Optional: divides slider into steps
                            label: controller.growthRateValue.value.toStringAsFixed(2), // Shows tooltip label
                            onChanged: (double newValue) {
                              controller.growthRateValue.value = newValue;
                              if (controller.debounce?.isActive ?? false) controller.debounce?.cancel();
                              controller.debounce = Timer(const Duration(milliseconds: 1000), () {
                                controller.calculateAverage();
                              });
                            },
                            activeColor: Colors.green, // Color of the active part of the slider
                            inactiveColor: Colors.grey, // Color of the inactive part
                          ),
                        ),
                      ),
                      Obx(() => Text(
                            controller.growthRateValue.value.toStringAsFixed(2),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.small),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Flower/Fruit ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Obx(
                          () => Slider(
                            value: controller.flowerFruitValue.value, // Current value of the slider
                            min: 0.1, // Minimum value
                            max: 3, // Maximum value
                            divisions: 30, // Optional: divides slider into steps
                            label: controller.flowerFruitValue.value.toStringAsFixed(2), // Shows tooltip label
                            onChanged: (double newValue) {
                              controller.flowerFruitValue.value = newValue;
                              if (controller.debounce?.isActive ?? false) controller.debounce?.cancel();
                              controller.debounce = Timer(const Duration(milliseconds: 1000), () {
                                controller.calculateAverage();
                              });
                            },
                            activeColor: Colors.green, // Color of the active part of the slider
                            inactiveColor: Colors.grey, // Color of the inactive part
                          ),
                        ),
                      ),
                      Obx(() => Text(
                            controller.flowerFruitValue.value.toStringAsFixed(2),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.small),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Soil Moisture",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Obx(
                          () => Slider(
                            value: controller.soilMoistureValue.value, // Current value of the slider
                            min: 0.1, // Minimum value
                            max: 3, // Maximum value
                            divisions: 30, // Optional: divides slider into steps
                            label: controller.soilMoistureValue.value.toStringAsFixed(2), // Shows tooltip label
                            onChanged: (double newValue) {
                              controller.soilMoistureValue.value = newValue;
                              if (controller.debounce?.isActive ?? false) controller.debounce?.cancel();
                              controller.debounce = Timer(const Duration(milliseconds: 1000), () {
                                controller.calculateAverage();
                              });
                            },
                            activeColor: Colors.green, // Color of the active part of the slider
                            inactiveColor: Colors.grey, // Color of the inactive part
                          ),
                        ),
                      ),
                      Obx(() => Text(
                            controller.soilMoistureValue.value.toStringAsFixed(2),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.small),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pest Presence",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Obx(
                          () => Slider(
                            value: controller.pestPresenceValue.value, // Current value of the slider
                            min: 0.1, // Minimum value
                            max: 3, // Maximum value
                            divisions: 30, // Optional: divides slider into steps
                            label: controller.pestPresenceValue.value.toStringAsFixed(2), // Shows tooltip label
                            onChanged: (double newValue) {
                              controller.pestPresenceValue.value = newValue;
                              if (controller.debounce?.isActive ?? false) controller.debounce?.cancel();
                              controller.debounce = Timer(const Duration(milliseconds: 1000), () {
                                controller.calculateAverage();
                              });
                            },
                            activeColor: Colors.green, // Color of the active part of the slider
                            inactiveColor: Colors.grey, // Color of the inactive part
                          ),
                        ),
                      ),
                      Obx(() => Text(
                            controller.pestPresenceValue.value.toStringAsFixed(2),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.small),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            SizedBox(
              width: 100.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  controller.savePlantMonitoring();
                },
                child: const Text("Save"),
              ),
            ),
            SizedBox(
              height: 4.h,
            )
          ],
        ),
      ),
    ));
  }
}
