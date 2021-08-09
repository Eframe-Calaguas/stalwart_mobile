import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import './widgets/login.dart';
import './widgets/history/history.dart';
import './widgets/reimbursement/reimbursement_list.dart';
import './widgets/cash_advanced/cash_advanced_list.dart';
import './widgets/liquidation/liquidation_list.dart';
import './widgets/dashboard/dashboard.dart';
import './widgets/dashboard/navigations.dart';
import './widgets/user_profile/user_profile.dart';
import './widgets/user_profile/reset_password.dart';
import './widgets/approve_modal.dart';
import './widgets/reject_modal.dart';

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
    return SafeArea(
      child: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF1F1F1),
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
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ],
                    )),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'USER PROFILE',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfile()),
                  );
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.logout_outlined,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'LOGOUT',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
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
          height: MediaQuery.of(context).size.height * 0.11,
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
      ),
    );
  }
}

class CashAdvancedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: CashAdvancedList());
  }
}

class LiquidationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Liquidation());
  }
}

class ReimbursementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Reimbursement());
  }
}

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: History());
  }
}

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ResetPassword());
  }
}

class ApproveModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ConfirmationModal());
  }
}

class RejectModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: RejectConfirmationModal());
  }
}
