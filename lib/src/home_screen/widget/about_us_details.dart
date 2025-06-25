import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../controller/home_controller.dart';

class AboutUsDetailsPage extends GetView<HomeController> {
  const AboutUsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'About us',
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
                  "Welcome to terrenalysis, the easiest and fastest way to connect with of the agriculture and farmers. Our IoT-based approach to soil detection and plant growth interaction is designed to revolutionize farming practices and unlock new opportunities within the farming industry. With mobile application nutrient monitoring system and precise fertilizer application, aim to enhance crop yield, promote sustainability, and embark on a journey that combines simplicity, speed, and the promise of prosperous farming",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Why to use?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Growth Monitor",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "The app tracks and optimizes plant growth, providing tools to monitor health indicators and manage development effectively.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Real Time Test",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "The app allows farmers to measure soil pH, moisture, and nutrients on their smartphones, helping them track plant health and improve yields..",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Soil Detection",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "The app analyzes soil health to determine its agricultural suitability. ",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Soil Nutrient",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "By understanding the nutrient profile of their soil, farmers can optimize their fertilization strategies and crop rotation practices, leading to improved yields and enhanced sustainability.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Recommendation Support",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Seek support from experts for effective technical solutions to optimize system production and ensure healthy soil.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
