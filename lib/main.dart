import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/src/views/login.dart';

void main() {
  runApp(BoardingScreen());
}

class BoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}