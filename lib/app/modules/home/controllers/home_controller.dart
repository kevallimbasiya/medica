import 'dart:async';

import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    splash1();
    super.onInit();
  }

  void splash1() {
    Timer(
      const Duration(seconds: 3),
      () => Get.offNamed(Routes.WELCOME),
    );
  }
}
