import 'package:flutter/material.dart';

class SubjectSearch extends StatefulWidget {
  @override
  _SubjectSearchState createState() => _SubjectSearchState();
}

class _SubjectSearchState extends State<SubjectSearch> {
  String selectedSubject = '';
  List<String> results = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DropdownButton<String>(
            value: selectedSubject,
            onChanged: (String? newValue) {
              setState(() {
                selectedSubject = newValue!;
                // Simulate fetching results from a server based on the selected subject
                results = getResultsFromServer(selectedSubject);
              });
            },
            items: <String>['', 'Math', 'Science', 'History']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Text(
            'Results for $selectedSubject:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(results[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<String> getResultsFromServer(String subject) {
    // Replace this with your actual logic to fetch results from a server
    // This is just a placeholder
    if (subject == 'Math') {
      return ['Result 1 for Math', 'Result 2 for Math'];
    } else if (subject == 'Science') {
      return ['Result 1 for Science', 'Result 2 for Science'];
    } else if (subject == 'History') {
      return ['Result 1 for History', 'Result 2 for History'];
    } else {
      return [];
    }
  }
}