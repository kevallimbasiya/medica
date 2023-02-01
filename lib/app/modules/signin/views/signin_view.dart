import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medica/app/routes/app_pages.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                "assets/welcome.svg",
                height: 200,
              ),
              Text(
                "Let's you in",
                style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(
                        fontSize: 50, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(330, 50),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook_outlined,
                  color: Colors.blue,
                ),
                label: const Text(
                  "Continue with Facebook",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(330, 50),
                ),
                onPressed: () {},
                icon: Image.asset(
                  "assets/google_logo.png",
                  height: 18,
                ),
                label: const Text(
                  "Continue with Google",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(330, 50),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.apple_outlined,
                  color: Colors.black,
                ),
                label: const Text(
                  "Continue with Apple",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: 150,
                    color: Colors.black12,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("or"),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 2,
                    width: 150,
                    color: Colors.black12,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(330, 50),
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  Get.toNamed(Routes.LOGIN);
                },
                child: const Text("Sign in with Password"),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                selectionColor: Colors.black,
                text: TextSpan(
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  text: "Don't have an account? ",
                  children: [
                    TextSpan(
                      style: const TextStyle(
                          color: Colors.indigo, fontWeight: FontWeight.bold),
                      text: "Sign Up",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(Routes.SIGNUP);
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
