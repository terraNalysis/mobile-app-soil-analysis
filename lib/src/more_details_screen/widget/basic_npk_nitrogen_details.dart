import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/more_details_controller.dart';

class BasicNPKNitrogenPage extends GetView<MoreDetailsController> {
  const BasicNPKNitrogenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nitrogen (N) Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
        ),
      ),
      body: SafeArea(
          child: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.h,
                ),

                Text(
                  "Nitrogen (N)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "< 240 kg/ha",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "Recommendation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Apply nitrogen-rich fertilizers such as urea, ammonium sulfate, or composted manure to boost nitrogen levels in the soil.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Detailed Instructions:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "1. Soil Testing: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Use a soil test to measure the current nitrogen levels in your soil.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "2. Fertilizer Calculation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Calculate the required amount of nitrogen fertilizer. ",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3. Even Distribution: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Spread the calculated amount of fertilizer evenly across the field using a broadcast spreader.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "4. Watering: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "After applying the fertilizer, water the field to help the nutrients penetrate the soil and become available to plants.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                //////////
                ///
                Text(
                  "Nitrogen (N)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "240 - 480 kg/ha",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "Recommendation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Maintain existing nitrogen levels and monitor plant health to adjust nitrogen inputs as needed.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Detailed Instructions:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "1. Regular Monitoring",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Conduct soil tests periodically (e.g., every season) to ensure nitrogen levels remain within the medium range.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "2. Conditional Application: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Apply nitrogen fertilizers only if deficiencies are detected. Use slow-release fertilizers to maintain balanced nitrogen levels over time.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3. Fertilizer Management: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Adjust fertilization based on crop requirements and growth stages to avoid over-application.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                //////
                Text(
                  "Nitrogen (N)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "> 480 kg/ha",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "Recommendation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Reduce nitrogen inputs to prevent excessive fertilization and balance nitrogen levels.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Detailed Instructions:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "1. Soil Testing: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Test the soil to confirm high nitrogen levels",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "2. Fertilizer Reduction: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Decrease or eliminate nitrogen fertilizer applications until levels decrease.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3. Organic Matter Addition:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  " Incorporate organic matter, such as compost, to help balance nutrient levels and improve soil structure.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),

                SizedBox(
                  height: 6.h,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
