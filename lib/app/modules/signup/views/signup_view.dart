import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Column(
                children: [
                  Image.asset("assets/images2.png", height: 200),
                  const Text(
                    "Create New Account",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: controller.numbercontroller,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      prefixIcon: const Icon(Icons.call),
                      labelText: "mobile Number",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: controller.emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        prefixIcon: const Icon(Icons.email),
                        labelText: "Email",
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(() => TextField(
                        obscureText: controller.visible,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.visible = !controller.visible;
                            },
                            icon: Obx(() => Icon(controller.visible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined)),
                          ),
                          labelText: "Password",
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.check,
                          onChanged: (value) {
                            controller.check = value!;
                          },
                        ),
                      ),
                      const Text("Remember me"),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.FILL_PROFILE);
                    },
                    child: const Text("sign up"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: 110,
                        color: Colors.black12,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("or continue with"),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 2,
                        width: 110,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.facebook_outlined,
                          color: Colors.blue,
                        ),
                      ),
                      OutlinedButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/google_logo.png",
                            height: 18,
                          )),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.apple_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    selectionColor: Colors.black,
                    text: TextSpan(
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      text: "Already have an account? ",
                      children: [
                        TextSpan(
                          style: const TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold),
                          text: "Sign In",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(Routes.LOGIN);
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
