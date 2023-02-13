import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey[300],
                filled: true,
                prefixIcon: const Icon(Icons.search_outlined),
                labelText: "Search",
                suffixIcon: const Icon(Icons.tune_outlined),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
