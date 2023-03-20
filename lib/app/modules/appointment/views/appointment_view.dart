import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/appointment_controller.dart';

class AppointmentView extends GetView<AppointmentController> {
  const AppointmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images2.png",
            ),
          ),
          title: const Text(
            'My Appointment',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
              color: Colors.black,
            )
          ],
        ),
        body: Column(
          children: const [],
        ));
  }
}
