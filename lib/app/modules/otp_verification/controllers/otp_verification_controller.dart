import 'dart:async';

import 'package:get/get.dart';

import '../../forgot_password/controllers/forgot_password_controller.dart';
import '../../signup/controllers/signup_controller.dart';

class OtpVerificationController extends GetxController {
  ForgotPasswordController forgotPasswordController =
      Get.find<ForgotPasswordController>();
  SignupController signupController = Get.find<SignupController>();
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
