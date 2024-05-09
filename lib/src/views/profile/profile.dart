import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/a.jpg',
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text('Abdiriza Abdillahi Yusuf'),
              SizedBox(
                height: 12,
              ),
              Text('129920'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Column(
                      children: [Text('Class'), Text('F4')],
                    ),
                    Spacer(),
                    Column(
                      children: [Text('Status'), Text('Active')],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Personal information')),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Text(
                              'Gender',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Text('Male',style: TextStyle(fontSize: 16),)
                        ],
                      ),
                      
                      
                    ),
                    
                    
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Text(
                              'Place of birth',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('Jigjiga',style: TextStyle(fontSize: 16),),
                          )
                        ],
                      ),
                      
                      
                    ),
                    
                    
                  ),
                   Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Text(
                              'Address',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('Blacksea',style: TextStyle(fontSize: 16),),
                          )
                        ],
                      ),
                      
                      
                    ),
                    
                    
                  ),
                   Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Text(
                              'Mother name',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('Faaduma Mohamed Hassan',style: TextStyle(fontSize: 16),),
                          )
                        ],
                      ),
                      
                      
                    ),
                    
                    
                  ),
                   Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Text(
                              '',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('Jigjiga',style: TextStyle(fontSize: 16),),
                          )
                        ],
                      ),
                      
                      
                    ),
                    
                    
                  ),
                    Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Contact information')),
                  ),
                ],
              ),
               Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Text(
                            'Telephone',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text('611522825',style: TextStyle(fontSize: 16),),
                        )
                      ],
                    ),
                    
                    
                  ),
                  
                  
                ),
                 Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Text(
                          'Emergency Phone',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text('611522825',style: TextStyle(fontSize: 16),),
                        )
                      ],
                    ),
                    
                    
                  ),
                  
                  
                ),
                  
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
