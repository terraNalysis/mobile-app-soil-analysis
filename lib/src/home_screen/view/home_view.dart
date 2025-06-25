import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:terranalysis/config/app_colors.dart';
import 'package:terranalysis/config/app_fontsizes.dart';
import 'package:terranalysis/src/home_screen/widget/about_us_details.dart';
import 'package:terranalysis/src/home_screen/widget/how_does_it_work_details.dart';

import '../controller/home_controller.dart';
import '../widget/terranalysis_details.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: 100.h,
      width: 100.w,
      child: Padding(
        padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 6.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Home",
              style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.bold, fontSize: AppFontSizes.large),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 25.h,
              width: 100.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const TerranalysisDetailsPage());
                },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 18.h,
                        width: 100.w,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            image: DecorationImage(fit: BoxFit.fitWidth, image: AssetImage('assets/images/imageone.jpg'))),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Text(
                          "What is TerraNalysis?",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.medium),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 25.h,
              width: 100.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const AboutUsDetailsPage());
                },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 18.h,
                        width: 100.w,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            image: DecorationImage(fit: BoxFit.fitWidth, image: AssetImage('assets/images/imagetwo.jpg'))),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Text(
                          "About us",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.medium),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 25.h,
              width: 100.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const HowDoesItWorkDetailsPage());
                },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 18.h,
                        width: 100.w,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            image: DecorationImage(fit: BoxFit.fitWidth, image: AssetImage('assets/images/imageone.jpg'))),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Text(
                          "How does it works?",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppFontSizes.medium),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
