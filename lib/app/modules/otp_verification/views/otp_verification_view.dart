import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';
import 'package:pinput/pinput.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
              ),
              Text(
                controller.forgotPasswordController.value
                    ? "Code has been send to ${controller.signupController.numbercontroller.text}"
                    : "Code has been send to ${controller.signupController.emailcontroller.text}",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
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
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Obx(() => SizedBox(
                    height: 50,
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
              const SizedBox(
                height: 230,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.CREATE_NEW_PASSWORD);
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(350, 50),
                    shape: const StadiumBorder()),
                child: const Text("Verify"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
