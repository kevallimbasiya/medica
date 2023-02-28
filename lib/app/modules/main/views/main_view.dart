import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          leadingWidth: 70,
          leading: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              ClipOval(
                child: Container(
                  height: 60,
                  width: 60,
                  color: Colors.grey[200],
                  // child: controller.fillProfileController.img != null
                  //     ? Image.file(
                  //         controller.fillProfileController.img!,
                  //         fit: BoxFit.cover,
                  //       )
                  //     : Icon(
                  //         Icons.person,
                  //         color: Colors.grey[300],
                  //         size: 50,
                  //       ),
                ),
              ),
            ],
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Good Morning👋',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "Keval Limbasiya",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    prefixIcon: const Icon(Icons.search_outlined),
                    suffixIcon: const Icon(Icons.tune_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 20,
              ),
              // const C1(),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  controller: controller.pageController,
                  children: const [C1(), C1(), C1(), C1()],
                ),
              ),
              SmoothPageIndicator(
                controller: controller.pageController,
                count: 4,
                effect: const JumpingDotEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  jumpScale: .7,
                  verticalOffset: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Doctor Speciality",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  TextButton(onPressed: () {}, child: const Text("See All"))
                ],
              ),
              SizedBox(
                height: 200,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100,
                      // childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      // height: 100,
                      // width: 100,
                      color: Colors.amber,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                              child: Container(
                                  child: Icon(controller.icon[index]))),
                          Text(controller.text[index])
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class C1 extends StatelessWidget {
  const C1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.indigo[400],
              borderRadius: BorderRadius.circular(20)),
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [
            SizedBox(
              width: 220,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Medical Checks!",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Expanded(
                      child: Text(
                        "Check your health condition regularly to minimize the incidence of disease in the future.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: (() {}),
                        child: const Text(
                          "Check Now",
                          style: TextStyle(color: Colors.indigo),
                        ))
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20)),
                    child: Image.asset("assets/main_page_doctor.png")),
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
