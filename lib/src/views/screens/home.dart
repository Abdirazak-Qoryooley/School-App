import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/components/banner.dart';
import 'package:school_app/components/cards.dart';
import 'package:school_app/components/drawer.dart';
import 'package:school_app/src/views/attendence/attendence.dart';
import 'package:school_app/src/views/exams/exam.dart';
import 'package:school_app/src/views/finance.dart/finance.dart';
import 'package:school_app/src/views/profile/profile.dart';
import 'package:school_app/src/views/schedule.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff00077B6),
        title: Text('Student Portal',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,)),
          )
        ],
      ),
      
      drawer: drawer(),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Bannercard(),
          SizedBox( 
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Get.to(()=>ExaminationPage());
                },
                child: Cards(
                  
                  image: 'assets/exam.png',
                  text: 'Imtixaanada',
                
                ),
              ),
              InkWell(
                onTap: () {
                   Get.to(()=>Finance());
                  
                },
                child: Cards(
                  image: 'assets/profit.png',
                  text: 'Maaliyada',
                ),
              ),
              InkWell(
                onTap: (){
                         Get.to(()=>SchedulePage());
                },
                child: Cards(
                  image: 'assets/schedule.png',
                  text: 'Jadwalka',
                ),
              ),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Cards(
                image: 'assets/info.png',
                text: 'Wargelin',
              ),
              InkWell(
              onTap: (){
                  Get.to(()=>AttendanceSummaryPage());
              },
                child: Cards(
                  image: 'assets/attendant.png',
                  text: 'Imaanshaha',
                ),
              ),
              InkWell(
                onTap: (){
                   Get.to(()=>StudentProfilePage());
                },
                child: Cards(
                  image: 'assets/user.png',
                  text: 'Profile',
                ),
              ),
            ],
          ),

        ],
      )),
    );
  }
}
