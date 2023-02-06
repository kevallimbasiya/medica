import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controllers/create_pin_controller.dart';

class CreatePinView extends GetView<CreatePinController> {
  const CreatePinView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Create New Pin'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Add a PIN number to make your account more secure.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                length: 4,
                defaultPinTheme: PinTheme(
                    height: 50,
                    width: 50,
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
