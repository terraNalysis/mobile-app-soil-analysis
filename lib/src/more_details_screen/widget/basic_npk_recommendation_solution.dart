import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../config/app_fontsizes.dart';
import '../controller/more_details_controller.dart';
import 'basic_npk_nitrogen_details.dart';
import 'basic_npk_phosphorus_details.dart';
import 'basic_npk_potassium_details.dart';

class BasicNPKRecommendationSolutionPage extends GetView<MoreDetailsController> {
  const BasicNPKRecommendationSolutionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basic NPK Recommendation Solution',
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
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  height: 7.h,
                  width: 100.w,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const BasicNPKNitrogenPage());
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nitrogen",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                            ),
                            const Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  height: 7.h,
                  width: 100.w,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const BasicNPKPhosphorusPage());
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Phosphorus",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                            ),
                            const Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  height: 7.h,
                  width: 100.w,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const BasicNPKPotassiumPage());
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Potassium",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                            ),
                            const Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
