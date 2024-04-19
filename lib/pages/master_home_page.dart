// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:addanddelete/pages/details/details.dart';
import 'package:addanddelete/utility/custom.dart';
import 'package:flutter/material.dart';

class MasterHomePage extends StatefulWidget {
  MasterHomePage({super.key});

  @override
  State<MasterHomePage> createState() => _MasterHomePageState();
}

class _MasterHomePageState extends State<MasterHomePage> {
  TextEditingController userFirstName = TextEditingController();
  TextEditingController userLastName = TextEditingController();
  int selectedindex = 0;

  final userlist = [1];

  void addBotton() {
    setState(() {
      userlist.add(selectedindex);
    });
  }

  void removeBotton() {
    setState(() {
      userlist.remove(selectedindex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of data"),
      ),
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
                    controller: userFirstName,
                    decoration:
                        ktextFildDecoration.copyWith(labelText: "UserID"),
                  ),
                  hsize10,
                  TextField(
                    controller: userLastName,
                    decoration:
                        ktextFildDecoration.copyWith(labelText: "Subtitle"),
                  ),
                  hsize19,
                  Row(
                    children: [
                      SizedBox(
                          width: 180,
                          child: ElevatedButton(
                              onPressed: addBotton, child: Text("ADD"))),
                      Spacer(),
                      SizedBox(
                          width: 180,
                          child: ElevatedButton(
                              onPressed: removeBotton, child: Text("remove"))),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: userlist.length,
              itemBuilder: (context, index) => list(index),
            ),
          ),
        ],
      ),
    );
  }

  ListTile list(index) {
    void remove() {
      setState(() {
        userlist.removeAt(index);
      });
    }

    void add() {
      setState(() {
        userlist.add(index);
      });
    }

    return ListTile(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
      leading: SizedBox(
        width: 50,
        child: CircleAvatar(radius: 40),
      ),
      title: Text("FirstName"),
      subtitle: Text("LastName"),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(onPressed: add, icon: Icon(Icons.add)),
            IconButton(onPressed: remove, icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
