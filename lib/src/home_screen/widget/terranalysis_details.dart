import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../controller/home_controller.dart';

class TerranalysisDetailsPage extends GetView<HomeController> {
  const TerranalysisDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Terranalysis',
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
                Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logo.png'))),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Terranalysis",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "The TerraNalysis Mobile App is a revolutionary tool that empowers farmer citizens by providing them with access to innovative nutrient testing solutions for needs and the soil, we serve to improve crop productivity, sustainable and efficient farm management practices. Taking on the challenge to transform traditional nutrient testing together with use the IoT technology device and the mobile application users. TerraNalysis develops new standards for sensor quality analysis result and easily and make informed decisions about how to fertilize the soils application. ",
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
