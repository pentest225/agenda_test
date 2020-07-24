import 'package:agenda1/Screen/dayFormat.dart';
import 'package:agenda1/Screen/monthFormat.dart';
import 'package:flutter/material.dart';
import 'package:date_util/date_util.dart';
import './Screen/monthFormat.dart';
import './Screen/onTapDay.dart';
import './Sydpage/onTapWeek.dart';
import './DomiPage/domi.dart';
void main() {
  // SyncfusionLicense.registerLicense(null);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar Demo',
      home: MonthFormat(),
      initialRoute: MonthFormat.routeName,
      routes: {
        DayListe.routeName:(context)=>DayListe(),
        MonthFormat.routeName:(context)=>MonthFormat(),
        DayFormat.routeName:(context)=>DayFormat(),
        OnTapWeek.routeName:(context)=>OnTapWeek(),
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';
// import 'package:syncfusion_flutter_core/core.dart';

// void main() {
//   // Register your license here
//   SyncfusionLicense.registerLicense(null);
//   return runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: 'Calendar Demo', home: MyHomePage());
//   }
// }

// class MyHomePage extends StatefulWidget {
//   // ignore: prefer_const_constructors_in_immutables
//   MyHomePage({Key key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Meeting> meetings;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SfCalendar(
//       view: CalendarView.schedule,
//       dataSource: MeetingDataSource(_getDataSource()),
//       // by default the month appointment display mode set as Indicator, we can
//       // change the display mode as appointment using the appointment display mode
//       // property
//       monthViewSettings: MonthViewSettings(
//           appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
//     ));
//   }

//   List<Meeting> _getDataSource() {
//     meetings = <Meeting>[];
//     final DateTime today = DateTime.now();
//     final DateTime startTime =
//         DateTime(today.year, today.month, today.day, 9, 0, 0);
//     final DateTime endTime = startTime.add(const Duration(days: 2));
//     meetings.add(Meeting(
//         'Conference', startTime, endTime, const Color(0xFF0F8644), false));
//     return meetings;
//   }
// }

// class MeetingDataSource extends CalendarDataSource {
  
//   MeetingDataSource(List<Meeting> source) {
//     appointments = source;
//   }

//   @override
//   DateTime getStartTime(int index) {
//     return appointments[index].from;
//   }

//   @override
//   DateTime getEndTime(int index) {
//     return appointments[index].to;
//   }

//   @override
//   String getSubject(int index) {
//     return appointments[index].eventName;
//   }

//   @override
//   Color getColor(int index) {
//     return appointments[index].background;
//   }

//   @override
//   bool isAllDay(int index) {
//     return appointments[index].isAllDay;
//   }
// }

// class Meeting {
//   Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

//   String eventName;
//   DateTime from;
//   DateTime to;
//   Color background;
//   bool isAllDay;
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => MyAppState();
// }

// class MyAppState extends State<MyApp> {
//   GlobalKey<State> key = GlobalKey();

//   double fabOpacity = 1.0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Scrolling."),
//         ),
//         body: NotificationListener<ScrollNotification>(
//           child: ListView(
//             itemExtent: 100.0,
//             children: [
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               MyObservableWidget(key: key),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder(),
//               ContainerWithBorder()
//             ],
//           ),
//           onNotification: (ScrollNotification scroll) {
//             var currentContext = key.currentContext;
//             if (currentContext == null) return false;

//             var renderObject = currentContext.findRenderObject();
//             RenderAbstractViewport viewport = RenderAbstractViewport.of(renderObject);
//             var offsetToRevealBottom = viewport.getOffsetToReveal(renderObject, 1.0);
//             var offsetToRevealTop = viewport.getOffsetToReveal(renderObject, 0.0);
//             print("@@@@@@@@ Ofset Bottom ${offsetToRevealBottom.offset}");
//             print("@@@@@@@@ Ofset Top ${offsetToRevealTop.offset}");
//             print("@@@@@@@@@@ Scroll ${scroll.metrics.pixels}");
//             if (offsetToRevealBottom.offset > scroll.metrics.pixels ||
//                 scroll.metrics.pixels > offsetToRevealTop.offset) {
//               if (fabOpacity != 0.0) {
//                 setState(() {
//                   fabOpacity = 0.0;
//                 });
//               }
//             } else {
//               if (fabOpacity == 0.0) {
//                 setState(() {
//                   fabOpacity = 1.0;
//                 });
//               }
//             }
//             return false;
//           },
//         ),
//         floatingActionButton: Opacity(
//           opacity: fabOpacity,
//           child: FloatingActionButton(
//             onPressed: () {
//               print("YAY");
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyObservableWidget extends StatefulWidget {
//   const MyObservableWidget({Key key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => MyObservableWidgetState();
// }

// class MyObservableWidgetState extends State<MyObservableWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(height: 100.0, color: Colors.green);
//   }
// }

// class ContainerWithBorder extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(border: Border.all(), color: Colors.grey),
//     );
//   }
// }
