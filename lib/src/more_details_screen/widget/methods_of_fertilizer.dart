import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:terranalysis/src/more_details_screen/widget/methods_of_fertilizer_liquid.dart';

import '../../../config/app_fontsizes.dart';
import '../controller/more_details_controller.dart';
import 'methods_of_fertilizer_solid.dart';

class MethodsOfFertilizerPage extends GetView<MoreDetailsController> {
  const MethodsOfFertilizerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Methods of Fertilizer Application',
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
                  height: 2.h,
                ),
                SizedBox(
                  height: 7.h,
                  width: 100.w,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const SolidFertilizerMethodPage());
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Solid Fertilizer",
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
                      Get.to(() => const LiquidFertilizerMethodPage());
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Liquid Fertilizer",
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
