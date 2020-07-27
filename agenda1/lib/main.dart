import 'package:agenda1/Screen/dayFormat.dart';
import 'package:agenda1/Screen/monthFormat.dart';
import 'package:flutter/material.dart';
import 'package:date_util/date_util.dart';
import './Screen/monthFormat.dart';
import './Screen/onTapDay.dart';
import './Sydpage/onTapWeek.dart';
import './DomiPage/domi.dart';
import 'package:provider/provider.dart';
import './Providers/CoursProvider.dart';
void main() {
  // SyncfusionLicense.registerLicense(null);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CoursProvider()),
      ],
      child: MyApp(),
    ),
  );
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
