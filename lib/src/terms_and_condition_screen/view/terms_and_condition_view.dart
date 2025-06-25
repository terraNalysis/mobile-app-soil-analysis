import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:terranalysis/config/app_fontsizes.dart';
import 'package:terranalysis/services/getstorage_services.dart';

import '../../../config/app_colors.dart';
import '../../bottom_nav_screen/view/bottom_nav_view.dart';
import '../controller/terms_and_condition_controller.dart';

class TermsAndConditionPage extends GetView<TermsAndConditionController> {
  const TermsAndConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TermsAndConditionController());
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
            "Terms and Conditions",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSizes.extraLarge,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w),
              child: Text(
                "The Terms and Conditions contained herein on this mobile application called terrascan shall farmer agriculture the use of this App. including all pages to which the user may be redirected. These terms apply in full force and effect to the user of this App. The user's whenever provided within the App shall be processed and shall be farmer's data by the provision of the Republic Act (RA) No. 10173 or the Data Privacy Act of 20212, and all other applicable laws. Whenever used herein, 'App Owner' shall mean TerraNalysis.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppFontSizes.regular,
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
            child: Row(
              children: [
                Obx(() => Checkbox(
                    activeColor: AppColors.darkgreen,
                    value: controller.isAccepted.value,
                    onChanged: (value) {
                      controller.isAccepted.value = value!;
                    })),
                SizedBox(
                  width: 1.w,
                ),
                const Text(
                  "I agree with terranalysis ",
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                ),
                const Text(
                  "Terms and Conditions",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkgreen),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w),
            child: SizedBox(
              height: 6.h,
              width: 100.w,
              child: Obx(
                () => ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: controller.isAccepted.value
                            ? AppColors.green
                            : Colors.grey),
                    onPressed: () {
                      if (controller.isAccepted.value) {
                        Get.find<StorageServices>().acceptTermsAndServices();
                        Get.offAll(() => const BottomNavPage());
                      }
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
              ),
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
