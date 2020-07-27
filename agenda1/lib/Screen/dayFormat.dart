import 'package:flutter/material.dart';
import '../Widgets/myDrawer.dart';

class DayFormat extends StatelessWidget {
  GlobalKey<ScaffoldState> _scafforfdKey = GlobalKey<ScaffoldState>();
  static const routeName = "DayFormat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafforfdKey,
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => _scafforfdKey.currentState.openDrawer()),
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
      body: Container(
          child: Column(
        children: <Widget>[],
      )),
    );
  }
}
