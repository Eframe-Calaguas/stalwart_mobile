import 'package:flutter/material.dart';

class CashAdvancedList extends StatefulWidget {
  @override
  _CashAdvancedListState createState() => _CashAdvancedListState();
}

class _CashAdvancedListState extends State<CashAdvancedList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Text(
          'Cash Advanced',
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
}
