import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  PageController pageController = PageController();

  List like1 = <bool>[false, false, false, false].obs;

  List icon = [
    Icons.group,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,
    Icons.more_horiz_sharp,
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

  List image = [
    "assets/doctor14.jpg",
    "assets/doctor13.jpg",
    "assets/doctor11.jpg",
    "assets/doctor15.jpg",
  ];

  List name = [
    "Dr. hannah baker",
    "Dr. Sadie Sink",
    "Dr. Mike Wheeler",
    "Dr. Will byers"
  ];

  List hospital = [
    "cardiologyst | B&B Hospital",
    "neurologist | Alka Hospital",
    "Dentist | JFK Hospital",
    "Immunologist | valley Hospital"
  ];
}
