import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    textAlign: TextAlign.center,
                    showCursor: false,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    textAlign: TextAlign.center,
                    showCursor: false,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      } else if (value.isEmpty) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    textAlign: TextAlign.center,
                    showCursor: false,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      } else if (value.isEmpty) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    textAlign: TextAlign.center,
                    showCursor: false,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    onChanged: (value) {
                      if (value.isEmpty) {
                        FocusScope.of(context).previousFocus();
                      } else if (controller.focus = false) {
                        FocusScope.of(context).setFirstFocus(FocusScopeNode());
                      }
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
