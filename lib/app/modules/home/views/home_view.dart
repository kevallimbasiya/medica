import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images3.png",
                  height: 50,
                ),
                const Text(
                  " Medica",
                  style: TextStyle(fontSize: 50),
                )
              ],
            ),
          ),
          const CircularProgressIndicator()
        ],
      ),
    );
  }
}
