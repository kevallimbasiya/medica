import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final _check = false.obs;
  bool get check => _check.value;
  set check(bool value) => _check.value = value;

  final _visible = false.obs;
  bool get visible => _visible.value;
  set visible(bool value) => _visible.value = value;

  Future<void> login() async {
    try {
      Get.dialog(
          const Center(
            child: CircularProgressIndicator(),
          ),
          barrierDismissible: true);
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      Get.back();
      Get.snackbar("success", 'Use successfull login');
      Get.offAllNamed(Routes.BOTTOMSHEET);
    } catch (e) {
      Get.back();
      debugPrint(e.toString());
      Get.snackbar("error", 'Email or Passwods is incorrect');
    }
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
