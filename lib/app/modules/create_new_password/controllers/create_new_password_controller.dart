import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CreateNewPasswordController extends GetxController {
  final _visible = false.obs;
  bool get visible => _visible.value;
  set visible(bool value) => _visible.value = value;

  final _visible1 = false.obs;
  bool get visible1 => _visible1.value;
  set visible1(bool value) => _visible1.value = value;

  final _check = false.obs;
  bool get check => _check.value;
  set check(bool value) => _check.value = value;

  void alert() {
    showDialog(
      context: Get.context!,
      builder: (context) {
        Future.delayed(const Duration(seconds: 3), () {
          Navigator.of(context).pop(true);
        });
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: SvgPicture.asset(
            "assets/security_on.svg",
            height: 100,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: const [
                Text(
                  "Congratulations!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Your Account is ready to use.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                SpinKitCircle(
                  size: 50,
                  color: Colors.indigo,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
