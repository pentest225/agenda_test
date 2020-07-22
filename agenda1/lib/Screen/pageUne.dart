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
  PageController calendarController;
  int _currenMonthPage = 0;
  int _currentPage = 1;
  var dateUtility = DateUtil();
  @override
  void initState() {
    calendarController = PageController(initialPage: 1);
    _currenMonthPage = today.month;
    dateManger = DateTime(today.year, _currenMonthPage);
    listMois.insert(0, Lemois(DateTime(today.year, _currenMonthPage - 1)));
    listMois.insert(1,Lemois(DateTime(today.year, _currenMonthPage)));
    listMois.insert(2,Lemois(DateTime(today.year, _currenMonthPage + 1)));

    // TODO: implement initState
    super.initState();
  }

  // var myNumber = dateUtility.daysInMonth(7, 2020); // total jours dans le mois
  // var myCalendar = dateUtility.totalLengthOfDays(7, (myNumber - myNumber + 1), 2020);
  // total jours passe depuis une année arrigine
  // var myCalendarStr = dateUtility.day(myCalendar);
  // Le jour en Strgin
  List<Widget> generateMonthcalendar() {}
  @override
  Widget build(BuildContext context) {

    // print("Day week");
    // print(today.weekday);
    // print("Moi");
    // print(today.month);
    // print("Annee");
    // print(today.year);
    // print("String Moi");
    // print(dateUtility.month(dateManger.month));
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    final appBarHeight = deviceHeight * 0.11;

    return Scaffold(
      body: Container(
        width: deviceWidth,
        child: Column(
          children: <Widget>[
            //App Barre
            Container(
              height: appBarHeight,
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
            Container(
              height: deviceHeight - appBarHeight - 20,
              child: PageView(
                controller: calendarController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int page) {
                  setState(() {
                    // print("_currenMonthPage $_currenMonthPage");
                    print("Old Page $_currentPage");
                    print("New Page $page");
                    _currentPage < page
                        ? _currenMonthPage ++
                        : _currenMonthPage --;
                    dateManger = DateTime(today.year, _currenMonthPage);//On passe au mois precedent ou suivent en fonction du sens du scroll 
                    
                    _currentPage < page
                        ? listMois.add(Lemois(dateManger))
                        : listMois.insert(1, Lemois(dateManger));
                    print("Current month pAGE $_currenMonthPage");
                    _currentPage = page;
                    // print("Page");
                    // print(_currenMonthPage);
                  });
                },
                children: listMois,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
