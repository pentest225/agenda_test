import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  GlobalKey<State> key = GlobalKey();

  double fabOpacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scrolling."),
        ),
        body: NotificationListener<ScrollNotification>(
          child: ListView(
            itemExtent: 100.0,
            children: [
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              MyObservableWidget(key: key),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder(),
              ContainerWithBorder()
            ],
          ),
          onNotification: (ScrollNotification scroll) {
            var currentContext = key.currentContext;
            if (currentContext == null) return false;

            var renderObject = currentContext.findRenderObject();
            RenderAbstractViewport viewport = RenderAbstractViewport.of(renderObject);
            var offsetToRevealBottom = viewport.getOffsetToReveal(renderObject, 1.0);
            var offsetToRevealTop = viewport.getOffsetToReveal(renderObject, 0.0);
            print("@@@@@@@@ OfsetBottom ${}");
            if (offsetToRevealBottom.offset > scroll.metrics.pixels ||
                scroll.metrics.pixels > offsetToRevealTop.offset) {
              if (fabOpacity != 0.0) {
                setState(() {
                  fabOpacity = 0.0;
                });
              }
            } else {
              if (fabOpacity == 0.0) {
                setState(() {
                  fabOpacity = 1.0;
                });
              }
            }
            return false;
          },
        ),
        floatingActionButton: Opacity(
          opacity: fabOpacity,
          child: FloatingActionButton(
            onPressed: () {
              print("YAY");
            },
          ),
        ),
      ),
    );
  }
}

class MyObservableWidget extends StatefulWidget {
  const MyObservableWidget({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyObservableWidgetState();
}

class MyObservableWidgetState extends State<MyObservableWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 100.0, color: Colors.green);
  }
}

class ContainerWithBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(), color: Colors.grey),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:date_util/date_util.dart';
// import './Screen/pageUne.dart';
// import './Screen/onTapDay.dart';
// void main() {
  
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Calendar Demo',
//       home: PageUne(),
//       initialRoute: PageUne.routeName,
//       routes: {
//         DayListe.routeName:(context)=>DayListe(),
//         PageUne.routeName:(context)=>PageUne(),
//       },
//     );
//   }
// }

