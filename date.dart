import 'package:Exame/dateA.dart';
import 'package:Exame/provider/data.dart';
import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    AppBar myAppBar = AppBar(
      title: Text("Agenda"),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Juillet",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        actions: <Widget>[
          Icon(
            Icons.calendar_today,
            color: Colors.black,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("L"),
                Text("M"),
                Text("M"),
                Text("J"),
                Text("V"),
                Text("S"),
                Text("D"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: deviceheight - myAppBar.preferredSize.height - 70,
              child: PageView(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          childAspectRatio: 1 / 1.8,
                        ),
                        itemCount: jourData.length,
                        itemBuilder: (context, i) {
                          return DateA(
                            jour: jourData[i]["jour"],
                          );
                        }),
                  ),
                  Container(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          childAspectRatio: 1 / 2,
                        ),
                        itemCount: jourData.length,
                        itemBuilder: (context, i) {
                          return DateA(
                            jour: jourData[i]["jour"],
                          );
                        }),
                  ),
                  Container(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          childAspectRatio: 1 / 2,
                        ),
                        itemCount: jourData.length,
                        itemBuilder: (context, i) {
                          return DateA(
                            jour: jourData[i]["jour"],
                          );
                        }),
                  ),
                  Container(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          childAspectRatio: 1 / 2,
                        ),
                        itemCount: jourData.length,
                        itemBuilder: (context, i) {
                          return DateA(
                            jour: jourData[i]["jour"],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
