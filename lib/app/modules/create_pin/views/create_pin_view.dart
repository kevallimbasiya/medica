import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_pin_controller.dart';

class CreatePinView extends GetView<CreatePinController> {
  const CreatePinView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreatePinView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreatePinView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
