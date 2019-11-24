import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:demoeticaret/ProductDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  TabController tblController;
  HomePage(TabController tabController){
    tblController=tabController;
  }
  @override
Widget build(BuildContext context){
    return ListView(
    scrollDirection: Axis.vertical,
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
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail()));
                },
                child:Container(
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
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
          child: TabBar(
            //isScrollable: true,
            controller: tblController,
            onTap: (index) {
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
                        Icon(
                          Icons.flash_on,
                          color: Colors.black87,
                        ),

                        AutoSizeText(
                          'Son Eklenenler',
                          style: TextStyle(color: Colors.black87),
                          maxLines: 1,
                          minFontSize: 10,
                        )
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
                      Icon(
                        Icons.local_offer,
                        color: Colors.black87,
                      ),

                      AutoSizeText(
                        'İndirimdekiler',
                        style: TextStyle(color: Colors.black87),
                        maxLines: 1,
                        minFontSize: 10,
                      )
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
                      Icon(
                        Icons.favorite,
                        color: Colors.black87,
                      ),
                      AutoSizeText(
                        'Çok Satılanlar',
                        style: TextStyle(color: Colors.black87),
                        maxLines: 1,
                        minFontSize: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
      Container(
        width: 500,
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/imgmedic3.jpg"),
                    fit: BoxFit.fitWidth),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10.0,
                      offset: Offset(0.6, 0.8))
                ],
              ),
              margin: EdgeInsets.only(left: 5, right: 5, top: 10),
              width: 150,
              height: 100,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2),
                    alignment: Alignment(-1, -1),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(left: 3, right: 5),
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[700].withOpacity(0.5)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text("Ürün Adı",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Spacer(),
                        Container(
                          child: Text("150 TL",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/imgmedic3.jpg"),
                    fit: BoxFit.fitWidth),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10.0,
                      offset: Offset(0.6, 0.8))
                ],
              ),
              margin: EdgeInsets.only(left: 5, right: 5, top: 10),
              width: 150,
              height: 100,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2),
                    alignment: Alignment(-1, -1),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(left: 3, right: 5),
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[700].withOpacity(0.5)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text("Ürün Adı",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Spacer(),
                        Container(
                          child: Text("150 TL",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/imgmedic3.jpg"),
                    fit: BoxFit.fitWidth),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10.0,
                      offset: Offset(0.6, 0.8))
                ],
              ),
              margin: EdgeInsets.only(left: 5, right: 5, top: 10),
              width: 150,
              height: 100,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2),
                    alignment: Alignment(-1, -1),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(left: 3, right: 5),
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[700].withOpacity(0.5)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text("Ürün Adı",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Spacer(),
                        Container(
                          child: Text("150 TL",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/imgmedic3.jpg"),
                    fit: BoxFit.fitWidth),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10.0,
                      offset: Offset(0.6, 0.8))
                ],
              ),
              margin: EdgeInsets.only(left: 5, right: 5, top: 10),
              width: 150,
              height: 100,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2),
                    alignment: Alignment(-1, -1),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(left: 3, right: 5),
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[700].withOpacity(0.5)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text("Ürün Adı",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Spacer(),
                        Container(
                          child: Text("150 TL",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //4 lü ürün grupları
      //Container(
      Row(
        children: <Widget>[
          Container(
            height:140,
            width: MediaQuery.of(context).size.width / 2-10,
            margin: EdgeInsets.only(left: 5,right: 5,top: 15,bottom: 5),

            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("assets/imgmedic3.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black54.withOpacity(0.6),BlendMode.darken)
              ),

            ),
            child:Container(
              alignment: Alignment(0,0),
              child: Container(
                decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(color:Colors.blueAccent,style: BorderStyle.solid,width: 2),)
                ),
                child:Text(
                  "Destek \nÜrünlerinin \nAdlarının Yeri",
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height:140,
            width: MediaQuery.of(context).size.width / 2-10,
            margin: EdgeInsets.only(left: 5,right: 5,top: 15,bottom: 5),

            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://static.toiimg.com/photo/msid-71347810/71347810.jpg?814772"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black54.withOpacity(0.6),BlendMode.darken)
              ),

            ),
            child:Container(
              alignment: Alignment(0,0),
              child: Container(
                decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(color:Colors.blueAccent,style: BorderStyle.solid,width: 2),)
                ),
                child:Text(
                  "Destek \nÜrünlerinin \nAdlarının Yeri",
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
            ),
          ),

        ],
      ),
      Row(
        children: <Widget>[
          Container(
            height:140,
            width: MediaQuery.of(context).size.width / 2-10,
            margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 15),

            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://www.acibadem.com.tr/Hayat/icerik_foto_galeri/Alzheimer-belirtisi-10-hareket-45df00a87a0141df8e7a98fdd1f079f3.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black54.withOpacity(0.6),BlendMode.darken)
              ),

            ),
            child:Container(
              alignment: Alignment(0,0),
              child: Container(
                decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(color:Colors.blueAccent,style: BorderStyle.solid,width: 2),)
                ),
                child:Text(
                  "Destek \nÜrünlerinin \nAdlarının Yeri",
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height:140,
            width: MediaQuery.of(context).size.width / 2-10,
            margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 15),

            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://www.mouthhealthy.org/~/media/MouthHealthy/Images/Articles/article_diabetes_20150625.jpg?h=300&la=en&w=450&hash=19CA6A4FF3C648EB08A43D5A1122CA642428DB4A"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black54.withOpacity(0.6),BlendMode.darken)
              ),

            ),
            child:Container(
              alignment: Alignment(0,0),
              child: Container(
                decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(color:Colors.blueAccent,style: BorderStyle.solid,width: 2),)
                ),
                child:Text(
                  "Destek \nÜrünlerinin \nAdlarının Yeri",
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
            ),
          ),

        ],
      ),
    ],
  );
}


}