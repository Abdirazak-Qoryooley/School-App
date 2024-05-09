import 'package:flutter/material.dart';
import 'package:get/get.dart';

class events_page extends StatelessWidget {
  final SchoolController schoolController = Get.put(SchoolController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                schoolController.fetchEvents();
              },
              child: Text('Fetch Events'),
            ),
            SizedBox(height: 32),
            Obx(
              () {
                if (schoolController.isLoading.value) {
                  return CircularProgressIndicator();
                } else if (schoolController.events.isEmpty) {
                  return Text('No events found');
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: schoolController.events.length,
                    itemBuilder: (context, index) {
                      final event = schoolController.events[index];
                      return ListTile(
                        title: Text(event.title),
                        subtitle: Text(event.date),
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SchoolController extends GetxController {
  final RxBool isLoading = false.obs;
  final RxList<Event> events = <Event>[].obs;

  void fetchEvents() async {
    isLoading.value = true;
    // Simulating API call delay
    await Future.delayed(Duration(seconds: 2));
    // Fetch events from API or other data source
    events.clear();
    events.addAll([
      Event('School Picnic', '2024-02-10'),
      Event('Science Exhibition', '2024-02-15'),
      Event('Parent-Teacher Meeting', '2024-02-20'),
    ]);
    isLoading.value = false;
  }
}

class Event {
  final String title;
  final String date;

  Event(this.title, this.date);
}