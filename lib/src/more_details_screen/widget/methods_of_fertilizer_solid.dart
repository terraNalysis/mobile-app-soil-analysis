import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/more_details_controller.dart';

class SolidFertilizerMethodPage extends GetView<MoreDetailsController> {
  const SolidFertilizerMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Solid Fertilizer',
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
                  "Broadcasting ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "It refers to spreading fertilizers uniformly all over the field. Suitable for crops with dense stands, the plant roots permeate the whole volume of the soil, large doses of fertilizers are applied and insoluble phosphatic fertilizers such as rock phosphate are used.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Two types of Broadcasting Fertilizers:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Basal Dressing",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "Broadcasting at sowing or planting is the main objective of broadcasting the fertilizers at sowing time are to uniformly distribute the fertilizer over the entire field and to mix it with soil.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Top Dressing",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "It is the broadcasting of fertilizers, particularly nitrogenous fertilizers in closely sown crops like paddy and wheat, with the objective of supplying nitrogen in readily available form to growing plants.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "The main disadvantages of application of fertilizers through broadcasting are:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "i) Nutrients cannot be fully utilized by plant roots as they move laterally over long distances.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "ii) The weed growth is stimulated all over the field.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "iii) Nutrients are fixed in the soil as they come in contact with a large mass of soil.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Placement",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "It refers to the placement of fertilizers in soil at a specific place with or without reference to the position of the seed. Placement of fertilizers is normally recommended when the quantity of fertilizers to apply is small, development of the root system is poor, soil has a low level of fertility and to apply phosphatic and potassic fertilizer.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Two types of Placement Fertilizers:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Plough Sole Placement ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "In this method, fertilizer is placed at the bottom of the plough furrow in a continuous band during the process of plowing. Every band is covered as the next furrow is turned. This method is suitable for areas where soil becomes quite dry up to few cm below the soil surface and soils having a heavy clay pan just below the plough sole layer.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Deep Placement ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  " It is the placement of ammoniacal nitrogenous fertilizers in the reduction zone of soil particularly in paddy fields, where ammoniacal nitrogen remains available to the crop. This method ensures better distribution of fertilizer in the root zone soil and prevents loss of nutrients by run-off.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Localized Placement ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  " It refers to the application of fertilizers into the soil close to the seed or plant in order to supply the nutrients in adequate amounts to the roots of growing plants.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Band Placement",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "If refers to the placement of fertilizer in bands.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Two types of Band Placement Fertilizers:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Hill Placement",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "It is practiced for the application of fertilizers in orchards. In this method, fertilizers are placed close to the plant in bands on one or both sides of the plant. The length and depth of the band varies with the nature of the crop.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Row Placement ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                ),
                Text(
                  "When the crops like sugarcane, potato, maize, cereals etc., are sown close together in rows, the fertilizer is applied in continuous bands on one or both sides of the row, which is known as row placement.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Pellet Application",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "It refers to the placement of nitrogenous fertilizer in the form of pellets 2.5 to 5 cm deep between the rows of the paddy crop. The fertilizer is mixed with the soil in the ratio of 1:10 and made small pellets of convenient size to deposit in the mud of paddy fields.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "The main advantages are as follows:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "i) When the fertilizer is placed, there is minimum contact between the soil and the fertilizer, and thus fixation of nutrients is greatly reduced.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "ii) The weeds all over the field can not make use of the fertilizers.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "iii) Residual response of fertilizers is usually higher.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "iv) Utilization of fertilizers by the plants is higher..",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "v) Loss of nitrogen by leaching is reduced.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
                ),
                Text(
                  "vi) Being immobile, phosphates are better utilized when placed.",
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
