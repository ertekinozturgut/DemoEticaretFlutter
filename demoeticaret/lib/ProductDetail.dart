import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class ProductDetail extends StatelessWidget {
  int productId;
  int customerId;

  @override
  Widget build(BuildContext context) {
    double carouselimgwidth = MediaQuery.of(context).size.width / 3.6;
    return Material(

      type: MaterialType.transparency,
      child: Column(
          children: <Widget>[
            Stack(

              children: <Widget>[
                //Arka plan
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                ),

                //Ürün Resmi
                Positioned(
                  top: 0,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black45,
                                blurRadius: 30.0,
                                offset: Offset(20.0, -20.0))
                          ],
                        ),
                        child: Image(
                          image: AssetImage("assets/imgmedic.jpg"),
                          width: MediaQuery.of(context).size.width,
                          height: 280,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Container(
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),

                //appbar
                GradientAppBar(
                  actions: <Widget>[
                    FlatButton.icon(onPressed: (){}
                    , icon: Icon(Icons.shopping_basket,color: Colors.white,), label: Text(""))
                  ],
                  title: Text('Ürün Detayı'),
                  backgroundColorStart:Colors.blue,
                  backgroundColorEnd: Colors.green,
                  centerTitle: true,
                ),
               Positioned(
                 top: 180,
                 left: 0,
                 height:700,
                 width: MediaQuery.of(context).size.width,
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height,

                   child:Container(
                     child: ListView(
                       scrollDirection: Axis.vertical,
                       children: <Widget>[

                         //Ürün kısa bilgileri
                         Container(

                           width: MediaQuery.of(context).size.width,
                           height: 140,
                           child: Container(
                             margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                             padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(12),
                               boxShadow: <BoxShadow>[
                                 BoxShadow(
                                     color: Colors.black45,
                                     blurRadius: 15.0,
                                     offset: Offset(0.0, 3))
                               ],
                               border: Border.all(
                                   color: Colors.white, width: 2, style: BorderStyle.solid),
                             ),
                             child: Column(
                               children: <Widget>[
                                 Row(
                                   children: <Widget>[
                                     Container(
                                       padding: EdgeInsets.all(4),
                                       margin: EdgeInsets.only(top: 4),
                                       child: AutoSizeText(
                                         "Ürün Adı Buraya Gelecek",
                                         style: TextStyle(color: Colors.green),
                                         minFontSize: 20.0,
                                         maxFontSize: 32.0,
                                         maxLines: 2,
                                       ),
                                     ),
                                     Spacer(),
                                     Container(
                                       decoration: BoxDecoration(
                                         //border: Border.all(color: Colors.),

                                           color: Colors.blue,
                                           border: Border.all(color: Colors.transparent,width: 1,style: BorderStyle.solid),
                                           borderRadius: BorderRadius.circular(30)
                                       ),

                                       padding: EdgeInsets.all(4),
                                       margin: EdgeInsets.only(top: 4),
                                       child: AutoSizeText(
                                         " 150 TL ",
                                         minFontSize: 16,
                                         maxFontSize: 20,
                                         maxLines: 1,
                                         style: TextStyle(color: Colors.white,),
                                       ),
                                     ),
                                   ],
                                 ),
                                 Spacer(),
                                 Row(
                                   children: <Widget>[
                                     Container(
                                       padding: EdgeInsets.all(4),
                                       margin: EdgeInsets.only(bottom: 10),
                                       child: AutoSizeText(
                                         "Uzun ürün açıklaması buraya yazılacak",
                                         maxLines: 2,
                                         minFontSize: 15,
                                         maxFontSize: 24,
                                       ),
                                     ),
                                   ],
                                 ),
                               ],
                             ),
                           ),
                         ),

                         //Ürün küçük görselleri
                         Container(

                           width: MediaQuery.of(context).size.width,
                           height: 130,
                           child: Container(
                             margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                             padding: EdgeInsets.only(left: 5, right: 5),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(12),
                               boxShadow: <BoxShadow>[
                                 BoxShadow(
                                   color: Colors.black38,
                                   blurRadius: 12,
                                   offset: Offset(3, 3),
                                 ),
                               ],
                               border: Border.all(
                                   color: Colors.white, width: 2, style: BorderStyle.solid),
                             ),
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
                                   margin:
                                   EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                                   width: carouselimgwidth,
                                   height: 150,
                                   child: Column(
                                     children: <Widget>[
                                       Container(
                                         padding: EdgeInsets.all(2),
                                         alignment: Alignment(-1, -1),
                                         child: Icon(
                                           Icons.star_border,
                                           color: Colors.yellow[700],
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
                                   margin:
                                   EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                                   width: carouselimgwidth,
                                   height: 150,
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
                                   margin:
                                   EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                                   width: carouselimgwidth,
                                   height: 150,
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
                                   margin:
                                   EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                                   width: carouselimgwidth,
                                   height: 150,
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
                                   margin:
                                   EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                                   width: carouselimgwidth,
                                   height: 150,
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
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),

                         //Ürün açıklama ve satın alma
                         Container(

                           width: MediaQuery.of(context).size.width,
                           height: 300,
                           child: Container(
                             child: Container(
                               margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
                               padding:
                               EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 shape: BoxShape.rectangle,
                                 borderRadius: BorderRadius.circular(12),
                                 boxShadow: <BoxShadow>[
                                   BoxShadow(
                                     color: Colors.black38,
                                     blurRadius: 12,
                                     offset: Offset(3, 3),
                                   ),
                                 ],
                                 border: Border.all(
                                     color: Colors.white, width: 2, style: BorderStyle.solid),
                               ),

                               child: ListView(
                                 scrollDirection: Axis.vertical,
                                 children: <Widget>[
                                   Container(
                                     alignment: Alignment.center,

                                     child: AutoSizeText(
                                       "A product detail page (PDP) is a web page on an eCommerce site that presents a description about a "
                                           "specific product in view. The details displayed often include size, color, price, "
                                           "shipping information, reviews, and other relevant information customers may "
                                           " to know before making a purchase."
                                           "A product detail page (PDP) is a web page on an eCommerce site"
                                           " that presents a description about a specific product in view. "
                                           "The details displayed often include size, color, price, shipping.",
                                       minFontSize: 16.0,
                                       maxFontSize: 22.0,
                                     ),
                                   ),


                                 ],
                               ),

                             ),

                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Row(
                               children: <Widget>[
                                 Row(
                                   children: <Widget>[
                                     Container(
                                       margin: EdgeInsets.only(left: 20),
                                       child: Row(
                                         children: <Widget>[
                                           Container(
                                             color: Colors.blue,
                                             child: IconButton(

                                               color: Colors.blue,
                                               onPressed: () {},
                                               icon: Icon(
                                                 Icons.remove,
                                                 color: Colors.white,
                                                 size: 30,
                                               ),
                                             ),
                                           ),
                                           Container(
                                               padding: EdgeInsets.all(10),
                                               child: Text(
                                                 "1",
                                                 style: TextStyle(
                                                     fontSize: 20, color: Colors.blue),
                                               )),
                                           Container(
                                             color: Colors.blue,
                                             child: IconButton(
                                               color: Colors.blue,
                                               onPressed: () {},
                                               icon: Icon(
                                                 Icons.add,
                                                 color: Colors.white,
                                                 size: 30,
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                     ),

                                     Container(
                                       margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/6.5),

                                     ),
                                     Container(
                                       margin: EdgeInsets.only(right: 10),
                                       padding: EdgeInsets.all(10),
                                       width: MediaQuery.of(context).size.width / 2,
                                       height: 70,
                                       child: RaisedButton.icon(
                                         onPressed: () {},
                                         icon: Icon(
                                           Icons.shopping_basket,
                                           size: 24,
                                           color: Colors.white,
                                         ),
                                         label: Text(
                                           "Sepete Ekle",
                                           style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 16,
                                             fontWeight: FontWeight.w700,
                                           ),
                                         ),
                                         color: Colors.red[800],
                                       ),
                                     ),
                                   ],
                                 ),
                               ],
                             )
                           ],
                         ),

                       ],
                     ),
                   ),
                 ) ,
               ),




                    ],
                  ),

              ],



)

    );
  }

}
