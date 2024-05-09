import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/src/views/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final screenWidth = constraints.maxWidth;

                final textFontSize = screenWidth * 0.04;
                final logoWidth = screenWidth * 0.5;
                final inputMargin = screenWidth * 0.05;
                final buttonWidth = screenWidth * 0.5;
                final buttonHeight = screenWidth * 0.12;

                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset(
                        'assets/logo1.png',
                        width: logoWidth,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'MACHADKA AL-TANWIIR',
                            style: TextStyle(
                                color: Color(0xfff00077B6),
                                fontSize: textFontSize,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'WELCOME',
                        style: TextStyle(
                            fontSize: textFontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: inputMargin),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(0, 2),
                              blurRadius: 6,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Username',
                              prefixIcon:
                                  Icon(Icons.person, color: Color(0xfff00077B6)),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: inputMargin),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(0, 2),
                              blurRadius: 6,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xfff00077B6),
                              ),
                              suffixIcon: Icon(Icons.visibility,
                                  color: Color(0xfff00077B6)),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      SizedBox(
                        width: buttonWidth,
                        height: buttonHeight,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xfff00077B6),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            onPressed: () {
                              Get.to(() => home());
                            },
                            child: Text(
                              'Sign In',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
