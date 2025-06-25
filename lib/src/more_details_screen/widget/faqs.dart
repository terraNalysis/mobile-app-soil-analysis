import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/more_details_controller.dart';

class FrequentlyAskedQuestionsPage extends GetView<MoreDetailsController> {
  const FrequentlyAskedQuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FAQ',
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
                  "What is an TerraNalysis mobile app?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "An TerraNalysis mobile App is a revolutionary tool that empowers farmer citizens by providing them with access to innovative nutrient testing solutions for needs and the soil, we serve to improve crop productivity, sustainable and efficient farm management practices. ",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "What are the benefits of using an TerraNalysis mbile app?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "TerraNalysis mobile app promotes sustainable farming practices by providing real-time data and actionable insights, empowering farmers to improve crop health, food security and productivity. The system supports higher yields, better crop quality, and increased profitability, contributing to a more resilient agricultural ecosystem. Its scalable solutions make it adaptable for farmers of all sizes, fostering long-term sustainability in agriculture.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Is it safe to use an TerraNalysis mobile app?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Yes, the TerraNalysis mobile app is a user-friendly designed with strict real-time data to ensure that user’s personal information and data are kept secure.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "What services can I access through an TerraNalysis mobile app?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "The TerraNalysis system's core functions include real-time soil parameter measurement, plant growth monitoring, customized fertilization recommendations, and a user-friendly mobile interface. By leveraging advanced sensors, mobile technology, and data analytics, TerraNalysis aims to enhance agricultural productivity while minimizing environmental impact, ultimately ensuring food availability and security for communities.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "What do I do if I encounter technical issues while using the TerraNalysis mobile app?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text.rich(TextSpan(
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                    text:
                        "If you encounter technical issues while using the TerraNalysis system (mobile app or IoT devices system), you can contact the app’s technical support team Facebook.",
                    children: [
                      TextSpan(
                          text: ' https://www.facebook.com/bcgcomm.terranalysis',
                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              controller.visitLink(link: 'https://www.facebook.com/bcgcomm.terranalysis');
                            })
                    ])),
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
