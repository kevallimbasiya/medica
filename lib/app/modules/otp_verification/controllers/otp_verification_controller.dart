import 'dart:async';

import 'package:get/get.dart';

class OtpVerificationController extends GetxController {
  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  @override
  void onClose() {
    startTimer();
    super.onClose();
  }

  final _second = 5.obs;
  int get second => _second.value;
  set second(int value) => _second.value = value;

  void startTimer() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (second > 0) {
          second--;
        }
      },
    );
  }
}
