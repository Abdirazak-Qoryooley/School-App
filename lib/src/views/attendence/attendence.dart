import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/src/views/controller/attendance.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AttendanceSummaryPage extends StatelessWidget {
  final AttendanceController controller = Get.put(AttendanceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Summary'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage('assets/aten.jpg'), fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          offset: Offset(1, 10),
                          color: Colors.white,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 2),
                    ]),
              ),
              Obx(() => Padding(
                    padding: const EdgeInsets.all(25),
                    child: DropdownButton<String>(
                      hint: Text('Choose Course'),
                      dropdownColor: Colors.white,
                      focusColor: Colors.grey,
                      value: controller.selectedSubject.value,
                      isExpanded: true,
                      onChanged: (newValue) =>
                          controller.setSelectedSubject(newValue!),
                      items: controller.subjects.map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                    ),
                  )),
              // SizedBox(height: 5),
              Container(
                margin: EdgeInsets.all(12),
                width: double.infinity,
                height: 335,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          offset: Offset(1, 10),
                          color: Colors.white,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 2),
                    ]),
                child: Obx(() => controller.attendanceData.isNotEmpty
                    ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text('Rate Of Absents and Presents'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SfCircularChart(
                                margin: EdgeInsets.all(35),
                                series: <CircularSeries>[
                                  PieSeries<AttendanceData, String>(
                                    dataSource: controller.attendanceData,
                                    xValueMapper: (AttendanceData data, _) =>
                                        data.status,
                                    yValueMapper: (AttendanceData data, _) =>
                                        data.count,
                                    dataLabelMapper: (AttendanceData data, _) =>
                                        '${data.status}: ${data.count}%',
                                    dataLabelSettings: DataLabelSettings(
                                      isVisible: true,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Absent'),
                                  
                                   Text('Present')
                                  ],
                              )
                            ],
                          ),
                        ],
                      )
                    : Container()),
              ),
              Container(
                width:double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                   boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          offset: Offset(1, 10),
                          color: Colors.white,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 2),
                    ]
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset('assets/magazine.png',width: 25,),
                      title: Text('Total Period'),
                      trailing: Text('45'),
                    ),
                     ListTile(
                      leading: Image.asset('assets/checkmark.png',width: 25,),
                      title: Text('Present Period'),
                      trailing: Text('34'),
                    ),
                     ListTile(
                      leading: Image.asset('assets/cancel.png',width: 25,),
                      title: Text('Absent Period'),
                      trailing: Text('11'),
                    ),
                     ListTile(
                      leading: Image.asset('assets/shopping.png',width: 25,),
                      title: Text('Attendence rate'),
                      trailing: Text('24.44'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
