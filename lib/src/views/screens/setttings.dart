import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/src/views/about_developers/developes.dart';
import 'package:school_app/src/views/about_school/about.dart';


class settings_page extends StatelessWidget {
   settings_page({super.key});
  // final LanguageController languageController = Get.put(LanguageController());
  // final darkController controller = Get.put(darkController());

  // var isDark = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('settings_page'),
      // ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  'assets/logo1.png',
                  width: 80,
                ),
              ),
              Text(
                'Machadka Al-tanwiir',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xfff00077B6),
                ),
              ),
            ],
          ),
          Divider(
            height: 12,
          ),
          SizedBox(
          
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xfff00077B6)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 14,left: 10),
              child: Text('GENERAL',style: TextStyle(fontSize: 16,color: Colors.white),),
            ),
          ),
     ListTile(
       leading: Icon(Icons.nights_stay_outlined),
       title: Text('Night Mode'),
       trailing:Switch(
             value: true,
             onChanged: (value) {
               
             },
           )
     ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              // _showLanguageDialog(context);
            },
            child: ListTile(
              leading: Icon(Icons.language),
              title: Text('chooseLanguage'),
              trailing: Icon(Icons.arrow_forward_ios_outlined)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('About al-tanwiir', ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){
            Get.to(()=>SchoolDescriptionPage());
            },
          ),
          SizedBox(
            height: 10,
          ),
            ListTile(
            leading: Icon(Icons.code),
            title: Text('About developers'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){
              Get.to(()=>about_developers());
            },
          )
        ],
      )),
    );
  }
}


