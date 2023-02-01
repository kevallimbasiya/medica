import 'dart:async';

import 'package:get/get.dart';
import 'package:medica/app/modules/Welcome/views/welcome_view.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    splash1();
    super.onInit();
  }

  void splash1() {
    Timer(
      const Duration(seconds: 3),
      () => Get.to(const WelcomeView()),
    );
  }
}
