import 'package:agenda1/Screen/dayFormat.dart';
import 'package:agenda1/Screen/monthFormat.dart';
import 'package:agenda1/Sydpage/onTapWeek.dart';
import 'package:flutter/material.dart';
import '../Screen/monthFormat.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                          style: TextStyle(color: Colors.yellow, fontSize: 22),
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
                  InkWell(
                    onTap: ()=>Navigator.of(context).pushNamed(DayFormat.routeName),
                    child: Row(
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
                  InkWell(
                    onTap: ()=>Navigator.of(context).pushNamed(OnTapWeek.routeName),
                      child: Row(
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
                          "Semaine",
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: ()=>Navigator.of(context).pushNamed(MonthFormat.routeName),
                      child: Row(
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
    );
  }
}
