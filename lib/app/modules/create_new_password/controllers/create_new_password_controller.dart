import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
    Alert(
      context: Get.context!,
      image: SvgPicture.asset(
        "assets/security_on.svg",
        height: 100,
      ),
      title: "Congratulations!",
      desc: "Tour Account is ready to use.",
    ).show();
  }
}
