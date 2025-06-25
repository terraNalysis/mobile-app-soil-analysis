import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:terranalysis/src/more_details_screen/widget/basic_npk_recommendation_solution.dart';
import 'package:terranalysis/src/more_details_screen/widget/faqs.dart';
import 'package:terranalysis/src/more_details_screen/widget/fertilizer_computation.dart';
import 'package:terranalysis/src/more_details_screen/widget/privacy_policy.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_fontsizes.dart';
import '../controller/more_details_controller.dart';
import '../widget/fertilizer_material.dart';
import '../widget/methods_of_fertilizer.dart';
import '../widget/terms_and_conditions.dart';

class MoreDetailsPage extends GetView<MoreDetailsController> {
  const MoreDetailsPage({super.key});

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
              "More Details",
              style: TextStyle(color: AppColors.darkgreen, fontWeight: FontWeight.bold, fontSize: AppFontSizes.large),
            ),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              height: 7.h,
              width: 100.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const FertilizerComputationPage());
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Fertilizer Computation",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 7.h,
              width: 100.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const MethodsOfFertilizerPage());
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Different Methods of Fertilizer Application",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 7.h,
              width: 100.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const FertilizerMaterialPage());
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Classifications of Fertilizer Materials",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 7.h,
              width: 100.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const BasicNPKRecommendationSolutionPage());
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Basic NPK Recommendation Solution",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 7.h,
              width: 100.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const TermsAndConditionsDetailsPage());
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 7.h,
              width: 100.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const PrivacyPolicyPage());
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Privacy Policy",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 7.h,
              width: 100.w,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const FrequentlyAskedQuestionsPage());
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Frequently Ask Questions (FAQ)",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: AppFontSizes.regular),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
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
