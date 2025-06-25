import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:terranalysis/src/soil_status_screen/controller/soil_status_controller.dart';
import '../../../config/app_fontsizes.dart';
import 'soil_status_solution_details_view.dart';

class SoilStatusRecommendationPage extends GetView<SoilStatusController> {
  const SoilStatusRecommendationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Recommendation',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => const SoilStatusSolutionDetailsPage());
              },
              icon: const Icon(Icons.info),
            )
          ],
        ),
        body: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                          "${controller.incompleteUreaResult.value}kg/ha",
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
                          "${controller.solophosResult.value} kg/ha",
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
                          "${controller.singlePotasResult.value} bags/ha",
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
                          "${controller.organicMaterialResult.value} bags/ha",
                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: AppFontSizes.regular),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
