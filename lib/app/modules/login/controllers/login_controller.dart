import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final _check = false.obs;
  bool get check => _check.value;
  set check(bool value) => _check.value = value;

  final _visible = false.obs;
  bool get visible => _visible.value;
  set visible(bool value) => _visible.value = value;

  Future<void> login() async {
    try {
      final dio = Dio();
      Get.dialog(
          const Center(
            child: CircularProgressIndicator(),
          ),
          barrierDismissible: true);
      final response = await dio.post(
        "https://d3wqw.mocklab.io/login",
        data: {
          "email": emailController.text,
          "password": passwordController.text,
        },
      );
      Get.back();
      Get.snackbar("success", response.data["message"]);
    } catch (e) {
      Get.back();
      print(e);
    }
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
}
