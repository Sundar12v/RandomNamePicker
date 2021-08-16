import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HexColor.dart';

class NameList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NameListState();
  }
}

class NameListState extends State<NameList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Name List"),
        backgroundColor: HexColor("#344E93"),
      ), floatingActionButton: new FloatingActionButton(
      onPressed: () {},
      child: new Icon(Icons.play_arrow_rounded),
      backgroundColor: HexColor("#EEAA7B"),
    ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(),
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
