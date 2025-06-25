import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/more_details_controller.dart';

class BasicNPKPotassiumPage extends GetView<MoreDetailsController> {
  const BasicNPKPotassiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Potassium (K) Details',
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
                  "Potassium (K)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "< 110 kg/ha",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "Recommendation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Apply potassium-based fertilizers such as potassium chloride, potassium sulfate, or wood ash to raise potassium levels.",
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
                  "Use a soil test kit to measure the current potassium levels in your soil.",
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
                  "Calculate the required amount of potassium fertilizer. ",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3. Spreading:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Spread the fertilizer evenly across the field using a broadcast spreader.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "4. Soil Mixing:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Mix the fertilizer into the top layer of soil using a hoe or tiller to improve nutrient uptake by plants.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                //////////
                Text(
                  "Potassium (K)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),

                Text(
                  "110 - 280 kg/ha",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "Recommendation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Keep potassium levels within the medium range and apply potassium-based fertilizers if necessary.",
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
                  "1. Soil Monitoring: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Regularly test the soil to ensure potassium levels remain adequate.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "2. Targeted Fertilization: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Apply potassium fertilizers in areas with lower potassium levels, using precision agriculture techniques.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3. Plant Health Observation:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Monitor plant health for signs of potassium deficiency, such as yellowing leaf edges, and adjust applications accordingly.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                //////
                Text(
                  "Potassium (K):",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "> 280 kg/ha",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "Recommendation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Limit potassium application to prevent excess potassium in the soil.",
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
                  "Test the soil to confirm high potassium levels.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "2. Fertilizer Management:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Reduce or stop potassium fertilizer applications.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3. Soil Amendment: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Use soil amendments, such as organic matter, to help balance potassium levels and improve overall soil health.",
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
