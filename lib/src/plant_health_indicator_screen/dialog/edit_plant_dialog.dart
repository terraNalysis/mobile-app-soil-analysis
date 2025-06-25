import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:terranalysis/src/plant_health_indicator_screen/controller/plant_health_indicator_controller.dart';
import '../../../config/app_colors.dart';

class EditPlantNameDialog {
  static showEditDialog({required String plant}) async {
    var controller = Get.find<PlantHealthIndicatorController>();
    TextEditingController plantname = TextEditingController(text: plant);
    Get.dialog(
      AlertDialog(
        content: SizedBox(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 6.h,
                      width: 55.w,
                      padding: EdgeInsets.only(left: 3.w, right: 3.w),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: TextField(
                          controller: plantname,
                          decoration: const InputDecoration(border: InputBorder.none),
                        ),
                      )),
                  IconButton(
                      onPressed: () async {
                        Get.back();
                        controller.editPlant(name: plantname.text);
                      },
                      icon: Icon(
                        Icons.edit,
                        color: AppColors.darkgreen,
                        size: 30.sp,
                      ))
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
