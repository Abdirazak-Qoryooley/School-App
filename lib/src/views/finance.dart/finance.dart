import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Finance extends StatelessWidget {
  const Finance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finance'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/finance.png'),
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      offset: Offset(1, 10),
                      color: Colors.white,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 2),
                ]),
          ),
          ListTile(
            leading: Image.asset(
              'assets/tuition.png',
              width: 25,
            ),
            title: Text('Tuition Fee'),
            trailing: Text(
              '\$\  20',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset(
              'assets/balance.png',
              width: 25,
            ),
            title: Text('Balance'),
            trailing: Text(
              '\$\  0',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  blurRadius: 1,
                  offset: Offset(1, 10),
                  color: Colors.white,
                  blurStyle: BlurStyle.outer,
                  spreadRadius: 2),
            ]),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset(
                    'assets/tuition.png',
                    width: 25,
                  ),
                  title: Text('Finance Statements Deteils '),
                  subtitle: Text('Balance, Others charges, tuition fee'),
                  trailing: Icon(Icons.arrow_right_alt)
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/balance.png',
                    width: 25,
                  ),
                  title: Text('All Receipts'),
                  subtitle: Text('All receipts issued'),
                  trailing: Icon(Icons.arrow_right_alt)
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
