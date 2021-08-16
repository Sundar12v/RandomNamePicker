import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:randomnamepicker/CreateNewFile.dart';
import 'package:randomnamepicker/HexColor.dart';
import 'package:randomnamepicker/NameList.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Random Name Picker"),
        backgroundColor: HexColor("#344E93"),
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateNewFile()));
        },
        child: new Icon(Icons.add),
        backgroundColor: HexColor("#EEAA7B"),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NameList()));
              },
              child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Group",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "The fox ran over the tree and jumped over the dog and cat that were sleeping under it ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,

                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )));
        },
      ),
    );
  }
}
