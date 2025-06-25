import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/more_details_controller.dart';

class PrivacyPolicyPage extends GetView<MoreDetailsController> {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
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
                  "TerraNalysis is a mobile application developed by the BCG Community that designed to address the diverse needs of farmers and advancement of soil health, plant growth and sustainable yield productivity. ",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "At BCG Community, we recognize the importance of data privacy and are committed to protecting the user's personal data. In line with this, we ensure that we comply with the Data Privacy Act of 2012 (RA 10173), along with its Implementing Rules and Regulations as well as any other relevant data privacy- related laws and issuance by the National Privacy Commission. Furthermore, we only collect and process information that is necessary to fulfill the purpose of our mobile app. ",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "This Privacy Policy explains what information we collect, process, and share. It also informs the user why we do so, and their data privacy rights with regard to their information.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "We may update this Privacy Policy to reflect needed changes in our policy to comply with the law. In such cases, we encourage the user to check for updates on our Privacy Policy, if notified. This is available on our app for further information and reference.",
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
