import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:terranalysis/config/app_colors.dart';
import 'package:terranalysis/config/app_fontsizes.dart';

import '../../terms_and_condition_screen/view/terms_and_condition_view.dart';
import '../controller/welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WelcomeController());
    return Scaffold(
        body: SizedBox(
      height: 100.h,
      width: 100.w,
      child: Column(
        children: [
          SizedBox(
            height: 7.h,
          ),
          Container(
            height: 30.h,
            width: 100.w,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'))),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            "Welcome to TerraNalysis",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSizes.extraLarge,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
            child: Text(
              "Soil analyze and monitor nutrients in soil within minutes. Combine our smart applications with the nutrient monitor and get on-the-spot insight into soil health parameter. Our sensor system device and applications are easy-to- use on your smartphone and based on a soil condition for fast soil analysis. TerraNalysis services enable you to analyze macro-and- micro-nutrients in soil quickly and easily and make informed decisions about how to fertilize the soils application.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: AppFontSizes.regular,
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
            child: SizedBox(
              height: 6.h,
              width: 100.w,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.green),
                  onPressed: () {
                    Get.to(() => const TermsAndConditionPage());
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
    ));
  }
}
