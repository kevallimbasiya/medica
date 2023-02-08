import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/set_fingerprint_controller.dart';

class SetFingerprintView extends GetView<SetFingerprintController> {
  const SetFingerprintView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Set Your Fingerprint'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          Text(
            'Add a fingerprint to make your account make secure',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
