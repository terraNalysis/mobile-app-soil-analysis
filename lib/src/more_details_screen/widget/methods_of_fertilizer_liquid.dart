import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/more_details_controller.dart';

class LiquidFertilizerMethodPage extends GetView<MoreDetailsController> {
  const LiquidFertilizerMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Liquid Fertilizer',
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
                  "Starter Solutions",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "It refers to the application of solution of N, P2O5 and K2O in the ratio of 1:2:1 and 1:1:2 to young plants at the time of transplanting, particularly for vegetables. Starter solution helps in rapid establishment and quick growth of seedlings.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "The disadvantages of starter solutions are:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "(i) Extra labor is required, and",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "(ii) the fixation of phosphate is higher.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Foliar Application",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "It refers to the spraying of fertilizer solutions containing one or more nutrients on the foliage of growing plants. Several nutrient elements are readily absorbed by leaves when they are dissolved in water and sprayed on them. The concentration of the spray solution has to be controlled, otherwise serious damage may result due to scorching of the leaves. Foliar application is effective for the application of minor nutrients like iron, copper, boron, zinc and manganese. Sometimes insecticides are also applied along with fertilizers.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Fertigation",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Application through irrigation water, it refers to the application of water soluble fertilizers through irrigation water. The nutrients are thus carried into the soil in solution. Generally nitrogenous fertilizers are applied through irrigation water.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Injection into Soil",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Liquid fertilizers for injection into the soil may be of either pressure or non-pressure types. Non-pressure solutions may be applied either on the surface or in furrows without appreciable loss of plant nutrients under most conditions. Anhydrous ammonia must be placed in narrow furrows at a depth of 12-15 cm and covered immediately to prevent loss of ammonia.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Aerial Application",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "In areas where ground application is not practicable, the fertilizer solutions are applied by aircraft particularly in hilly areas, in forest lands, in grasslands or in sugarcane fields etc.",
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
