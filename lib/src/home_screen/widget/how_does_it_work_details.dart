import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../controller/home_controller.dart';

class HowDoesItWorkDetailsPage extends GetView<HomeController> {
  const HowDoesItWorkDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Users Guide',
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
                  "1.) Turn on the system device",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                SizedBox(
                  height: .5.h,
                ),
                Text(
                  "2.) Connect the Wi-Fi device connection into your phone.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "- Open the WiFi settings on your phone.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "- Connect to the WiFi network provided by the TerraNalysis device.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3.) Prepare the sensors for testing:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "- Ensure the NPK, Moisture, and pH sensors are placed correctly in the soil.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "4.) Open the TerraNalysis App.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                SizedBox(
                  height: .5.h,
                ),
                Text(
                  "5.) Read the Terms and Conditions.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                SizedBox(
                  height: .5.h,
                ),
                Text(
                  "6.) Agree to the Terms and Conditions:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "- Click the checkbox to agree.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "7.) Start soil data analysis:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "- On the system device, press the ‘Start’ button to begin soil data analysis.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Light Status Indicators:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "- On: The system is reading and analyzing the soil.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "- Flashing: The analysis is complete.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "- Off: The system is not analyzing the soil.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "8.) Check soil status on the mobile app:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "- Go to the TerraNalysis App and click ‘Soil Status’.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "9.) Wait for the analysis to complete:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "- This may take a couple of minutes.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "10.) View the results:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "- Once the analysis is complete, the results will be displayed on the mobile app.",
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
