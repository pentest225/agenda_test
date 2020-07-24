// import 'package:babiflix_nan/exoAgenda/pagedemois.dart';
import './data.dart';
import './blocHour.dart';
import './blochourItem.dart';

import './lesDates1.dart';
// import 'package:babiflix_nan/exoAgenda/widget/lesRanges.dart';
import 'package:flutter/material.dart';

// import './lesDates.dart';

class OnTapWeek extends StatefulWidget {
  @override
  _OnTapWeekState createState() => _OnTapWeekState();
}

class _OnTapWeekState extends State<OnTapWeek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 0,
        child: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                color: Colors.white,
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "G",
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          ),
                          Text(
                            "o",
                            style: TextStyle(color: Colors.red, fontSize: 22),
                          ),
                          Text(
                            "o",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 22),
                          ),
                          Text(
                            "g",
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          ),
                          Text(
                            "l",
                            style: TextStyle(color: Colors.green, fontSize: 22),
                          ),
                          Text(
                            "e",
                            style: TextStyle(color: Colors.red, fontSize: 22),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Agenda",
                            style: TextStyle(color: Colors.black, fontSize: 23),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.calendar_view_day,
                              size: 19,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Planning",
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.border_bottom,
                              size: 19,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Jour",
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.border_inner,
                              size: 19,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "3 Jour",
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.border_all,
                              size: 19,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Mois",
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.search,
                              size: 19,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Recherche",
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 15, top: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              "C",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "chelida.domi@gmail.com",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 30),
                      child: Row(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.blue[400],
                              ),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 19,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Evenement",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 30),
                      child: Row(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.blue[600],
                              ),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 19,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Rappels",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Divider(),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 15, top: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              "C",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            "chelida.domi@gmail.com",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 30),
                      child: Row(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.blue[400],
                              ),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 19,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Evenement",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 30),
                      child: Row(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.blue[600],
                              ),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 19,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Rappels",
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
      
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.menu, color: Colors.black, size: 30),onPressed: ()=>Scaffold.of(context).openDrawer(),),
                  SizedBox(width: 20),
                  Text(
                    "Juillet ",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  Expanded(child: Row()),
                  Icon(
                    Icons.calendar_today,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 65),
              width: MediaQuery.of(context).size.width,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.symmetric(
                  vertical: BorderSide(width: 0.4, color: Colors.grey),
                ),
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: jourData.length,
                  itemBuilder: (context, i) {
                    return LesDates1(
                      day: jourData[i]["jour"],
                      sev: sevenDay[i]["sev"],
                    );
                  }),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 2,
                    child: Column(
                      children: <Widget>[
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
