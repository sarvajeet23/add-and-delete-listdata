// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:addanddelete/utility/custom.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  GlobalKey<State> mykey = GlobalKey();
  int selectedindex = 0;

  List userList = List.empty(growable: true);

  final TextEditingController _userId = TextEditingController();

  final TextEditingController _userlast = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            decoration: kCard,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Column(
                children: [
                  TextField(
                    controller: _userId,
                    decoration:
                        ktextFildDecoration.copyWith(labelText: "UserID"),
                  ),
                  hsize10,
                  TextField(
                    controller: _userlast,
                    decoration:
                        ktextFildDecoration.copyWith(labelText: "Subtitle"),
                  ),
                  hsize19,
                  Row(
                    children: [
                      SizedBox(
                          width: 180,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("ADD"))),
                      Spacer(),
                      SizedBox(
                          width: 180,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("ADD"))),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("FirstName"),
            subtitle: Text("LastName"),
            trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
