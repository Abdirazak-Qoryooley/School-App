import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/src/views/login.dart';



class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulate some loading process, e.g., fetching data or initializing
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the onboarding screen after 3 seconds
     Get.to(() => LoginPage());
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/logo1.png',scale: 2,)
      ),
    );
  }
}
