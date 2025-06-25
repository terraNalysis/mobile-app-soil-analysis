import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/soil_status_controller.dart';

class SoilStatusSolutionDetailsPage extends GetView<SoilStatusController> {
  const SoilStatusSolutionDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'NPK Solution',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
      )),
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
                  "N",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                Text(
                  "Reduce nitrogen  inputs (limit excessive  fertilization) to  balance N levels.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "P",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                Text(
                  "Maintain existing  phosphorus levels if  they are in the  medium range. Use  phosphorus containing fertilizers  as needed for specific  crops.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "K",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                Text(
                  "Keep potassium levels  within the medium  range. Apply  potassium-based  fertilizers if  necessary.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "pH",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                Text(
                  "Maintain light lime applications or organic matter. To increase acidity (lower pH), you can add elemental sulfur or compost. Apply no more than 15 pounds of sulfur per 1,000 square feet at a single application. Most crops perform well in this range. Maintain a balanced pH for optimal nutrient availability.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Moisture",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                Text(
                  "Moderatey Wet Soi",
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
