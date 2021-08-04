import 'package:flutter/material.dart';

import 'cash_advanced_history.dart';
import 'liquidation_history.dart';
import 'reimbursement_history.dart';

class History extends StatefulWidget {
  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  String selectedValue = 'Select';
  String selectedStatus = 'Select';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          // width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'History',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2.0,
                        style: BorderStyle.solid,
                        color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: selectedValue,
                    icon: Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.blue,
                    ),
                    onChanged: (String? newvalue) {
                      setState(() {
                        selectedValue = newvalue!;
                      });
                    },
                    items: <String>[
                      'Select',
                      'Cash Advanced',
                      'Liquidation',
                      'Reimbursement',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 18, color: Colors.blue),
                          ));
                    }).toList(),
                  ),
                )),

            // approved and rejected history
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 2.0, style: BorderStyle.solid, color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: selectedStatus,
                  icon: Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.blue,
                  ),
                  onChanged: (String? newvalue) {
                    setState(() {
                      selectedStatus = newvalue!;
                    });
                  },
                  items: <String>[
                    'Select',
                    'Approved',
                    'Rejected',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 18, color: Colors.blue),
                        ));
                  }).toList(),
                ),
              ),
            ),
            Column(
              children: [
                if (selectedValue == 'Select')
                  Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Text(
                        'Please choose to show the history',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                if (selectedValue == 'Cash Advanced')
                  Container(
                    height: 520,
                    child: CashAdvancedHistory(),
                  ),
                if (selectedValue == 'Liquidation')
                  Container(
                    height: 520,
                    child: LiquidationHistory(),
                  ),
                if (selectedValue == 'Reimbursement')
                  Container(
                    height: 520,
                    child: ReimbursementHistory(),
                  ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
