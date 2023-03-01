import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../routes/app_pages.dart';

class FillProfileController extends GetxController {
  Map data = {};
  @override
  void onInit() {
    data = Get.arguments;
    mobilenumbercontroller.text = data["Number"];
    emailcontroller.text = data["Email"];

    super.onInit();
  }

  final formKey = GlobalKey<FormState>();
  bool? emailvalid;
  TextEditingController fullnameController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController mobilenumbercontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();

  String dropdownValue = "-- Select Gender --";

  var items = ['Male', 'Female', 'other'];

  void showdatepicker() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    dateController.text = DateFormat('yyyy-MM-dd').format(pickedDate!);
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

  final _img = Rx<File?>(null);
  get img => _img.value;
  set img(value) => _img.value = value;

  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return null;

    final imageTemporary = File(image.path);

    img = imageTemporary;
    Get.back();
  }

  Future fillprofile() async {
    try {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator(),
        ),
      );
      await FirebaseFirestore.instance.collection('medica').doc().set({
        'Full Name': fullnameController.text,
        'Nickname': nicknameController.text,
        'Date of Birth': dateController.text,
        'Mobile Number': mobilenumbercontroller.text,
        'Email': emailcontroller.text,
        'Gender': gendercontroller.text,
      });
      Get.back();
      Get.toNamed(Routes.CREATE_PIN);
    } catch (e) {
      debugPrint(e.toString());
      Get.back();
    }
  }
}
