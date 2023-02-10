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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Add a fingerprint to make your account make secure',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 80,
              ),
              const Icon(
                Icons.fingerprint_outlined,
                size: 230,
                color: Colors.indigo,
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                  "please put your fonger on the fingerprint scanner to get started",
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: controller.alert,
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.indigo[50],
                        elevation: 0),
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Continue"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
