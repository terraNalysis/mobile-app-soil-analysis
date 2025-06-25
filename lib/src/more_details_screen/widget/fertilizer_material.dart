import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/more_details_controller.dart';

class FertilizerMaterialPage extends GetView<MoreDetailsController> {
  const FertilizerMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Classification of Fertilizer Material',
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
                  "1. Natural Organic ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "any fertilizer of plant and/or animal origin that has undergone decomposition, e.g., types of compost, types of manure, etc.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Types of Manure",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "- Green Manure",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "- Farm Yard Manure",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "- Poultry Manure (Dropping Animals)",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "- Oil Cakes",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "- Animal based Concentrated Organic Manure",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Types of Compostings",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "A. Aerobic",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "A.1) Bin/In-vessel Compost - This method involves using containers or bins to compost organic waste efficiently. It provides a controlled environment for decomposition.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "A.2) Static Pile Compost - Create a heap of yard clippings and kitchen scraps. Periodically turning the pile introduces oxygen.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "A.3) Window Compost - Windrows (long, narrow piles) of organic matter are periodically turned to aerate them.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "A.4) Trench Compost - Bury organic material directly in a trench in your garden.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "A.5) On-site Compost - Composting directly where the organic waste is generated.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "B. Anaerobic",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "B.1) Bokashi Compost - Use a special brand inoculated with beneficial microbes. Layer kitchen scraps with the bran in an airtight container.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "B.2) Pit Compost - Bury organic waste in a pit or hole in the ground.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "B.3) Submerged Compost - Submerge organic waste in water to create an anaerobic environment.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "B.4) Stack/Piles Compost - Create a pile of organic material and allow it to decompose without turning or aerating it.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "C. Vermicompost",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "C.1) Subpod compost - Vermicomposting using earthworms to transform organic waste into nutrient-rich compost.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "2. Chemical /or inorganic ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "any fertilizer material which is a natural or synthetic product reaction of certain raw materials.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "According to number of fertilizer element:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "1) Single Fertilizers: These supply only one of the major fertilizer nutrients (N, P, or K). Examples include urea, ammonium sulfate, ordinary superphosphate, potash, and sulfate of potash.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "2) Incomplete Fertilizers: These contain two major fertilizer nutrients (N, P, or K). Examples include 17-0-17, which contains ammonium phosphate and potassium, and urea superphosphate (20-10-0) containing nitrogen and phosphorus.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "3) Complete Fertilizers: These contain all three major fertilizer nutrients (N, P, and K). Examples include balanced fertilizers that mix nitrogen, phosphorus, and potassium.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "4) Mixed Fertilizers: These contain physical mixtures of single fertilizers. They contain two or more major fertilizer nutrients (N, P, or K). Mixed fertilizers are made by thoroughly mixing the ingredients either mechanically or manually. Examples include ammonium phosphate, potash, and urea superphosphate (20-10-0).",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Common Use of Fertilizer Materials with Combination",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Single Fertilizer",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp),
                ),
                SizedBox(
                  height: .5.h,
                ),
                SizedBox(
                  width: 100.w,
                  height: 4.h,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: const Text("21-0-0"),
                      )),
                      Expanded(
                          child: Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: const Text("0-18-0"),
                      )),
                      Expanded(
                          child: Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: const Text("0-0-60"),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Incomplete and Single Fertilizer",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp),
                ),
                SizedBox(
                  height: .5.h,
                ),
                SizedBox(
                  width: 100.w,
                  height: 4.h,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: const Text("16-20-0"),
                      )),
                      Expanded(
                          child: Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: const Text("46-0-0"),
                      )),
                      Expanded(
                          child: Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: const Text("0-0-60"),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Complete and Single Fertilizer",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp),
                ),
                SizedBox(
                  height: .5.h,
                ),
                SizedBox(
                  width: 100.w,
                  height: 4.h,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: const Text("14-14-14"),
                      )),
                      Expanded(
                          child: Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: const Text("0-0-60"),
                      )),
                      Expanded(
                          child: Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: const Text("46-0-0"),
                      )),
                    ],
                  ),
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
