import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'config/app_colors.dart';
import 'services/getstorage_services.dart';
import 'src/splash_screen/view/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyB-wImO2TqYoQ8lCxYJ_RWM-qqvq1iEx-0',
          appId: '1:606679864301:android:89c358be98a4f8c3a10de4',
          databaseURL: 'https://soil-quality-5c266-default-rtdb.asia-southeast1.firebasedatabase.app/',
          messagingSenderId: '606679864301',
          projectId: 'soil-quality-5c266'));
  await Get.putAsync<StorageServices>(() async => StorageServices());
  // await Get.putAsync<NotificationServices>(() async => NotificationServices());

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.detached) {
      log("detached");
    } else if (state == AppLifecycleState.paused) {
      log("paused");
    } else if (state == AppLifecycleState.resumed) {
      log("resumed");
    } else if (state == AppLifecycleState.inactive) {
      log("inactive");
    }
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TerraNalysis',
        theme: ThemeData(
          fontFamily: "BariolNormal",
          primarySwatch: MaterialColor(0xff33691E, AppColors.mainMaterialColor),
        ),
        home: const SplashPage(),
      );
    });
  }
}
