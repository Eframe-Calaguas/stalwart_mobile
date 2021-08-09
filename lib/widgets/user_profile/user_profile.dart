import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stalwart_mobile/main.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('User Profile'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/face.png'),
                                radius: 70,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              'Eframe Calaguas',
                              style: TextStyle(
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Padding(
                              padding: EdgeInsets.zero,
                              child: Text(
                                'System Developer',
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Company I.D',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        '10738',
                        style: TextStyle(
                          color: Color(0xFF515265),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Branch Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Branch#sample',
                        style: TextStyle(
                          color: Color(0xFF515265),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Department',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'MIS',
                        style: TextStyle(
                          color: Color(0xFF515265),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sub-Department',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Web and Mobile Development',
                        style: TextStyle(
                          color: Color(0xFF515265),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Role',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Mobile Developer',
                        style: TextStyle(
                          color: Color(0xFF515265),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        '@eframecalaguas',
                        style: TextStyle(
                          color: Color(0xFF515265),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResetPasswordPage()),
                              );
                            },
                            child: Text(
                              'Reset Password',
                              style: TextStyle(fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(width: 2.0, color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
