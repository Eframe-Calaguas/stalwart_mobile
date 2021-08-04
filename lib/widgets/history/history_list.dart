import 'package:flutter/material.dart';

// import '../cash_advanced/cash_advanced_particular.dart';

class HistoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(2),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.0),
              side: BorderSide(color: Colors.blue, width: 1),
            ),
            child: InkWell(
              splashColor: Colors.blue,
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) =>
                //         CashAdvancedParticular(userImage, fullName, amountFiled),
                //   ),
                // );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(60 / 2),
                          // image: DecorationImage(
                          //   image: NetworkImage(
                          //     userImage.toString(),
                          //   ),
                          //   fit: BoxFit.cover,
                          // ),
                          // image: new DecorationImage(
                          //   image: new AssetImage('assets/man_face.jpg'),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   fullName,
                          //   style: TextStyle(
                          //       color: Colors.blue,
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 16),
                          // ),
                          Text(
                            'Eframe Calaguas',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // Text(
                          //   dateString,
                          //   style: TextStyle(
                          //     color: Color(0xFF515265),
                          //     fontSize: 13,
                          //   ),
                          // ),
                          Text(
                            'July 2, 2021',
                            style: TextStyle(
                              color: Color(0xFF515265),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Row(
                        children: [
                          // Text(
                          //   'PHP ' +
                          //       amountFiled.toString().replaceAllMapped(
                          //           new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                          //           (Match m) => "${m[1]},"),
                          //   style: TextStyle(
                          //     color: Colors.blue,
                          //     fontSize: 16,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          Text(
                            'PHP 12,000',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
