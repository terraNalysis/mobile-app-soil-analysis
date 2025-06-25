import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_fontsizes.dart';
import '../controller/plant_health_indicator_controller.dart';
import 'plant_health_details_view.dart';
import 'plant_health_indicator_view.dart';

class PlantHealthHistoryPage extends GetView<PlantHealthIndicatorController> {
  const PlantHealthHistoryPage({super.key});

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
                    "Plant Monitoring History",
                    style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.bold, fontSize: AppFontSizes.large),
                  ),
                  Row(
                    children: [
                      // SizedBox(
                      //   child: ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //       backgroundColor: AppColors.green,
                      //       foregroundColor: Colors.white,
                      //     ),
                      //     onPressed: () {

                      //     },
                      //     child: const Text("Monitor"),
                      //   ),
                      // ),
                      GestureDetector(
                          onTap: () {
                            Get.to(() => const PlantHealthDetailsPage());
                          },
                          child: const Icon(Icons.info)),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 8.h,
                width: 100.w,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.5.h, bottom: 1.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Average Rate:",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              controller.averageOverAllRate.value.toStringAsFixed(2),
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Icon(
                              Icons.star,
                              size: 20.sp,
                              color: Colors.yellow,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: controller.plantHistoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 1.h),
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.5.h, bottom: 1.5.h),
                            child: SizedBox(
                              width: 100.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.plantHistoryList[index].plant,
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14.sp),
                                      ),
                                      Text(
                                        "${DateFormat.yMMMd().format(controller.plantHistoryList[index].datecreated)} ${DateFormat.jm().format(controller.plantHistoryList[index].datecreated)}",
                                        style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.normal, fontSize: AppFontSizes.small),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 22.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller.plantHistoryList[index].status,
                                          style: TextStyle(
                                              color: controller.plantHistoryList[index].status == "Poor"
                                                  ? Colors.red
                                                  : controller.plantHistoryList[index].status == "Healthy"
                                                      ? Colors.green
                                                      : Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.sp),
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Rate: ${controller.plantHistoryList[index].rate.toStringAsFixed(2)}",
                                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.small),
                                            ),
                                            SizedBox(
                                              width: 2.w,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 15.sp,
                                              color: Colors.yellow,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
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
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.darkgreen,
        onPressed: () {
          controller.resetValues();
          Get.to(() => const PlantHealthIndicatorPage());
        },
        child: const Icon(
          Icons.trending_up,
          color: Colors.white,
        ),
      ),
    );
  }
}
