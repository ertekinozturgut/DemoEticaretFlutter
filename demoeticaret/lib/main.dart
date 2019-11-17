import 'dart:ui' as prefix0;
import 'package:demoeticaret/News.dart';
import 'package:demoeticaret/mainWidgers/HomePage.dart';
import 'package:demoeticaret/SideMenu.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Demo Eticaret'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int tabCount = 0;
  TabController tblController;
  Widget sayfa;
  @override
  void initState() {
    super.initState();
    tblController = TabController(vsync: this, length: 3);
    if(tabCount==0)
      {
        sayfa=HomePage(tblController);
      }
    else if(tabCount==2)
      {
        sayfa=News();
      }
  }

  @override
  Widget build(BuildContext context) {
    //Dikey Görünüme sabitlemek için
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        onTap: (index){
          setState(() {
            if(index==0)
              {
                sayfa=HomePage(tblController);
              }
            if(index==2)
              {
                sayfa=News();
              }
          });
        },
        items: <Widget>[
          Icon(Icons.add_shopping_cart, size: 30),
          Icon(Icons.search, size: 50),
          Icon(Icons.library_books, size: 30),
        ],
      ),
      appBar: AppBar(
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){},
            icon:Icon(Icons.search,size: 28,),
            label: Text("")
          ,color: Colors.transparent,
          textColor: Colors.white,)
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: SideMenu(),
      body:sayfa,


      // This comma makes auto-formatting nicer for build methods.
    );
  }
}
