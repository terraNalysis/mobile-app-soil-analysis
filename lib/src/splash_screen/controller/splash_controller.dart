import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:terranalysis/services/getstorage_services.dart';
import 'package:terranalysis/src/bottom_nav_screen/view/bottom_nav_view.dart';

import '../../welcome_screen/view/welcome_view.dart';

class SplashController extends GetxController {
  navigateTo() async {
    Timer(const Duration(seconds: 4), () async {
      // FirebaseAuth auth = FirebaseAuth.instance;
      // User? user = auth.currentUser;
      // if (user != null && user.emailVerified) {
      //   Get.offAll(() => const PassCodePage());
      // } else {
      //   Get.offAll(() => const LoginPage());
      // }

      if (Get.find<StorageServices>().storage.read('termsAndCondition') == null || Get.find<StorageServices>().storage.read('termsAndCondition') == false) {
        Get.offAll(() => const WelcomePage());
      } else {
        Get.offAll(() => const BottomNavPage());
      }
    });
  }

  @override
  void onInit() {
    navigateTo();
    super.onInit();
  }
}
