import 'package:get/get.dart';

class AttendanceController extends GetxController {
  final List<String> subjects = ['Math', 'Science', 'English'];
  final RxString selectedSubject = ''.obs;
  final RxList<AttendanceData> attendanceData = <AttendanceData>[].obs;

  @override
  void onInit() {
    super.onInit();
    selectedSubject.value = subjects.first;
    updateAttendanceData();
  }

  void setSelectedSubject(String subject) {
    selectedSubject.value = subject;
    updateAttendanceData();
  }

  void updateAttendanceData() {
    // Simulating API call or data retrieval
    // Replace this with your actual data retrieval logic
    attendanceData.clear();
    attendanceData.addAll([
    AttendanceData('Present', 75, 75 / 100),
    AttendanceData('Absent', 25, 25 / 100),
    ]);
  }
}

class AttendanceData {
  final String status;
  final int count;
    final double percentage;


  AttendanceData(this.status, this.count, this.percentage);
}