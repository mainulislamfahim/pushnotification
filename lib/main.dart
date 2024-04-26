import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) => GetMaterialApp(
        textDirection: TextDirection.ltr,
        theme: ThemeData(
          primaryColor: Colors.green, // Set your desired primary color
          primarySwatch: Colors.green,
        ),
        title: "Shopaholic",
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
      designSize: const Size(360, 800),
    );
  }
}

