import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SchedulePage extends StatelessWidget {
  final ScheduleController controller = Get.put(ScheduleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School Schedule'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select a day:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Obx(
              () => DropdownButton<String>(
                value: controller.selectedDay.value,
                onChanged: (String? newValue) {
                  controller.setSelectedDay(newValue!);
                },
                items: controller.days.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
            SizedBox(height: 32),
            Obx(
              () => Text(
                'Subjects for ${controller.selectedDay.value}, ${controller.selectedDate.value}:',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.subjects.length,
                  itemBuilder: (context, index) {
                    final subject = controller.subjects[index];
                    return ListTile(
                      title: Text(subject.name),
                      subtitle: Text('${subject.time}, ${subject.date}'),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScheduleController extends GetxController {
  final List<String> days = ['Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday'];
  final RxString selectedDay = 'Saturday'.obs;
  final RxString selectedDate = 'Jan 28, 2024'.obs; // Example date
  final Map<String, List<Subject>> schedule = {
    'Saturday': [
      Subject('Math', '9:00 AM - 10:00 AM', 'Jan 29, 2024'),
      Subject('Science', '10:00 AM - 11:00 AM', 'Jan 29, 2024'),
      Subject('English', '11:00 AM - 12:00 PM', 'Jan 29, 2024'),
    ],
    'Sunday': [
      Subject('Physics', '9:30 AM - 10:30 AM', 'Jan 30, 2024'),
      Subject('Chemistry', '10:30 AM - 11:30 AM', 'Jan 30, 2024'),
      Subject('Biology', '11:30 AM - 12:30 PM', 'Jan 30, 2024'),
    ],
    'Monday': [
      Subject('History', '9:00 AM - 10:00 AM', 'Jan 31, 2024'),
      Subject('Geography', '10:00 AM - 11:00 AM', 'Jan 31, 2024'),
      Subject('Civics', '11:00 AM - 12:00 PM', 'Jan 31, 2024'),
    ],
    'Tuesday': [
      Subject('Computer Science', '9:30 AM - 10:30 AM', 'Feb 1, 2024'),
      Subject('Programming', '10:30 AM - 11:30 AM', 'Feb 1, 2024'),
      Subject('Web Development', '11:30 AM - 12:30 PM', 'Feb 1, 2024'),
    ],
    'Wednesday': [
      Subject('Art', '9:00 AM - 10:00 AM', 'Feb 2, 2024'),
      Subject('Music', '10:00 AM - 11:00 AM', 'Feb 2, 2024'),
      Subject('Physical Education', '11:00 AM - 12:00 PM', 'Feb 2, 2024'),
    ],
  };

  void setSelectedDay(String day) {
    selectedDay.value = day;
  }

  void setSelectedDate(String date) {
    selectedDate.value = date;
  }

  List<Subject> get subjects => schedule[selectedDay.value] ?? [];
}

class Subject {
  final String name;
  final String time;
  final String date;

  Subject(this.name, this.time, this.date);
}