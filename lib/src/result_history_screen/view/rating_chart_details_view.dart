import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/result_history_controller.dart';

class RatingChartPage extends GetView<ResultHistoryController> {
  const RatingChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rating Chart',
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Rating Chart for Soil Data",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),

                Center(
                  child: Container(
                    height: 15.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/chart2.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Rating Chart for Soil pH Levels",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),

                Center(
                  child: Container(
                    height: 13.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/chart3.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Rating Chart for Soil Moistures",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                Center(
                  child: Container(
                    height: 15.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/chart1.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Scale for Plant Health Status",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "0.1 - 0.9 rate - Poor Plant",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp),
                ),
                Text(
                  "1.0 - 1.9  rate - Unhealthy Plant",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp),
                ),
                Text(
                  "2.0 - 3.0 rate - Healthy Plant",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp),
                ),
                // SizedBox(
                //   width: 100.w,
                //   height: 4.h,
                //   child: Row(
                //     children: [
                //       Expanded(
                //           child: Container(
                //         height: 4.h,
                //         decoration: BoxDecoration(
                //           border: Border.all(),
                //         ),
                //         alignment: Alignment.center,
                //         child: const Text("21-0-0"),
                //       )),
                //       Expanded(
                //           child: Container(
                //         height: 4.h,
                //         decoration: BoxDecoration(
                //           border: Border.all(),
                //         ),
                //         alignment: Alignment.center,
                //         child: const Text("0-18-0"),
                //       )),
                //       Expanded(
                //           child: Container(
                //         height: 4.h,
                //         decoration: BoxDecoration(
                //           border: Border.all(),
                //         ),
                //         alignment: Alignment.center,
                //         child: const Text("0-0-60"),
                //       )),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 1.h,
                // ),
                // Text(
                //   "Incomplete and Single Fertilizer",
                //   style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp),
                // ),
                // SizedBox(
                //   height: .5.h,
                // ),
                // SizedBox(
                //   width: 100.w,
                //   height: 4.h,
                //   child: Row(
                //     children: [
                //       Expanded(
                //           child: Container(
                //         height: 4.h,
                //         decoration: BoxDecoration(
                //           border: Border.all(),
                //         ),
                //         alignment: Alignment.center,
                //         child: const Text("16-20-0"),
                //       )),
                //       Expanded(
                //           child: Container(
                //         height: 4.h,
                //         decoration: BoxDecoration(
                //           border: Border.all(),
                //         ),
                //         alignment: Alignment.center,
                //         child: const Text("46-0-0"),
                //       )),
                //       Expanded(
                //           child: Container(
                //         height: 4.h,
                //         decoration: BoxDecoration(
                //           border: Border.all(),
                //         ),
                //         alignment: Alignment.center,
                //         child: const Text("0-0-60"),
                //       )),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 1.h,
                // ),
                // Text(
                //   "Complete and Single Fertilizer",
                //   style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp),
                // ),
                // SizedBox(
                //   height: .5.h,
                // ),
                // SizedBox(
                //   width: 100.w,
                //   height: 4.h,
                //   child: Row(
                //     children: [
                //       Expanded(
                //           child: Container(
                //         height: 4.h,
                //         decoration: BoxDecoration(
                //           border: Border.all(),
                //         ),
                //         alignment: Alignment.center,
                //         child: const Text("14-14-14"),
                //       )),
                //       Expanded(
                //           child: Container(
                //         height: 4.h,
                //         decoration: BoxDecoration(
                //           border: Border.all(),
                //         ),
                //         alignment: Alignment.center,
                //         child: const Text("0-0-60"),
                //       )),
                //       Expanded(
                //           child: Container(
                //         height: 4.h,
                //         decoration: BoxDecoration(
                //           border: Border.all(),
                //         ),
                //         alignment: Alignment.center,
                //         child: const Text("46-0-0"),
                //       )),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 4.h,
                // ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
