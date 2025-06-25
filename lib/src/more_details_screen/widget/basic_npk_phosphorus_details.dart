import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/more_details_controller.dart';

class BasicNPKPhosphorusPage extends GetView<MoreDetailsController> {
  const BasicNPKPhosphorusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Phosphorus (P) Details',
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
                  "Phosphorus (P)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "< 11 kg/ha",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "Recommendation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Apply phosphorus-containing fertilizers such as superphosphate, bone meal, or rock phosphate to increase phosphorus levels.",
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
                  "Use a soil test to confirm phosphorus deficiency.",
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
                  "Calculate the required amount of phosphorus fertilizer. ",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3. Application: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Spread the fertilizer evenly over the affected areas using a spreader.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "4. Incorporation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Mix the fertilizer into the top 10 cm of soil using a hoe or tiller to enhance its availability to plant roots.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                //////////
                Text(
                  "Nitrogen (N)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "Phosphorus (P)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "11 - 22 kg/ha",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "Recommendation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Maintain current phosphorus levels and use phosphorus-containing fertilizers as needed.",
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
                  "1. Periodic Testing: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Test the soil at regular intervals to monitor phosphorus levels.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "2. Supplemental Fertilization: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Apply phosphorus fertilizers if levels drop below the medium range. Use precision agriculture techniques to apply fertilizers only where needed.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3. Precision Application: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Utilize tools like guided spreaders or soil sensors to ensure accurate fertilizer placement.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                //////
                Text(
                  "Phosphorus (P):",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "> 22 kg/ha",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Text(
                  "Recommendation: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Avoid additional phosphorus fertilization and focus on other nutrients.",
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
                  "1. Phosphorus Monitoring: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Conduct soil tests to monitor phosphorus levels and ensure they do not exceed the high range.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "2. Fertilizer Adjustment:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Stop applying phosphorus fertilizers until levels decrease. Focus on improving levels of other essential nutrients.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3. Nutrient Balance: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Use soil amendments to help balance phosphorus levels and promote overall soil health.",
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
