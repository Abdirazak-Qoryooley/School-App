import 'package:flutter/material.dart';

class SchoolDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      ;
    return Scaffold(
      appBar: AppBar(
        title: Text('School Description'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
      SizedBox(
        height: 100,
      ),
              Image.asset(
                    'assets/logo1.png',
                    width: 120,
                  ),
                  SizedBox(
                    height: 20,
                  ),
            Text(
              'Welcome To Al-Tanwiir School',
             style: TextStyle(
                            color: Color(0xfff00077B6),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
  'Al-Tanwiir School is a prestigious institution that provides quality education to students. With a dedicated faculty and state-of-the-art facilities, we strive to create a nurturing learning environment for our students.',
  style: TextStyle(
    fontSize: 16,
    height: 1.5, // Adjust line height for better readability
  ),
  textAlign: TextAlign.justify,
),
            ),
          ],
        ),
      ),
    );
  }
}