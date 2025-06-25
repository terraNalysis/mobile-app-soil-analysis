import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../controller/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 30.h,
                width: 100.w,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logo.png'))),
              ),
            ),
            Text(
              "TerraNalysis",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "PottaOne",
                fontSize: 25.sp,
              ),
            ),
            Text(
              "Developed by ",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15.sp,
              ),
            ),
            Text(
              "BCG community",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontFamily: "CreepsterRegular",
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
