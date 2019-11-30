import 'dart:ui' as prefix0;
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:demoeticaret/News.dart';
import 'package:demoeticaret/mainWidgers/HomePage.dart';
import 'package:demoeticaret/SideMenu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final TextEditingController _filter = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Demo Eticaret'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int tabCount = 0;
  int _selectedIndex=0;
  TabController tblController;
  Widget sayfa;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    tblController = TabController(vsync: this, length: 3);
    _pageController = PageController();
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
    return MaterialApp(
      localizationsDelegates: [
        CustomLocalizationDelegate(),
      ],
      home: Scaffold(

        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.lightBlue[700],

          height: 60,
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
              if(index==1){
                showSearch(
                    context: context,delegate: DataSearch()
                );
              }
            });
          },
          items: <Widget>[
            Icon(Icons.add_shopping_cart, size: 30,color: Colors.white,),
            Icon(Icons.search, size: 50,color: Colors.white),
            Icon(Icons.library_books, size: 30,color: Colors.white),
          ],
        ),
        /*bottomNavigationBar: BottomNavyBar(
          iconSize: 50,
          selectedIndex: _selectedIndex,
          backgroundColor: Colors.blue,
          mainAxisAlignment: MainAxisAlignment.center,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds:400), curve: Curves.ease);
            if(_selectedIndex==0)
            {
              sayfa=HomePage(tblController);
            }
            if(_selectedIndex==2)
            {
              sayfa=News();
            }
          }),
          items: [

            BottomNavyBarItem(
              icon: Icon(Icons.apps),

              title: Text('Home'),
              activeColor: Colors.red,

            ),
            BottomNavyBarItem(
                icon: Icon(Icons.people),
                title: Text('Users'),
                activeColor: Colors.purpleAccent
            ),

          ],
        ),*/
        appBar: GradientAppBar(
          actions: <Widget>[
            FlatButton.icon(
              onPressed: (){
                showSearch(
                    context: context,delegate: DataSearch()
                );
              },
              icon:Icon(Icons.search,size: 28,),
              label: Text("")
              ,color: Colors.transparent,
              textColor: Colors.white,)
          ],
          title: Text('Demo E-ticaret'),
          backgroundColorStart:Colors.blue,
          backgroundColorEnd: Colors.green,
          centerTitle: true,
        ),

        drawer: SideMenu(),
        body:sayfa,
        /*body:SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: <Widget>[
            HomePage(tblController),

            News(),
          ],
        ),
      ),*/


        // This comma makes auto-formatting nicer for build methods.
      ),
    );

  }

}
class DataSearch extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){

        })] ;
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(icon: AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation,
    ), onPressed: (){
      close(context, null);
    });
  }

  @override
  Widget buildResults(BuildContext context) {

    return Center(
      child: Container(
        height: 100,
        width:100,
        child: Card(
          color: Colors.red,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }

  final aramaListesi=["Deneme", "Ürün","Pansuman Seti","Tansiyon Aleti","Şeker Ölçüm Aleti"];
  final currentList=["Tansiyon Aleti","Şeker Ölçüm Aleti"];
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList=query.isEmpty?currentList:aramaListesi.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context,index)=>ListTile(
        leading: Icon(Icons.add_box),
        title:RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0,query.length),
              style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500,
          ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color:Colors.grey,fontSize: 18)
              ),
            ]
          ),
        )),
        itemCount: suggestionList.length,
    );
  }

}
class CustomLocalizationDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  const CustomLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'en';

  @override
  Future<MaterialLocalizations> load(Locale locale) => SynchronousFuture<MaterialLocalizations>(const CustomLocalization());

  @override
  bool shouldReload(CustomLocalizationDelegate old) => false;

  @override
  String toString() => 'CustomLocalization.delegate(en_US)';
}
class CustomLocalization extends DefaultMaterialLocalizations {
  const CustomLocalization();

  @override
  String get searchFieldLabel => "My hint text";

}