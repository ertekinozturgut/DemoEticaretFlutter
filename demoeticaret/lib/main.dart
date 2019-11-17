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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  void initState() {
    super.initState();
    tblController = TabController(vsync: this, length: 3);
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
        items: <Widget>[
          Icon(Icons.add_shopping_cart, size: 30),
          Icon(Icons.search, size: 50),
          Icon(Icons.library_books, size: 30),
        ],
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: SideMenu(),
      body: Column(
        children: <Widget>[
          //Ana sayfa slaytı
          Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black45,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 3))
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Carousel(
                autoplay: true,
                autoplayDuration: Duration(seconds: 5),
                showIndicator: false,
                borderRadius: false,
                images: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: new AssetImage("assets/imgmedic1.jpg"),
                            fit: BoxFit.fitWidth)),
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 80),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Text(
                        "İçerik Yazısı Buraya Gelecek",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: new AssetImage("assets/imgmedic1.jpg"),
                            fit: BoxFit.fitWidth)),
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 80),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Text(
                        "İçerik Yazısı Buraya Gelecek",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: new AssetImage("assets/imgmedic1.jpg"),
                            fit: BoxFit.fitWidth)),
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 80),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Text(
                        "İçerik Yazısı Buraya Gelecek",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //3 Tab Ürün Grupları

         Container(
           margin: EdgeInsets.only(top:20),
           width: MediaQuery.of(context).size.width,
           child:TabBar(

             //isScrollable: true,
             controller: tblController,
             onTap: (index){
               var content = "";
               switch (index) {
                 case 0:
                   break;
                 case 1:
                   break;
                 case 2:
                   break;
                 default:
                   break;
               }
             },
             tabs: <Widget>[

               Tab(

                 child: Container(

                   alignment: Alignment.center,
                   constraints: BoxConstraints.expand(
                       width: MediaQuery.of(context).size.width / 3),
                   padding: EdgeInsets.only(bottom: 1),

                     child: Container(

                       child: Column(
                         children: <Widget>[
                           Icon(Icons.flash_on,color: Colors.black87,),
                           Text("Son Eklenenler",style: TextStyle(color: Colors.black87),),
                         ],
                       ),
                   ),
                 ),
               ),
               Tab(
                 child: Container(
                   alignment: Alignment.center,
                   constraints: BoxConstraints.expand(
                       width: MediaQuery.of(context).size.width / 3),
                 child: Column(
                       children: <Widget>[
                         Icon(Icons.local_offer,color: Colors.black87,),
                         Text("İndirimdekiler",style: TextStyle(color: Colors.black87),),
                       ],
                     ),
                 ),
               ),
               Tab(
                 child: Container(

                   alignment: Alignment.center,
                   constraints: BoxConstraints.expand(
                       width: MediaQuery.of(context).size.width / 3),
                   child: Column(
                       children: <Widget>[
                         Icon(Icons.favorite,color: Colors.black87,),
                         Text("Çok Satılanlar",style: TextStyle(color: Colors.black87),),
                       ],
                   ),
                 ),
               ),
             ],
           ),
         ),
          Container(
            child:
              Carousel(
                images: [

                ],
              ),
          ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
