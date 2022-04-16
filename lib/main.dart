import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shuja_danish_physicswallah/app/modules/home/controllers/home_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put(HomeController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
