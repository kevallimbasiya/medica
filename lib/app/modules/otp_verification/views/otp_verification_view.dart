import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  const OtpVerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('OTP Code Verification'),
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
              'Code has been send to +1234567890',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
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
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
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
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
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
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                    textAlign: TextAlign.center,
                    showCursor: false,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    onChanged: (value) {
                      if (value.isEmpty) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                ),
              ],
            ),
            Center(
              child: OTPTextField(
                otpFieldStyle: OtpFieldStyle(
                    backgroundColor: Colors.grey.shade300,
                    enabledBorderColor: Colors.grey.shade300),
                // controller: otpController,
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                length: 4,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceEvenly,
                fieldWidth: 60,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 10,
                style: const TextStyle(fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Obx(() => Container(
                  child: controller.second == 0
                      ? TextButton(
                          onPressed: () {
                            controller.second = 5;
                          },
                          child: const Text("Resend OTP"),
                        )
                      : Obx(
                          () => Text("Resend Code in ${controller.second}s"),
                        ),
                )),
          ],
        ),
      ),
    );
  }
}
