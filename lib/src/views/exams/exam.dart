import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ExaminationPage extends StatefulWidget {
  @override
  State<ExaminationPage> createState() => _ExaminationPageState();
}

class _ExaminationPageState extends State<ExaminationPage> {
  final ExamController examController = Get.put(ExamController());

  String? selectedSubject;
  // Change to nullable String
  List<String> results = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xfff03f3c59),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Examination'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(12),
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                  color: Color(0xff0003049),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        offset: Offset(1, 10),
                        color: Colors.white,
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 10),
                  ]),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xfff00077B6),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Student Information',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          children: [
                            Text(
                              'Student ID:',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text('C120193',
                                style: TextStyle(
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          children: [
                            Text(
                              'Class:',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text('F4A',
                                style: TextStyle(
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          children: [
                            Text(
                              'Percent Gained:',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text('80.5%',
                                style: TextStyle(
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                    width: double.infinity,
                    child: DropdownButton<String>(
                      hint: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('Choose Class'),
                      ),
                      dropdownColor: Colors.white,
                      value: selectedSubject,
                      padding: EdgeInsets.all(1),
                      style: TextStyle(color: Colors.black),
                      isExpanded: true,
                      underline: Container(),
                      onChanged: (String? newValue) {
                        // Change to nullable String
                        setState(() {
                          selectedSubject = newValue!;
                          // Simulate fetching results from a server based on the selected subject
                          results = getResultsFromServer(selectedSubject!);
                        });
                      },
                      items: <String>['One', 'Two', 'Three', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,

                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Column(children: [
              Container(
                margin: EdgeInsets.all(12),
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFF0003049),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      offset: Offset(1, 10),
                      color: Colors.white,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFF00077B6),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Subjects Results',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          DataTable(
                            horizontalMargin: 0, // Set horizontal margin to 0
                            columns: [
                              DataColumn(
                                numeric: true,
                                label: Text(
                                  'Course',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              DataColumn(
                                mouseCursor: MaterialStateMouseCursor.clickable,
                                label: Text(
                                  'Total Marks',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],

                            rows: examController.courses.map((course) {
                              return DataRow(
                                cells: [
                                  DataCell(
                                    Text(
                                      course.name,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  
                                  ),
                                  
                                  DataCell(
                                    
                                    Text('${course.totalMarks}',
                                      style: TextStyle(color: Colors.white))),
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ])
          ]),
        ));
  }
}

List<String> getResultsFromServer(String? subject) {
  // Change to nullable String
  // Replace this with your actual logic to fetch results from a server
  // This is just a placeholder
  if (subject == 'One') {
    return [
      '60',
    ];
  } else if (subject == 'Two') {
    return ['Result 1 for Two', 'Result 2 for Two'];
  } else if (subject == 'Three') {
    return ['Result 1 for Three', 'Result 2 for Three'];
  } else {
    return [];
  }
}

class Course {
  final String name;
  final double totalMarks;

  Course(this.name, this.totalMarks);
}

// Controller for managing state
class ExamController extends GetxController {
  var courses = <Course>[
    Course('Math', 100),
    Course('Science', 90),
    Course('History', 80),
    // Add more courses as needed
  ].obs;
}
