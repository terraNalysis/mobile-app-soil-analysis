import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_fontsizes.dart';
import '../../../model/soil_quality_model.dart';
import '../../result_history_details_screen/view/result_history_details_view.dart';
import '../controller/result_history_controller.dart';
import 'rating_chart_details_view.dart';

class ResultHistoryPage extends GetView<ResultHistoryController> {
  const ResultHistoryPage({super.key});

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
                  "Soil Quality History",
                  style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.bold, fontSize: AppFontSizes.large),
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(() => const RatingChartPage());
                    },
                    child: const Icon(Icons.info))
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 6.h,
                    width: 75.w,
                    padding: EdgeInsets.only(left: 3.w, right: 3.w),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => Text(controller.dateFilter.value)),
                        GestureDetector(
                            onTap: () {
                              controller.dateFilter.value = '';
                              controller.fromDate = null;
                              controller.toDate = null;
                              controller.historyResult.assignAll(controller.historyResultMasterList);
                              controller.calculateAverage();
                            },
                            child: const Icon(Icons.clear)),
                      ],
                    )),
                IconButton(
                    onPressed: () async {
                      var daterangepicked =
                          await showDateRangePicker(context: context, currentDate: DateTime.now(), firstDate: DateTime(2000, 1, 1), lastDate: DateTime(2050, 12, 1));
                      if (daterangepicked != null) {
                        controller.fromDate = daterangepicked.start;
                        controller.toDate = daterangepicked.end;
                        controller.dateFilter.value = "${DateFormat.yMMMd().format(daterangepicked.start)} - ${DateFormat.yMMMd().format(daterangepicked.end)}";
                        log(daterangepicked.start.toString());
                        log(daterangepicked.end.toString());
                        controller.searchData(from: daterangepicked.start.subtract(const Duration(hours: 1)), to: daterangepicked.end.add(const Duration(days: 1)));
                      }
                    },
                    icon: Icon(
                      Icons.calendar_month,
                      color: AppColors.darkgreen,
                      size: 30.sp,
                    ))
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Average",
              style: TextStyle(color: AppColors.black, fontWeight: FontWeight.normal, fontSize: AppFontSizes.medium),
            ),
            SizedBox(
              height: 2.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const ResultHistoryDetailsPage(), arguments: {
                  'soilQuality': SoilQuality(
                    status: "",
                    moisture: controller.averagemoisture.value,
                    soilPh: controller.averagesoilPH.value,
                    phosphorus: controller.averagephosphorus.value,
                    nitrogen: controller.averagenitrogen.value,
                    potassium: controller.averagepotassium.value,
                  )
                });
              },
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.5.h, bottom: 1.5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Obx(() => controller.averagenitrogenStatus.value == "Low"
                              ? const Icon(
                                  Icons.trending_down,
                                  color: Colors.redAccent,
                                )
                              : controller.averagenitrogenStatus.value == "Med"
                                  ? const Icon(
                                      Icons.star_border,
                                      color: Colors.yellow,
                                    )
                                  : const Icon(
                                      Icons.trending_up,
                                      color: Colors.lightGreen,
                                    )),
                          const Text("N"),
                          Obx(() => Text(controller.averagenitrogen.value.toStringAsFixed(2))),
                          const Text("mg/Kg"),
                        ],
                      ),
                      Column(
                        children: [
                          Obx(() => controller.averagephosphorusStatus.value == "Low"
                              ? const Icon(
                                  Icons.trending_down,
                                  color: Colors.redAccent,
                                )
                              : controller.averagephosphorusStatus.value == "Med"
                                  ? const Icon(
                                      Icons.star_border,
                                      color: Colors.yellow,
                                    )
                                  : const Icon(
                                      Icons.trending_up,
                                      color: Colors.lightGreen,
                                    )),
                          const Text("P"),
                          Obx(() => Text(controller.averagephosphorus.value.toStringAsFixed(2))),
                          const Text("mg/Kg"),
                        ],
                      ),
                      Column(
                        children: [
                          Obx(() => controller.averagepotassiumStatus.value == "Low"
                              ? const Icon(
                                  Icons.trending_down,
                                  color: Colors.redAccent,
                                )
                              : controller.averagepotassiumStatus.value == "Med"
                                  ? const Icon(
                                      Icons.star_border,
                                      color: Colors.yellow,
                                    )
                                  : const Icon(
                                      Icons.trending_up,
                                      color: Colors.lightGreen,
                                    )),
                          const Text("K"),
                          Obx(() => Text(controller.averagepotassium.value.toStringAsFixed(2))),
                          const Text("mg/Kg"),
                        ],
                      ),
                      Column(
                        children: [
                          Obx(() => controller.averagesoilPHStatus.value == "Low"
                              ? const Icon(
                                  Icons.trending_down,
                                  color: Colors.redAccent,
                                )
                              : controller.averagesoilPHStatus.value == "Med"
                                  ? const Icon(
                                      Icons.star_border,
                                      color: Colors.yellow,
                                    )
                                  : const Icon(
                                      Icons.trending_up,
                                      color: Colors.lightGreen,
                                    )),
                          Obx(() => Text("pH (${controller.averagesoilPHClass.value})")),
                          Obx(() => Text(controller.averagesoilPH.value.toStringAsFixed(2))),
                          const Text(""),
                        ],
                      ),
                      Column(
                        children: [
                          Obx(() => controller.averagemoistureStatus.value == "Low"
                              ? const Icon(
                                  Icons.trending_down,
                                  color: Colors.redAccent,
                                )
                              : controller.averagemoistureStatus.value == "Med"
                                  ? const Icon(
                                      Icons.star_border,
                                      color: Colors.yellow,
                                    )
                                  : const Icon(
                                      Icons.trending_up,
                                      color: Colors.lightGreen,
                                    )),
                          Obx(() => Text(controller.averagemoistureType.value)),
                          Obx(() => Text("${controller.averagemoisture.value.toStringAsFixed(2)}%")),
                          const Text(""),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            const Divider(),
            SizedBox(
              height: 1.h,
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.historyResult.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 1.h),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => const ResultHistoryDetailsPage(), arguments: {
                            'soilQuality': SoilQuality(
                              status: "",
                              moisture: controller.historyResult[index].moisture,
                              soilPh: controller.historyResult[index].soilPh,
                              phosphorus: controller.historyResult[index].phosphorus,
                              nitrogen: controller.historyResult[index].nitrogen,
                              potassium: controller.historyResult[index].potassium,
                            )
                          });
                        },
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.5.h, bottom: 1.5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "${DateFormat.yMMMd().format(controller.historyResult[index].timestamp)} ${DateFormat.jm().format(controller.historyResult[index].timestamp)}",
                                    style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.normal, fontSize: AppFontSizes.small),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        controller.historyResult[index].nitrogenStatus == "Low"
                                            ? const Icon(
                                                Icons.trending_down,
                                                color: Colors.redAccent,
                                              )
                                            : controller.historyResult[index].nitrogenStatus == "Med"
                                                ? const Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  )
                                                : const Icon(
                                                    Icons.trending_up,
                                                    color: Colors.lightGreen,
                                                  ),
                                        const Text("N"),
                                        Text(controller.historyResult[index].nitrogen.toStringAsFixed(1)),
                                        const Text("mg/Kg"),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        controller.historyResult[index].phosphorusStatus == "Low"
                                            ? const Icon(
                                                Icons.trending_down,
                                                color: Colors.redAccent,
                                              )
                                            : controller.historyResult[index].phosphorusStatus == "Med"
                                                ? const Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  )
                                                : const Icon(
                                                    Icons.trending_up,
                                                    color: Colors.lightGreen,
                                                  ),
                                        const Text("P"),
                                        Text(controller.historyResult[index].phosphorus.toStringAsFixed(1)),
                                        const Text("mg/Kg"),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        controller.historyResult[index].potassiumStatus == "Low"
                                            ? const Icon(
                                                Icons.trending_down,
                                                color: Colors.redAccent,
                                              )
                                            : controller.historyResult[index].potassiumStatus == "Med"
                                                ? const Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  )
                                                : const Icon(
                                                    Icons.trending_up,
                                                    color: Colors.lightGreen,
                                                  ),
                                        const Text("K"),
                                        Text(controller.historyResult[index].potassium.toStringAsFixed(1)),
                                        const Text("mg/Kg"),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        controller.historyResult[index].soilPhStatus == "Low"
                                            ? const Icon(
                                                Icons.trending_down,
                                                color: Colors.redAccent,
                                              )
                                            : controller.historyResult[index].soilPhStatus == "Med"
                                                ? const Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  )
                                                : const Icon(
                                                    Icons.trending_up,
                                                    color: Colors.lightGreen,
                                                  ),
                                        Text("pH (${controller.historyResult[index].soilPhClass})"),
                                        Text(controller.historyResult[index].soilPh.toStringAsFixed(1)),
                                        const Text(""),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        controller.historyResult[index].moistureStatus == "Low"
                                            ? const Icon(
                                                Icons.trending_down,
                                                color: Colors.redAccent,
                                              )
                                            : controller.historyResult[index].moistureStatus == "Med"
                                                ? const Icon(
                                                    Icons.star_border,
                                                    color: Colors.yellow,
                                                  )
                                                : const Icon(
                                                    Icons.trending_up,
                                                    color: Colors.lightGreen,
                                                  ),
                                        Text(controller.historyResult[index].moistureType),
                                        Text("${controller.historyResult[index].moisture.toStringAsFixed(1)}%"),
                                        const Text(""),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
