import 'package:flutter/material.dart';

import './search_bar.dart';

class CashAdvancedList extends StatefulWidget {
  @override
  _CashAdvancedListState createState() => _CashAdvancedListState();
}

class _CashAdvancedListState extends State<CashAdvancedList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                'Cash Advanced',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 140,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 3,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/face.png'),
                              radius: 35,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Eframe Calaguas',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Date filed: 02-05-2021',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Text(
                                'PHP 12,000.00',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
