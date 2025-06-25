import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/more_details_controller.dart';

class TermsAndConditionsDetailsPage extends GetView<MoreDetailsController> {
  const TermsAndConditionsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms & Conditions',
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
                  "General",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "The Terms and Conditions contained herein on this mobile application called TerraNalysis shall farmer agriculture the use of this App, including all pages to which the user may be redirected. These terms apply in full force and effect to the user of this App. The user’s whenever provided within the App shall be processed and shall be farmer’s data by the provision of the Republic Act (RA) No. 10173 or the Data Privacy Act of 2012, and all other applicable laws. Whenever used herein, “App Owner” shall mean TerraNalysis.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Basic Terms",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Only the user who are farmers, gardener, or any fields of agriculture may access the full features of the TerraNalysis mobile application.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Authority",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "These personal data needed are specific in the Privacy Policy of the TerraNalysis mobile application. The user also warrants that all information supplied is verified, true, and correct to the best of their knowledge.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Use",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Through by having access to App, the user hereby warrants that the App shall only be used for the following purposes:",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "1.) To real-time soil nutrient condition detection.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "2.) To monitor the plant health test. Data-driven recommendation for fertilizer recommendation.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "3.) Any other TerraNalysis services that will offered by the BCG Community in collaborated with the agriculture sustainability.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Contact Us",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text.rich(TextSpan(
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                    text:
                        "If you have any questions pertaining to this App or any of Systems with the Terms and Conditions contained herein, please get in touch with the App Owner at CSTC, Inc. Main Sariaya Campus or message us at Facebook.",
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
