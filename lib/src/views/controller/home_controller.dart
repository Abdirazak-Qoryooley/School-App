import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:school_app/src/views/screens/about.dart';
import 'package:school_app/src/views/screens/events.dart';
import 'package:school_app/src/views/screens/home.dart';
import 'package:school_app/src/views/screens/setttings.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  final List<Widget> pages = [
    homepage(),
    events_page(),
    about_page(),
    settings_page(),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
