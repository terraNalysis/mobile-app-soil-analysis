import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:terranalysis/config/app_fontsizes.dart';

import '../../../config/app_colors.dart';
import '../../more_details_screen/widget/basic_npk_recommendation_solution.dart';
import '../controller/result_history_details_controller.dart';

class ResultHistoryDetailsPage extends GetView<ResultHistoryDetailsController> {
  const ResultHistoryDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResultHistoryDetailsController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fertilizer Recommendation'),
        ),
        body: SafeArea(
            child: Obx(
          () => controller.isLoading.value
              ? SizedBox(
                  height: 100.h,
                  width: 100.w,
                  child: Center(
                    child: SpinKitThreeBounce(
                      size: 35.sp,
                      color: AppColors.lightgreen,
                    ),
                  ),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 2.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.5.h, bottom: 1.5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Obx(() => controller.nitrogenStatus.value == "Low"
                                        ? const Icon(
                                            Icons.trending_down,
                                            color: Colors.redAccent,
                                          )
                                        : controller.nitrogenStatus.value == "Med"
                                            ? const Icon(
                                                Icons.star_border,
                                                color: Colors.yellow,
                                              )
                                            : const Icon(
                                                Icons.trending_up,
                                                color: Colors.lightGreen,
                                              )),
                                    const Text("N"),
                                    Obx(() => Text(controller.nitrogen.value.toStringAsFixed(2))),
                                    const Text("mg/Kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Obx(() => controller.phosphorusStatus.value == "Low"
                                        ? const Icon(
                                            Icons.trending_down,
                                            color: Colors.redAccent,
                                          )
                                        : controller.phosphorusStatus.value == "Med"
                                            ? const Icon(
                                                Icons.star_border,
                                                color: Colors.yellow,
                                              )
                                            : const Icon(
                                                Icons.trending_up,
                                                color: Colors.lightGreen,
                                              )),
                                    const Text("P"),
                                    Obx(() => Text(controller.phosphorus.value.toStringAsFixed(2))),
                                    const Text("mg/Kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Obx(() => controller.potassiumStatus.value == "Low"
                                        ? const Icon(
                                            Icons.trending_down,
                                            color: Colors.redAccent,
                                          )
                                        : controller.potassiumStatus.value == "Med"
                                            ? const Icon(
                                                Icons.star_border,
                                                color: Colors.yellow,
                                              )
                                            : const Icon(
                                                Icons.trending_up,
                                                color: Colors.lightGreen,
                                              )),
                                    const Text("K"),
                                    Obx(() => Text(controller.potassium.value.toStringAsFixed(2))),
                                    const Text("mg/Kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Obx(() => controller.soilPHStatus.value == "Low"
                                        ? const Icon(
                                            Icons.trending_down,
                                            color: Colors.redAccent,
                                          )
                                        : controller.soilPHStatus.value == "Med"
                                            ? const Icon(
                                                Icons.star_border,
                                                color: Colors.yellow,
                                              )
                                            : const Icon(
                                                Icons.trending_up,
                                                color: Colors.lightGreen,
                                              )),
                                    Obx(() => Text("pH (${controller.soilPHClass.value})")),
                                    Obx(() => Text(controller.soilPH.value.toStringAsFixed(2))),
                                    const Text(""),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Obx(() => controller.moistureStatus.value == "Low"
                                        ? const Icon(
                                            Icons.trending_down,
                                            color: Colors.redAccent,
                                          )
                                        : controller.moistureStatus.value == "Med"
                                            ? const Icon(
                                                Icons.star_border,
                                                color: Colors.yellow,
                                              )
                                            : const Icon(
                                                Icons.trending_up,
                                                color: Colors.lightGreen,
                                              )),
                                    Obx(() => Text(controller.moistureType.value)),
                                    Obx(() => Text("${controller.moisture.value.toStringAsFixed(2)}%")),
                                    const Text(""),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        const Divider(),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Fertilizer Materials",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.medium),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "per 50kg/bag",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.medium),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Single Fertilizer",
                          style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Ammonium Sulfate (21-0-0) :",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Obx(
                                () => Text(
                                  "${controller.ammoniumSulfateResult.value}kg/ha",
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Solophos (0-18-0) :",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Obx(
                                () => Text(
                                  "${controller.solophosResult.value}kg/ha",
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Potash (0-0-60) :",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Obx(
                                () => Text(
                                  "${controller.singlePotasResult.value}kg/ha",
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "Incomplete and Single Fertilizer",
                          style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Ammonium Phosphate (16-20-0) :",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Obx(
                                () => Text(
                                  "${controller.ammoniumPhosphateResult.value}kg/ha",
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Urea (46-0-0) :",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Obx(
                                () => Text(
                                  "${controller.incompleteUreaResult.value} kg/ha",
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Potash (0-0-60) :",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Obx(
                                () => Text(
                                  "${controller.incompletePotasResult.value} kg/ha",
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "Complete and Single Fertilizer",
                          style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Triple 14 :",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Obx(
                                () => Text(
                                  "${controller.triplefourtheenResult.value} kg/ha",
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Urea (46-0-0) :",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Obx(
                                () => Text(
                                  "${controller.completeUreaResult.value} kg/ha",
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Potash (0-0-60) :",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Obx(
                                () => Text(
                                  "${controller.completePotasResult.value} kg/ha",
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text(
                                "Organic Fertilizer :",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                              ),
                            ),
                            Container(
                              width: 45.w,
                              padding: EdgeInsets.only(top: .5.h, bottom: .5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: Obx(
                                () => Text(
                                  "${controller.organicMaterialResult.value} kg/ha",
                                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        const Divider(),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "Analysis",
                          style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.bold, fontSize: AppFontSizes.large),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          height: 33.h,
                          width: 100.w,
                          child: PieChart(
                            PieChartData(
                                // read about it in the PieChartData section
                                centerSpaceRadius: 8.w,
                                sectionsSpace: 4.w,
                                sections: [
                                  PieChartSectionData(
                                    color: AppColors.green,
                                    title: "N ${controller.nitrogen.value.toStringAsFixed(1)} mg/Kg",
                                    value: 33.3,
                                    radius: 25.w,
                                    titleStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  PieChartSectionData(
                                    color: AppColors.green,
                                    title: "P ${controller.phosphorus.value.toStringAsFixed(1)} mg/Kg",
                                    value: 33.3,
                                    radius: 25.w,
                                    titleStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  PieChartSectionData(
                                    color: AppColors.green,
                                    title: "K ${controller.potassium.value.toStringAsFixed(1)} mg/Kg",
                                    value: 33.3,
                                    radius: 25.w,
                                    titleStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ]),
                            duration: const Duration(milliseconds: 150), // Optional
                            curve: Curves.linear, // Optional
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 5.h,
                                  child: Text(
                                    "Parameter",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 5.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "Result",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 5.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "Range",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Text(
                                    "Nitrogen (N)",
                                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => Text(
                                        controller.nitrogenStatus.value,
                                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => LinearPercentIndicator(
                                        width: 30.w,
                                        animation: true,
                                        lineHeight: 4.h,
                                        animationDuration: 2500,
                                        percent: controller.nitrogenPercent.value,
                                        center: Text(
                                          "${controller.nitrogen.value.toStringAsFixed(2)} mg/Kg",
                                          style: TextStyle(fontSize: 9.sp),
                                        ),
                                        barRadius: const Radius.circular(10),
                                        progressColor: AppColors.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Text(
                                    "Phosporus (P)",
                                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => Text(
                                        controller.phosphorusStatus.value,
                                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => LinearPercentIndicator(
                                        width: 30.w,
                                        animation: true,
                                        lineHeight: 4.h,
                                        animationDuration: 2500,
                                        percent: controller.phosphorusPercent.value,
                                        center: Text(
                                          "${controller.phosphorus.value.toStringAsFixed(2)} mg/Kg",
                                          style: TextStyle(fontSize: 9.sp),
                                        ),
                                        barRadius: const Radius.circular(10),
                                        progressColor: AppColors.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Text(
                                    "Potassium (K)",
                                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => Text(
                                        controller.potassiumStatus.value,
                                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => LinearPercentIndicator(
                                        width: 30.w,
                                        animation: true,
                                        lineHeight: 4.h,
                                        animationDuration: 2500,
                                        percent: controller.potassiumPercent.value,
                                        center: Text(
                                          "${controller.potassium.value.toStringAsFixed(2)} mg/Kg",
                                          style: TextStyle(fontSize: 9.sp),
                                        ),
                                        barRadius: const Radius.circular(10),
                                        progressColor: AppColors.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Text(
                                    "pH Content",
                                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => Text(
                                        controller.soilPHStatus.value,
                                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => LinearPercentIndicator(
                                        width: 30.w,
                                        animation: true,
                                        lineHeight: 4.h,
                                        animationDuration: 2500,
                                        percent: controller.soilPHpercent.value,
                                        center: Text(
                                          controller.soilPH.value.toStringAsFixed(2),
                                          style: TextStyle(fontSize: 9.sp),
                                        ),
                                        barRadius: const Radius.circular(10),
                                        progressColor: AppColors.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Text(
                                    "Moisture",
                                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => Text(
                                        controller.moistureStatus.value,
                                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 3.h,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Obx(
                                      () => LinearPercentIndicator(
                                        width: 30.w,
                                        animation: true,
                                        lineHeight: 4.h,
                                        animationDuration: 2500,
                                        percent: (controller.moisture.value / 100),
                                        center: Text(
                                          "${controller.moisture.value.toStringAsFixed(2)} %",
                                          style: TextStyle(fontSize: 9.sp),
                                        ),
                                        barRadius: const Radius.circular(10),
                                        progressColor: AppColors.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        SizedBox(
                          height: 7.h,
                          width: 100.w,
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => const BasicNPKRecommendationSolutionPage());
                            },
                            child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 3.w, right: 3.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Basic NPK Recommendation",
                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13.sp),
                                    ),
                                    const Icon(Icons.arrow_forward_ios_rounded)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        )
                      ],
                    ),
                  ),
                ),
        )));
  }
}
