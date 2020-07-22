import './pagedemois.dart';
import '../Widgets/lesDates.dart';
import 'package:flutter/material.dart';
import '../Providers/data.dart';
import 'package:date_util/date_util.dart';

class PageUne extends StatefulWidget {
  static const routeName = "PageUne";
  @override
  _PageUneState createState() => _PageUneState();
}

class _PageUneState extends State<PageUne> {
  List<Widget> listMois = [];
  final today = DateTime.now();
  DateTime dateManger;
  PageController calendarController ;
  int _currentPage = 0;
  var dateUtility = DateUtil();
  @override
  void initState() {
    calendarController = PageController(initialPage: today.month -1);
    int _numberPages = 12;
    _currentPage = today.month - 1;
    dateManger = DateTime(today.year,_currentPage + 1 ,today.day);
    listMois.insert(0,Lemois(DateTime(today.year,_currentPage,today.day)));
    listMois.add(Lemois(DateTime(today.year,_currentPage+1,today.day)));
    listMois.add(Lemois(DateTime(today.year,_currentPage+2,today.day)));

    // TODO: implement initState
    super.initState();
  }
  

  // var myNumber = dateUtility.daysInMonth(7, 2020); // total jours dans le mois
  // var myCalendar = dateUtility.totalLengthOfDays(7, (myNumber - myNumber + 1), 2020);
  // total jours passe depuis une année arrigine
  // var myCalendarStr = dateUtility.day(myCalendar);
  // Le jour en Strgin
  Widget dayDard(String day, bool isCurrentDay) {
    return Text(
      "$day.",
      style: TextStyle(
        color: isCurrentDay ? Colors.blue : Colors.black,
      ),
    );
  }

  List<Widget>generateMonthcalendar(){
    

  }
  @override
  Widget build(BuildContext context) {
    
    print(today);
    print("Day week");
    print(today.weekday);
    print("Moi");
    print(today.month);
    print("Annee");
    print(today.year);
    print("String Moi");
    print(dateUtility.month(dateManger.month));
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: deviceWidth,
        child: Column(
          children: <Widget>[
            //App Barre
            Container(
              height: deviceHeight * 0.11,
              // color: Colors.red,
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              // margin: EdgeInsets.only(top: 15),
              width: deviceWidth,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Icon(Icons.menu, color: Colors.black, size: 30),
                  SizedBox(width: 20),
                  Text(
                    "${dateUtility.month(dateManger.month)}.  ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "${dateManger.year}",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
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
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  dayDard("Lun", today.weekday == 1),
                  dayDard("Mar", today.weekday == 2),
                  dayDard("Mer", today.weekday == 3),
                  dayDard("Jeu", today.weekday == 4),
                  dayDard("Ven", today.weekday == 5),
                  dayDard("Sam", today.weekday == 6),
                  dayDard("Dim", today.weekday == 7),
                ],
              ),
            ),
            Container(
              height: 570,
              child: PageView(
                controller: calendarController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int page) {
                  setState(() {
                    print("old Page $_currentPage");
                    print("New Page $page");
                    dateManger = _currentPage < page ? DateTime(today.year,_currentPage+2 ,today.day):DateTime(today.year,_currentPage,today.day);
                    _currentPage < page ? 
                    _currentPage = page;
                    print("Page");
                    print(_currentPage);
                  });
                },
                
                children: <Widget>[
                  
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
