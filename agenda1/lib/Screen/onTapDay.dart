import 'dart:math';

import 'package:agenda1/Widgets/DayCard.dart';
import 'package:agenda1/Widgets/ProgrammeCard.dart';
import 'package:flutter/material.dart';
import '../Widgets/CircleDayDate.dart';
import '../Services/CalendarServices.dart';
import 'package:indexed_list_view/indexed_list_view.dart';


class DayListe extends StatefulWidget {
  static const routeName = "SingleAgendat";
  @override
  _DayListeState createState() => _DayListeState();
}

class _DayListeState extends State<DayListe> {
  static IndexedScrollController controller = IndexedScrollController(initialIndex: 75);

  CalendarServices myService = CalendarServices();
  List<DateTime> allDaysOfMonth = [];
  DateTime paramDate ;
  @override
  Widget build(BuildContext context) {
    
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    Map<String,dynamic> myArg = ModalRoute.of(context).settings.arguments;
    paramDate = myArg["date"];
    print('@@@@@@@@@@ MY Param ${paramDate}');
    allDaysOfMonth = myService.generateAgendat(paramDate);
    controller = IndexedScrollController(
    initialIndex: paramDate.day,
    initialScrollOffset : 30.0
  );
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            child: IndexedListView.builder(
              controller: controller,
              itemBuilder: itemBuilder(),
            ),
          ),
          Container(height: 3.0, color: Colors.black),
          Container(
            color: Colors.grey[800],
            child: Column(
              children: [
                // ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button("jumpToIndex(-42)", () => controller.jumpToIndex(-42)),
                    button("jumpToIndex(750000)", () => controller.jumpToIndex(750000)),
                  ],
                ),
                // ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button("animateToIndex(-42)", () => controller.animateToIndex(-42)),
                    button("animateToIndex(750000)", () => controller.animateToIndex(750000)),
                  ],
                ),
                // ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button("jumpTo(-15)", () => controller.jumpTo(-15)),
                    button("jumpTo(0)", () => controller.jumpTo(0)),
                    button("jumpTo(50)", () => controller.jumpTo(50)),
                  ],
                ),
                // ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button("animateTo(-30)", () => controller.animateTo(-30)),
                    button("animateTo(50)", () => controller.animateTo(50)),
                  ],
                ),
                // ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button("jumpToRelative(-250)", () => controller.jumpToRelative(-250)),
                    button("jumpToRelative(40)", () => controller.jumpToRelative(40)),
                  ],
                ),
                // ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button("animateToRelative(-250)", () => controller.animateToRelative(-250)),
                    button("animateToRelative(40)", () => controller.animateToRelative(40)),
                  ],
                ),
              ],
            ),
          ),
        ], )
    );
  }
   Widget button(String text, VoidCallback function) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: RawMaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: const EdgeInsets.all(10.0),
          fillColor: Colors.blue,
          constraints: const BoxConstraints(minWidth: 88.0, minHeight: 30.0),
          child: Text(text, style: TextStyle(fontSize: 12)),
          onPressed: function,
        ),
      );

  Function itemBuilder() {
    //
    final List<double> heights =
        new List<double>.generate(527, (i) => Random().nextInt(200).toDouble() + 30.0);

    return (BuildContext context, int index) {
      //
      return Card(
        child: Container(
          height: heights[index % 527],
          color: (index == 0) ? Colors.red : Colors.green,
          child: Center(child: Text('ITEM $index')),
        ),
      );
    };
  }

  // Container(
  //       width: MediaQuery.of(context).size.width,
  //       child: Column(children: <Widget>[
  //         Container(
  //           // color: Colors.red,
  //           height: deviceHeight * .1,
  //           padding: EdgeInsets.only(top: 30, left: 20, right: 20),
  //           width: MediaQuery.of(context).size.width,
  //           alignment: Alignment.center,
  //           child: Row(
  //             children: <Widget>[
  //               Icon(Icons.menu, color: Colors.black, size: 30),
  //               SizedBox(width: 20),
  //               Text(
  //                 myService.strMonth(paramDate),
  //                 style: TextStyle(color: Colors.black, fontSize: 20),
  //               ),
  //               Icon(
  //                 Icons.arrow_drop_down,
  //                 color: Colors.black,
  //               ),
  //               Expanded(child: Row()),
  //               Icon(
  //                 Icons.calendar_today,
  //                 color: Colors.black,
  //               ),
  //               SizedBox(width: 10),
  //               Icon(
  //                 Icons.more_vert,
  //                 color: Colors.black,
  //               ),
  //             ],
  //           ),
  //         ),
  //         Divider(),
  //         Container(
  //           height: MediaQuery.of(context).size.height / 1.17,
  //           child: IndexedListView.builder(
  //             itemBuilder: (context, int index){
  //               return DayCard(allDaysOfMonth[index]);
  //             },
  //             controller: controller,
              
  //           ),
  //         )
  //       ]),
  //     ),
}
