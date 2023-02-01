import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medica/app/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CarouselSlider(
              carouselController: controller.carouselController,
              items: controller.img.map(
                (e) {
                  return Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Image.asset(
                      e,
                      fit: BoxFit.fitWidth,
                    ),
                  );
                },
              ).toList(),
              options: CarouselOptions(
                enableInfiniteScroll: false,
                height: 330,
                initialPage: 0,
                onScrolled: (value) {
                  controller.values = value!.toInt();
                  controller.dot = value.toInt();
                },
              ),
            ),
            Container(
              color: Colors.white,
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Obx(
                () => Text(
                  controller.text1[controller.values],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30, color: Colors.indigo),
                ),
              ),
            ),
            Obx(
              () => DotsIndicator(
                dotsCount: 3,
                position: controller.dot.toDouble(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (controller.values == 2) {
                    Get.toNamed(Routes.SIGNIN);
                  }
                  controller.carouselController.nextPage();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                ),
                child: Obx(
                  () => Text(controller.values == 2 ? "Get Started" : "Next"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ]),
    );
  }
}
