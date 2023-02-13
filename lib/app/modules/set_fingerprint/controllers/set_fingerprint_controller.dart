import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';

class SetFingerprintController extends GetxController {
  void alert() {
    showDialog(
      context: Get.context!,
      builder: (context) {
        Future.delayed(const Duration(seconds: 3), () {
          // Navigator.of(context).pop(true);
          Get.toNamed(Routes.MAIN);
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
                  'Your account is ready to use. You will be redirected to the Home page in a few seconds.',
                  style: TextStyle(fontSize: 13),
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
