import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HexColor.dart';

class CreateNewFile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CreateNewFileState();
  }
}

class CreateNewFileState extends State<CreateNewFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Folder"),
          backgroundColor: HexColor("#344E93"),
        ),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
                hintText: 'Enter Title',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Description',
                hintText: 'Enter Description',
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: EdgeInsets.all(15),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: HexColor("#EEAA7B"),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                "Save",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {})),
                  )
                ],
              )
            ],
          )
        ]));
  }
}
