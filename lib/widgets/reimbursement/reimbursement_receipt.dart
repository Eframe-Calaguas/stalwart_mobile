import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import '../reimbursement/reimbursement_particular.dart';

class ReimbursementReceipt extends StatelessWidget {
  final userImage;
  final fullName;
  final amountFiled;
  final dateString;

  ReimbursementReceipt(
      this.userImage, this.fullName, this.amountFiled, this.dateString);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(150 / 2),
                          image: DecorationImage(
                            image: NetworkImage(
                              userImage,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      fullName,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Receipt',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReimbursementParticular(
                                userImage, fullName, amountFiled, dateString),
                          ),
                        );
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
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      userImage.toString(),
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    fullName,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    dateString,
                                    style: TextStyle(
                                      color: Colors.blue,
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
                                  Text(
                                    'PHP ' +
                                        amountFiled.toString().replaceAllMapped(
                                            new RegExp(
                                                r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                            (Match m) => "${m[1]},"),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
