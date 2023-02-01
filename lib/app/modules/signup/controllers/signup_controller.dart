import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final _check = false.obs;
  bool get check => _check.value;
  set check(bool value) => _check.value = value;

  final _visible = false.obs;
  bool get visible => _visible.value;
  set visible(bool value) => _visible.value = value;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
}
