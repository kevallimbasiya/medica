import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottomsheet_controller.dart';

class BottomsheetView extends GetView<BottomsheetController> {
  const BottomsheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(
            child: controller.page[controller.change],
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.date_range_outlined),
                label: 'Appointment',
              ),
            ],
            onTap: controller.ontapped,
            currentIndex: controller.change,
          )),
    );
  }
}
