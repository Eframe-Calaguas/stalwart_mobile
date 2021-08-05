import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../loading_screen.dart';
import 'package:http/http.dart' as http;

class ReimbursementHistory extends StatefulWidget {
  @override
  State<ReimbursementHistory> createState() => _ReimbursementHistoryState();
}

class _ReimbursementHistoryState extends State<ReimbursementHistory> {
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
      body: Container(
        child: getBody(),
      ),
    );
  }

  Widget getBody() {
    if (users.length == 0) {
      return LoadingScreen();
    } else {
      return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return getCard(users[index]);
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
          onTap: () {},
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
