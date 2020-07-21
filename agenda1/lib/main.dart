import 'package:flutter/material.dart';
import 'package:date_util/date_util.dart';
import './Screen/pageUne.dart';
import './Screen/onTapDay.dart';
void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar Demo',
      home: PageUne(),
      initialRoute: PageUne.routeName,
      routes: {
        Today.routeName:(context)=>Today(),
        PageUne.routeName:(context)=>PageUne(),
      },
    );
  }
}

