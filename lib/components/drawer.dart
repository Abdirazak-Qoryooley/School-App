import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/src/views/attendence/attendence.dart';
import 'package:school_app/src/views/exams/exam.dart';
import 'package:school_app/src/views/finance.dart/finance.dart';
import 'package:school_app/src/views/schedule.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shadowColor: Colors.red,
      
      // clipBehavior: Clip.antiAlias,

      
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Abdirizak Abdillahi Yusuf'),
            accountEmail: Text('C120193'),
         currentAccountPicture: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset('assets/a.jpg')),
            decoration: BoxDecoration(
              color: Color(0xfff00077B6),
              // image: DecorationImage(image: AssetImage('assets/a.jpg'),fit: BoxFit.cover)
            ),
          ),
          ListTile(
            leading: Image.asset('assets/exam.png',scale: 25,),
            title: Text('Imtixaanada'),
            onTap: (){
              Get.to(()=>ExaminationPage());
            },
          ),
          ListTile(
            leading: Image.asset('assets/profit.png',scale: 25,),
            title: Text('Maaliyada'),
            onTap: (){
                Get.to(()=>Finance());
            },
          ),
          ListTile(
            leading: Image.asset('assets/schedule.png',scale: 25,),
            title: Text('Jadwalka'),
            onTap: (){
                Get.to(()=>SchedulePage());
            },
          ),
          ListTile(
            leading: Image.asset('assets/info.png',scale: 25,),
            title: Text('Wargelin'),
            onTap: (){},
          ),
          ListTile(
            leading: Image.asset('assets/attendant.png',scale: 25,),
            title: Text('Imaanshaha'),
            onTap: (){
                Get.to(()=>AttendanceSummaryPage());
            },
          )
          
        ],
      ),
    );
  }
}
