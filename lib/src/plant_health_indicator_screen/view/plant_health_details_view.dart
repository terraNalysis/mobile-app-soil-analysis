import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_fontsizes.dart';
import '../controller/plant_health_indicator_controller.dart';

class PlantHealthDetailsPage extends GetView<PlantHealthIndicatorController> {
  const PlantHealthDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      child: Padding(
        padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 6.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Health Indicator Tips",
                style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.bold, fontSize: AppFontSizes.large),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Leaf Color",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Healthy: Vibrant green leaves",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Unhealthy: Yellowing or slight discoloration leaves",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Poor: Brown, spotted, or blackened leaves",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Stem Strength",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Healthy: Strong and sturdy",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Unhealthy: Slightly weak or bending",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Poor: Wilting or collapsing",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Root Health",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Healthy: White and firm",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Unhealthy: Slight browning",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Poor: Brown, mushy, or smelly",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Growth Rate",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Healthy: Consistent, expected rate",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Unhealthy:  Slow growth",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Poor: Stunted or no growth",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Flower/Fruit Production",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Healthy: Regular blooms/fruits",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Unhealthy: Reduced blooms/fruits",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Poor: Very few or no  blooms/fruits",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Soil Moisture",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Healthy: Properly balanced",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Unhealthy: Slightly dry or waterlogged",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Poor: Extremely dry or  waterlogged",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Pest Presence",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Healthy:  No visible pests",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Unhealthy: Few pests or minor damage",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              Text(
                "Poor: Infestations, significant  damage or webbing",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              ),
              SizedBox(
                height: 4.h,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
