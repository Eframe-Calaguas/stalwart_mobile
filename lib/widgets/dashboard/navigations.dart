import 'package:flutter/material.dart';

import '../../main.dart';

class Navigations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        padding: EdgeInsets.only(left: 5, right: 5, top: 10),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: (1 / .7),
        children: <Widget>[
          Card(
            color: Color(0xFF01CBCB),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Total Approved was clicked.');
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: const SizedBox(
                      width: 190,
                      height: 50,
                      child: Text(
                        'Total Approved',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.only(left: 100),
                    child: Text(
                      '90',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Color(0xFFFA7778),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Total Rejected was clicked');
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: const SizedBox(
                      width: 190,
                      height: 50,
                      child: Text(
                        'Total Rejected',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.only(left: 100),
                    child: Text(
                      '20',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            child: Card(
              color: Colors.white,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Cash Advanced');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CashAdvancedPage(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: const SizedBox(
                        child: Icon(
                          Icons.payments_outlined,
                          size: 50,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text(
                            'Cash Advanced',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LiquidationPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: const SizedBox(
                      child: Icon(
                        Icons.receipt_long_outlined,
                        size: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'Liquidation',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReimbursementPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: const SizedBox(
                      child: Icon(
                        Icons.request_quote_outlined,
                        size: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'Reimbursement',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HistoryPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: const SizedBox(
                      child: Icon(
                        Icons.history_outlined,
                        size: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'History',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
