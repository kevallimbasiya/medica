import 'package:get/get.dart';

import '../../signup/controllers/signup_controller.dart';

class ForgotPasswordController extends GetxController {
  SignupController signupController = Get.find<SignupController>();
  final _value = false.obs;
  bool get value => _value.value;
  set value(bool value) => _value.value = value;

  final _value1 = false.obs;
  bool get value1 => _value1.value;
  set value1(bool value) => _value1.value = value;
}
