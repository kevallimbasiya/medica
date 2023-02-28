import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  PageController pageController = PageController();

  List icon = [
    Icons.group,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
  ];

  List text = [
    "General",
    "Dentist",
    "Ophtal",
    "Nutrition",
    "Neurology",
    "pediatic",
    "Radiology",
    "More",
  ];
}
