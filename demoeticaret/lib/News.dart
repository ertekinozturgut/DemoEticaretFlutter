import 'package:carousel_pro/carousel_pro.dart';
import 'package:demoeticaret/NewsDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';

class News extends StatelessWidget {
  //TabController tblController=TabController(vsync:this,length:3);
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Başlık 1",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Başlık 1",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Başlık 1",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Başlık 1",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Başlık 1",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Başlık 1",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),
        ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewsDetail()),
                    );                  },
                  child:Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: new NetworkImage(
                              "https://dlior9lx1k7r2.cloudfront.net/companylogo/d3ba7c29-7a7e-4b66-891e-1cce04c4a680.jpg"),
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
                ),),

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
        Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/dc.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black45.withOpacity(0.5), BlendMode.darken),
                ),
                border: Border.all(
                    color: Colors.transparent,
                    style: BorderStyle.solid,
                    width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment(-1, -1),
                        margin: EdgeInsets.all(10),
                        child: Text("Haber Başlığı Kısaca",style: TextStyle(color:Colors.white,fontSize: 19),)
                      ),
                      Spacer(),
                      Container(
                        width: 60,

                        padding: EdgeInsets.only(left: 2),


                              

                        child:Icon(Icons.share,color: Colors.lightGreenAccent[400],size: 24,),

                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,top: 15,right: 10),
                    child: Text("Lorem ipsum is placeholder text commonly used in the graphic, print,"
                        " and publishing industries for previewing layouts and visual mockups.",maxLines: 3,style: TextStyle(
                      color: Colors.white,fontSize: 16
                    ),),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top:3,left: 10),
                        alignment: Alignment(-1,-1),
                        child:Text("10/08/2019",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child:Text("Prof. Dr. Adı Soyadı",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/dc.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black45.withOpacity(0.5), BlendMode.darken),
                ),
                border: Border.all(
                    color: Colors.transparent,
                    style: BorderStyle.solid,
                    width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          alignment: Alignment(-1, -1),
                          margin: EdgeInsets.all(10),
                          child: Text("Haber Başlığı Kısaca",style: TextStyle(color:Colors.white,fontSize: 19),)
                      ),
                      Spacer(),
                      Container(
                        width: 60,

                        padding: EdgeInsets.only(left: 2),




                        child:Icon(Icons.share,color: Colors.lightGreenAccent[400],size: 24,),

                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,top: 15,right: 10),
                    child: Text("Lorem ipsum is placeholder text commonly used in the graphic, print,"
                        " and publishing industries for previewing layouts and visual mockups.",maxLines: 3,style: TextStyle(
                        color: Colors.white,fontSize: 16
                    ),),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top:3,left: 10),
                        alignment: Alignment(-1,-1),
                        child:Text("10/08/2019",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child:Text("Prof. Dr. Adı Soyadı",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/dc.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black45.withOpacity(0.5), BlendMode.darken),
                ),
                border: Border.all(
                    color: Colors.transparent,
                    style: BorderStyle.solid,
                    width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          alignment: Alignment(-1, -1),
                          margin: EdgeInsets.all(10),
                          child: Text("Haber Başlığı Kısaca",style: TextStyle(color:Colors.white,fontSize: 19),)
                      ),
                      Spacer(),
                      Container(
                        width: 60,

                        padding: EdgeInsets.only(left: 2),




                        child:Icon(Icons.share,color: Colors.lightGreenAccent[400],size: 24,),

                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,top: 15,right: 10),
                    child: Text("Lorem ipsum is placeholder text commonly used in the graphic, print,"
                        " and publishing industries for previewing layouts and visual mockups.",maxLines: 3,style: TextStyle(
                        color: Colors.white,fontSize: 16
                    ),),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top:3,left: 10),
                        alignment: Alignment(-1,-1),
                        child:Text("10/08/2019",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child:Text("Prof. Dr. Adı Soyadı",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/dc.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black45.withOpacity(0.5), BlendMode.darken),
                ),
                border: Border.all(
                    color: Colors.transparent,
                    style: BorderStyle.solid,
                    width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          alignment: Alignment(-1, -1),
                          margin: EdgeInsets.all(10),
                          child: Text("Haber Başlığı Kısaca",style: TextStyle(color:Colors.white,fontSize: 19),)
                      ),
                      Spacer(),
                      Container(
                        width: 60,

                        padding: EdgeInsets.only(left: 2),




                        child:Icon(Icons.share,color: Colors.lightGreenAccent[400],size: 24,),

                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,top: 15,right: 10),
                    child: Text("Lorem ipsum is placeholder text commonly used in the graphic, print,"
                        " and publishing industries for previewing layouts and visual mockups.",maxLines: 3,style: TextStyle(
                        color: Colors.white,fontSize: 16
                    ),),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top:3,left: 10),
                        alignment: Alignment(-1,-1),
                        child:Text("10/08/2019",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child:Text("Prof. Dr. Adı Soyadı",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/dc.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black45.withOpacity(0.5), BlendMode.darken),
                ),
                border: Border.all(
                    color: Colors.transparent,
                    style: BorderStyle.solid,
                    width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          alignment: Alignment(-1, -1),
                          margin: EdgeInsets.all(10),
                          child: Text("Haber Başlığı Kısaca",style: TextStyle(color:Colors.white,fontSize: 19),)
                      ),
                      Spacer(),
                      Container(
                        width: 60,

                        padding: EdgeInsets.only(left: 2),




                        child:Icon(Icons.share,color: Colors.lightGreenAccent[400],size: 24,),

                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,top: 15,right: 10),
                    child: Text("Lorem ipsum is placeholder text commonly used in the graphic, print,"
                        " and publishing industries for previewing layouts and visual mockups.",maxLines: 3,style: TextStyle(
                        color: Colors.white,fontSize: 16
                    ),),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top:3,left: 10),
                        alignment: Alignment(-1,-1),
                        child:Text("10/08/2019",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child:Text("Prof. Dr. Adı Soyadı",style: TextStyle(color: Colors.white,fontSize: 14),),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ],
    );
  }
}
