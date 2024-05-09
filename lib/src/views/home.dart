import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:iconly/iconly.dart';
import 'package:school_app/src/views/controller/home_controller.dart';

class home extends StatelessWidget {
  final List<IconData> icons = [
    IconlyLight.home,
    IconlyLight.bag,
    IconlyLight.info_circle,
    IconlyLight.setting
  ];

  final List<String> labels = [
    'Home',
    'Events',
    'About',
    'Settings',
  ];
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: controller.pages,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.white,
          onTap: (index) => controller.changePage(index),
          items: List.generate(
            icons.length,
            (index) => BottomNavigationBarItem(
                backgroundColor: Color(0xfff00077B6),
                icon: Icon(
                  icons[index],
                ),
                label: labels[index]),
          ),
        ),
      ),
    );
  }
}
