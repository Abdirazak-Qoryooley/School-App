import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class about_developers extends StatelessWidget {
  const about_developers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Developers'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset(
              'assets/Klogo.png',
              width: 120,
            ),
          ),
          Text(
            'Welcome To Kaafiye Technology',
            style: TextStyle(
              color: Color(0xff07d297e),
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Text(
                'Our experienced team of developers is dedicated to delivering high-quality software solutions tailored to meet the unique needs of our clients. With a strong focus on innovation and cutting-edge technologies, we strive to exceed expectations and drive business growth for startups, small businesses, and large enterprises alike.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
           ),
        ],
      ),
    );
  }
}
