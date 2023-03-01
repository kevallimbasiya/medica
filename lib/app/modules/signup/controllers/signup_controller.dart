import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SignupController extends GetxController {
  final _check = false.obs;
  bool get check => _check.value;
  set check(bool value) => _check.value = value;

  final _visible = false.obs;
  bool get visible => _visible.value;
  set visible(bool value) => _visible.value = value;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future signup() async {
    try {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
      );
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Get.back();
      Get.snackbar('Success', 'User Create Successfully done.');
      Get.toNamed(Routes.FILL_PROFILE, arguments: {
        'Number': numberController.text,
        'Email': emailController.text,
      });
    } catch (e) {
      debugPrint(e.toString());
      Get.back();
      Get.snackbar('error', 'Email or Password is incorrect');
    }
  }

  email(value) {
    final emailvalid =
        RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+").hasMatch(value ?? '');
    if (value == null || value.isEmpty) {
      return '*Please enter your email';
    } else if (!emailvalid) {
      return '*please enter valid email';
    }
    return null;
  }

  password(value) {
    final passwordvalid = RegExp(
            "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@\$%^&*-]).{8,}\$")
        .hasMatch(value ?? '');
    if (value == null || value.isEmpty) {
      return '*Please enter your password';
    } else if (!passwordvalid) {
      return '*please enter valid password';
    } else if (value.length < 8) {
      return '*password must be at least 8 characters long';
    }
    return null;
  }

  
}
