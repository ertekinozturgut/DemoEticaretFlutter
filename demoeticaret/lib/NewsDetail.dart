
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsDetail extends StatelessWidget {
  //TabController tblController=TabController(vsync:this,length:3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(

              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.green
                    ],
                  )
                ),
                child: FlexibleSpaceBar(
                    centerTitle: true,

                    title: Text("Haber Başlığı",
                      style: TextStyle(
                        color: Colors.white,

                        fontSize: 20.0,
                      ),textAlign: TextAlign.left,
                    ),
                    background: Image.asset(
                      "assets/detailnews.jpg",
                      fit: BoxFit.cover,
                      color: Colors.black45.withOpacity(0.4),
                      colorBlendMode: BlendMode.darken,
                    )),
              ),
            ),
          ];
        },
        body: Container(
          padding: EdgeInsets.only(left: 5,right: 5),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 12,right: 12),
                child:SingleChildScrollView(

                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        margin: EdgeInsets.only(left: 3,right: 3,top: 3),
                        child: RaisedButton(

                          textColor: Colors.white,
                          child:  AutoSizeText(
                            'Kategori 1',
                            style: TextStyle(color: Colors.white),
                            maxLines: 1,
                            minFontSize: 10,
                          ),
                          onPressed: (){},
                          color: Colors.red[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        margin: EdgeInsets.only(left: 3,right: 3,top: 3),
                        child: RaisedButton(
                          textColor: Colors.white,
                          child: AutoSizeText(
                            'Kategori 2',
                            style: TextStyle(color: Colors.white),
                            maxLines: 1,
                            minFontSize: 10,
                          ),
                          onPressed: (){},
                          color: Colors.blue[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        margin: EdgeInsets.only(left: 3,right: 3,top: 3),
                        child: RaisedButton(
                          textColor: Colors.white,
                          child: AutoSizeText(
                            'Kategori 3',
                            style: TextStyle(color: Colors.white),
                            maxLines: 1,
                            minFontSize: 10,
                          ),
                          onPressed: (){},
                          color: Colors.green[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        margin: EdgeInsets.only(left: 3,right: 3,top: 3),
                        child: RaisedButton(

                          textColor: Colors.white,
                          child:  AutoSizeText(
                            'Kategori 1',
                            style: TextStyle(color: Colors.white),
                            maxLines: 1,
                            minFontSize: 10,
                          ),
                          onPressed: (){},
                          color: Colors.red[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        margin: EdgeInsets.only(left: 3,right: 3,top: 3),
                        child: RaisedButton(
                          textColor: Colors.white,
                          child: AutoSizeText(
                            'Kategori 2',
                            style: TextStyle(color: Colors.white),
                            maxLines: 1,
                            minFontSize: 10,
                          ),
                          onPressed: (){},
                          color: Colors.blue[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/4,
                        margin: EdgeInsets.only(left: 3,right: 3,top: 3),
                        child: RaisedButton(
                          textColor: Colors.white,
                          child: AutoSizeText(
                            'Kategori 3',
                            style: TextStyle(color: Colors.white),
                            maxLines: 1,
                            minFontSize: 10,
                          ),
                          onPressed: (){},
                          color: Colors.green[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),


              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(left: 12,right: 12,top: 12),
                  child: Text("  But I must explain to you how all this mistaken idea of "
                      "denouncing pleasure and praising pain was born and I will give you a complete account "
                      "of the system, and expound the actual teachings of the great explorer of the truth, "
                      "the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, "
                      "because it is pleasure, but because those who do not know how to pursue pleasure rationally"
                      " encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues "
                      "or desires to obtain pain of itself, because it is pain, but because occasionally circumstances"
                      " occur in which toil and pain can procure him some great pleasure. To take a trivial example, "
                      "which of us ever undertakes laborious physical exercise, except to obtain some advantage from it?"
                      " But who has any right to find fault with a man who chooses to enjoy a pleasure "
                      "that has no annoying consequences, "
                      "or one who avoids a pain that produces no resultant pleasure?",
                    textAlign: TextAlign.left,style: TextStyle(fontSize: 18,),),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 12,right: 12,top: 12),
                  child: Text("Prof. Dr. Deneme Doktor",style: TextStyle(fontSize: 16),),),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(left: 12,right: 12,top: 12),
                    child: RaisedButton(
                      onPressed: (){},
                        color: Colors.blue,
                      child:Icon(Icons.share,color: Colors.white,size: 16,)
                    ),
                  ),


                ],
              ),

            ],
          ),
        ),
      ),
    );  }
}
