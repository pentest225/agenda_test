
import './data.dart';
import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  var jourData = <String>["Lundi"];
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    AppBar myAppBar = AppBar(
      title: Text("Agenda"),
    );
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
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
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
            padding: const EdgeInsets.only(bottom: 10, top: 10),
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
        //   Padding(
        //     padding: const EdgeInsets.only(
        //       left: 5,
        //       right: 5,
        //       top: 5,
        //     ),
        //     child: Container(
        //       width: MediaQuery.of(context).size.width,
        //       height: 500,
        //       child: PageView(
        //         children: <Widget>[
        //           Container(
        //             child: GridView.builder(
        //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //                   crossAxisCount: 7,
        //                   childAspectRatio: 1 / 1.8,
        //                 ),
        //                 itemCount: jourData.length,
        //                 itemBuilder: (context, i) {
        //                   return DateA(
        //                     jour: jourData[i]["jour"],
        //                   );
        //                 }),
        //           ),
        //           Container(
        //             child: GridView.builder(
        //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //                   crossAxisCount: 7,
        //                   childAspectRatio: 1 / 1.8,
        //                 ),
        //                 itemCount: jourData.length,
        //                 itemBuilder: (context, i) {
        //                   return DateA(
        //                     jour: jourData[i]["jour"],
        //                   );
        //                 }),
        //           ),
        //           Container(
        //             child: GridView.builder(
        //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //                   crossAxisCount: 7,
        //                   childAspectRatio: 1 / 1.8,
        //                 ),
        //                 itemCount: jourData.length,
        //                 itemBuilder: (context, i) {
        //                   return DateA(
        //                     jour: jourData[i]["jour"],
        //                   );
        //                 }),
        //           ),
        //           Container(
        //             child: GridView.builder(
        //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //                   crossAxisCount: 7,
        //                   childAspectRatio: 1 / 1.8,
        //                 ),
        //                 itemCount: jourData.length,
        //                 itemBuilder: (context, i) {
        //                   return DateA(
        //                     jour: jourData[i]["jour"],
        //                   );
        //                 }),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
         ],
      ),
    );
  }
}
