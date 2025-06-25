import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/more_details_controller.dart';

class FertilizerComputationPage extends GetView<MoreDetailsController> {
  const FertilizerComputationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fertilizer Computation',
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
                  "Amount of Fertilizer Material (kg) ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Amount of Fertilizer Material (kg) = Recommend Rate (kg Nutrient/ha) × Area (ha) / Percent Nutrient in Fertilizer Material",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Number of Fertilizer Bags (50kg/bag)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Eq1 = Amount of Fertilizer Material (kg) /  Weight of Nutrient per Bag",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Eq2 = %Nutrient in Fert. Mat.  x   No. Weight of Nutr./ Bag",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Cost of Fertilizer Bags",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Cost of Fertilizer Bags =  No. of Fertilizer Bags ×  Pesos per Bag",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
