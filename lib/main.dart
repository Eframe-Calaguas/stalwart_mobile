import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './widgets/dashboard.dart';
import './widgets/login.dart';
import './widgets/navigations.dart';
import './widgets/cash_advanced_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'USER PROFILE',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'LOGOUT',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Dashboard(),
          Navigations(),
        ],
      ),
      bottomSheet: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/stalwart_nav_bar_logo.png',
            ),
            fit: BoxFit.contain,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}

class CashAdvancedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CashAdvancedList();
  }
}
