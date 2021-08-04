import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:http/http.dart' as http;

import './loading_screen.dart';
import './reimbursement_receipt.dart';

class Reimbursement extends StatefulWidget {
  @override
  _Reimbursement createState() => _Reimbursement();
}

class _Reimbursement extends State<Reimbursement> {
  List users = [];

  @override
  void initState() {
    super.initState();
    this.fetchUser();
  }

  fetchUser() async {
    var url = Uri.parse("https://randomuser.me/api/?results=10");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var items = json.decode(response.body)['results'];
      setState(
        () {
          users = items;
        },
      );
    } else {
      setState(
        () {
          users = [];
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reimbursement'),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    if (users.length == 0) {
      return LoadingScreen();
    } else {
      return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Slidable(
            child: getCard(users[index]),
            actionPane: SlidableDrawerActionPane(),
            secondaryActions: [
              IconSlideAction(
                caption: 'Approve',
                color: Colors.blue,
                icon: Icons.thumb_up_alt_rounded,
              ),
              IconSlideAction(
                caption: 'Reject',
                color: Colors.red,
                icon: Icons.thumb_down_alt_rounded,
              ),
            ],
          );
        },
      );
    }
  }

  Widget getCard(item) {
    var fullName = item['name']['first'] + " " + item['name']['last'];
    var dateFiled = item['registered']['date'];
    var amountFiled = item['location']['street']['number'];
    var userImage = item['picture']['large'];
    var dateString = DateFormat.yMMMMd().format(DateTime.parse(dateFiled));

    return Container(
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
                builder: (context) => ReimbursementReceipt(
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
                                new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
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
    );
  }
}
