import 'package:auto_size_text/auto_size_text.dart';
import 'package:demoeticaret/mainWidgers/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MyBasket extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return MyBasketState();
  }
}

class MyBasketState extends State<MyBasket> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: GradientAppBar(
        title: Text("Sepetim"),
        centerTitle: true,
        backgroundColorEnd: Colors.green,
        backgroundColorStart: Colors.blue,

      ),
      body:  SingleChildScrollView(
        child: Container(
          color:Colors.white,
          child: Column(
            children: <Widget>[

              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left:10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(0.1,0.3))
                    ],
                  ),

                  child: ListTile(
                    onTap: (){
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Ürün Adı",
                        desc: "Kısa ürün detayı...",
                        buttons: [
                          DialogButton(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.redo,color: Colors.white,), label: Text("Ürüne git",style: TextStyle(color: Colors.white),)),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            color: Colors.red[700],
                            child:Text("Kapat",style: TextStyle(color: Colors.white),),
                            onPressed: (){},
                            //color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                        ],
                      ).show();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(

                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black38,style: BorderStyle.solid,width: 1))
                      ),
                      child: Container(child:Image.network("http://www.dortermatbaa.com/images/spsimpleportfolio/cosmetic_medical-021/021_600x600.jpg"
                        ,fit: BoxFit.cover,)),
                    ),
                    title: Text(
                      "Ürün Adının Geleceği Yer",
                      style: TextStyle( fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Colors.black,size: 14,),
                        Text("150 TL", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))
                      ],
                    ),
                    trailing:Container(

                      child: FlatButton.icon(onPressed: (){
                        Alert(
                          content: Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text("150 TL"),
                                  margin: EdgeInsets.only(left: 10,right: 20),
                                ),

                                Container(
                                  child: IconButton(

                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    )),
                                Container(
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: "Ürün Adı",
                          buttons:<DialogButton>[
                            DialogButton(
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text("Tamamla",style: TextStyle(color: Colors.white,),),

                            ),
                            DialogButton(
                              color: Colors.red[700],
                              onPressed: (){},
                              child: Text("Ürünü Kaldır",style: TextStyle(color: Colors.white,),),

                            ),
                          ],
                          closeFunction: (){},
                          context: context,

                        ).show();
                      }, icon: Icon(Icons.edit, color: Colors.blue, size: 30.0), label: Text("")),
                    ),

                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left:10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(0.1,0.3))
                    ],
                  ),

                  child: ListTile(
                    onTap: (){
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Ürün Adı",
                        desc: "Kısa ürün detayı...",
                        buttons: [
                          DialogButton(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.redo,color: Colors.white,), label: Text("Ürüne git",style: TextStyle(color: Colors.white),)),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            color: Colors.red[700],
                            child:Text("Kapat",style: TextStyle(color: Colors.white),),
                            onPressed: (){},
                            //color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                        ],
                      ).show();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(

                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black38,style: BorderStyle.solid,width: 1))
                      ),
                      child: Container(child:Image.network("https://productimages.hepsiburada.net/s/17/1500/9001112633394.jpg"
                        ,fit: BoxFit.cover,),
                    ),
                    ),
                    title: Text(
                      "Ürün Adının Geleceği Yer",
                      style: TextStyle( fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Colors.black,size: 14,),
                        Text("150 TL", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))
                      ],
                    ),
                    trailing:Container(

                      child: FlatButton.icon(onPressed: (){
                        Alert(
                          content: Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text("150 TL"),
                                  margin: EdgeInsets.only(left: 10,right: 20),
                                ),

                                Container(
                                  child: IconButton(

                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    )),
                                Container(
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: "Ürün Adı",
                          buttons:<DialogButton>[
                            DialogButton(
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text("Tamamla",style: TextStyle(color: Colors.white,),),

                            ),
                            DialogButton(
                              color: Colors.red[700],
                              onPressed: (){},
                              child: Text("Ürünü Kaldır",style: TextStyle(color: Colors.white,),),

                            ),
                          ],
                          closeFunction: (){},
                          context: context,

                        ).show();
                      }, icon: Icon(Icons.edit, color: Colors.blue, size: 30.0), label: Text("")),
                    ),

                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left:10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(0.1,0.3))
                    ],
                  ),

                  child: ListTile(
                    onTap: (){
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Ürün Adı",
                        desc: "Kısa ürün detayı...",
                        buttons: [
                          DialogButton(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.redo,color: Colors.white,), label: Text("Ürüne git",style: TextStyle(color: Colors.white),)),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            color: Colors.red[700],
                            child:Text("Kapat",style: TextStyle(color: Colors.white),),
                            onPressed: (){},
                            //color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                        ],
                      ).show();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(

                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black38,style: BorderStyle.solid,width: 1))
                      ),
                      child: Container(child:Image.network("https://productimages.hepsiburada.net/s/7/412/9753482264626.jpg"
                        ,fit: BoxFit.cover,),
                    ),
                    ),
                    title: Text(
                      "Ürün Adının Geleceği Yer",
                      style: TextStyle( fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Colors.black,size: 14,),
                        Text("150 TL", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))
                      ],
                    ),
                    trailing:Container(

                      child: FlatButton.icon(onPressed: (){
                        Alert(
                          content: Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text("150 TL"),
                                  margin: EdgeInsets.only(left: 10,right: 20),
                                ),

                                Container(
                                  child: IconButton(

                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    )),
                                Container(
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: "Ürün Adı",
                          buttons:<DialogButton>[
                            DialogButton(
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text("Tamamla",style: TextStyle(color: Colors.white,),),

                            ),
                            DialogButton(
                              color: Colors.red[700],
                              onPressed: (){},
                              child: Text("Ürünü Kaldır",style: TextStyle(color: Colors.white,),),

                            ),
                          ],
                          closeFunction: (){},
                          context: context,

                        ).show();
                      }, icon: Icon(Icons.edit, color: Colors.blue, size: 30.0), label: Text("")),
                    ),

                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left:10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(0.1,0.3))
                    ],
                  ),

                  child: ListTile(
                    onTap: (){
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Ürün Adı",
                        desc: "Kısa ürün detayı...",
                        buttons: [
                          DialogButton(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.redo,color: Colors.white,), label: Text("Ürüne git",style: TextStyle(color: Colors.white),)),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            color: Colors.red[700],
                            child:Text("Kapat",style: TextStyle(color: Colors.white),),
                            onPressed: (){},
                            //color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                        ],
                      ).show();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(

                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black38,style: BorderStyle.solid,width: 1))
                      ),
                      child:Container(child:Image.network("https://productimages.hepsiburada.net/s/20/431/9873810522162.jpg"
                        ,fit: BoxFit.cover,),),
                    ),
                    title: Text(
                      "Ürün Adının Geleceği Yer",
                      style: TextStyle( fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Colors.black,size: 14,),
                        Text("150 TL", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))
                      ],
                    ),
                    trailing:Container(

                      child: FlatButton.icon(onPressed: (){
                        Alert(
                          content: Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text("150 TL"),
                                  margin: EdgeInsets.only(left: 10,right: 20),
                                ),

                                Container(
                                  child: IconButton(

                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    )),
                                Container(
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: "Ürün Adı",
                          buttons:<DialogButton>[
                            DialogButton(
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text("Tamamla",style: TextStyle(color: Colors.white,),),

                            ),
                            DialogButton(
                              color: Colors.red[700],
                              onPressed: (){},
                              child: Text("Ürünü Kaldır",style: TextStyle(color: Colors.white,),),

                            ),
                          ],
                          closeFunction: (){},
                          context: context,

                        ).show();
                      }, icon: Icon(Icons.edit, color: Colors.blue, size: 30.0), label: Text("")),
                    ),

                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left:10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(0.1,0.3))
                    ],
                  ),

                  child: ListTile(
                    onTap: (){
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Ürün Adı",
                        desc: "Kısa ürün detayı...",
                        buttons: [
                          DialogButton(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.redo,color: Colors.white,), label: Text("Ürüne git",style: TextStyle(color: Colors.white),)),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            color: Colors.red[700],
                            child:Text("Kapat",style: TextStyle(color: Colors.white),),
                            onPressed: (){},
                            //color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                        ],
                      ).show();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(

                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black38,style: BorderStyle.solid,width: 1))
                      ),
                      child:Container(child:Image.network("https://productimages.hepsiburada.net/s/22/432/9951530582066.jpg"
                        ,fit: BoxFit.cover,),),
                    ),
                    title: Text(
                      "Ürün Adının Geleceği Yer",
                      style: TextStyle( fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Colors.black,size: 14,),
                        Text("150 TL", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))
                      ],
                    ),
                    trailing:Container(

                      child: FlatButton.icon(onPressed: (){
                        Alert(
                          content: Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text("150 TL"),
                                  margin: EdgeInsets.only(left: 10,right: 20),
                                ),

                                Container(
                                  child: IconButton(

                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    )),
                                Container(
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: "Ürün Adı",
                          buttons:<DialogButton>[
                            DialogButton(
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text("Tamamla",style: TextStyle(color: Colors.white,),),

                            ),
                            DialogButton(
                              color: Colors.red[700],
                              onPressed: (){},
                              child: Text("Ürünü Kaldır",style: TextStyle(color: Colors.white,),),

                            ),
                          ],
                          closeFunction: (){},
                          context: context,

                        ).show();
                      }, icon: Icon(Icons.edit, color: Colors.blue, size: 30.0), label: Text("")),
                    ),

                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left:10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(0.1,0.3))
                    ],
                  ),

                  child: ListTile(
                    onTap: (){
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Ürün Adı",
                        desc: "Kısa ürün detayı...",
                        buttons: [
                          DialogButton(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.redo,color: Colors.white,), label: Text("Ürüne git",style: TextStyle(color: Colors.white),)),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            color: Colors.red[700],
                            child:Text("Kapat",style: TextStyle(color: Colors.white),),
                            onPressed: (){},
                            //color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                        ],
                      ).show();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(

                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black38,style: BorderStyle.solid,width: 1))
                      ),
                      child: Container(child:Image.network("http://www.dortermatbaa.com/images/spsimpleportfolio/cosmetic_medical-021/021_600x600.jpg"
                        ,fit: BoxFit.cover,)),
                    ),
                    title: Text(
                      "Ürün Adının Geleceği Yer",
                      style: TextStyle( fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Colors.black,size: 14,),
                        Text("150 TL", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))
                      ],
                    ),
                    trailing:Container(

                      child: FlatButton.icon(onPressed: (){
                        Alert(
                          content: Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text("150 TL"),
                                  margin: EdgeInsets.only(left: 10,right: 20),
                                ),

                                Container(
                                  child: IconButton(

                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    )),
                                Container(
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: "Ürün Adı",
                          buttons:<DialogButton>[
                            DialogButton(
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text("Tamamla",style: TextStyle(color: Colors.white,),),

                            ),
                            DialogButton(
                              color: Colors.red[700],
                              onPressed: (){},
                              child: Text("Ürünü Kaldır",style: TextStyle(color: Colors.white,),),

                            ),
                          ],
                          closeFunction: (){},
                          context: context,

                        ).show();
                      }, icon: Icon(Icons.edit, color: Colors.blue, size: 30.0), label: Text("")),
                    ),

                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left:10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(0.1,0.3))
                    ],
                  ),

                  child: ListTile(
                    onTap: (){
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Ürün Adı",
                        desc: "Kısa ürün detayı...",
                        buttons: [
                          DialogButton(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.redo,color: Colors.white,), label: Text("Ürüne git",style: TextStyle(color: Colors.white),)),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            color: Colors.red[700],
                            child:Text("Kapat",style: TextStyle(color: Colors.white),),
                            onPressed: (){},
                            //color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                        ],
                      ).show();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(

                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black38,style: BorderStyle.solid,width: 1))
                      ),
                      child: Container(child:Image.network("https://productimages.hepsiburada.net/s/17/1500/9001112633394.jpg"
                        ,fit: BoxFit.cover,),
                      ),
                    ),
                    title: Text(
                      "Ürün Adının Geleceği Yer",
                      style: TextStyle( fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Colors.black,size: 14,),
                        Text("150 TL", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))
                      ],
                    ),
                    trailing:Container(

                      child: FlatButton.icon(onPressed: (){
                        Alert(
                          content: Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text("150 TL"),
                                  margin: EdgeInsets.only(left: 10,right: 20),
                                ),

                                Container(
                                  child: IconButton(

                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    )),
                                Container(
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: "Ürün Adı",
                          buttons:<DialogButton>[
                            DialogButton(
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text("Tamamla",style: TextStyle(color: Colors.white,),),

                            ),
                            DialogButton(
                              color: Colors.red[700],
                              onPressed: (){},
                              child: Text("Ürünü Kaldır",style: TextStyle(color: Colors.white,),),

                            ),
                          ],
                          closeFunction: (){},
                          context: context,

                        ).show();
                      }, icon: Icon(Icons.edit, color: Colors.blue, size: 30.0), label: Text("")),
                    ),

                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left:10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(0.1,0.3))
                    ],
                  ),

                  child: ListTile(
                    onTap: (){
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Ürün Adı",
                        desc: "Kısa ürün detayı...",
                        buttons: [
                          DialogButton(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.redo,color: Colors.white,), label: Text("Ürüne git",style: TextStyle(color: Colors.white),)),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            color: Colors.red[700],
                            child:Text("Kapat",style: TextStyle(color: Colors.white),),
                            onPressed: (){},
                            //color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                        ],
                      ).show();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(

                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black38,style: BorderStyle.solid,width: 1))
                      ),
                      child: Container(child:Image.network("https://productimages.hepsiburada.net/s/7/412/9753482264626.jpg"
                        ,fit: BoxFit.cover,),
                      ),
                    ),
                    title: Text(
                      "Ürün Adının Geleceği Yer",
                      style: TextStyle( fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Colors.black,size: 14,),
                        Text("150 TL", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))
                      ],
                    ),
                    trailing:Container(

                      child: FlatButton.icon(onPressed: (){
                        Alert(
                          content: Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text("150 TL"),
                                  margin: EdgeInsets.only(left: 10,right: 20),
                                ),

                                Container(
                                  child: IconButton(

                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    )),
                                Container(
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: "Ürün Adı",
                          buttons:<DialogButton>[
                            DialogButton(
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text("Tamamla",style: TextStyle(color: Colors.white,),),

                            ),
                            DialogButton(
                              color: Colors.red[700],
                              onPressed: (){},
                              child: Text("Ürünü Kaldır",style: TextStyle(color: Colors.white,),),

                            ),
                          ],
                          closeFunction: (){},
                          context: context,

                        ).show();
                      }, icon: Icon(Icons.edit, color: Colors.blue, size: 30.0), label: Text("")),
                    ),

                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left:10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(0.1,0.3))
                    ],
                  ),

                  child: ListTile(
                    onTap: (){
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Ürün Adı",
                        desc: "Kısa ürün detayı...",
                        buttons: [
                          DialogButton(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.redo,color: Colors.white,), label: Text("Ürüne git",style: TextStyle(color: Colors.white),)),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            color: Colors.red[700],
                            child:Text("Kapat",style: TextStyle(color: Colors.white),),
                            onPressed: (){},
                            //color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                        ],
                      ).show();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(

                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black38,style: BorderStyle.solid,width: 1))
                      ),
                      child:Container(child:Image.network("https://productimages.hepsiburada.net/s/20/431/9873810522162.jpg"
                        ,fit: BoxFit.cover,),),
                    ),
                    title: Text(
                      "Ürün Adının Geleceği Yer",
                      style: TextStyle( fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Colors.black,size: 14,),
                        Text("150 TL", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))
                      ],
                    ),
                    trailing:Container(

                      child: FlatButton.icon(onPressed: (){
                        Alert(
                          content: Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text("150 TL"),
                                  margin: EdgeInsets.only(left: 10,right: 20),
                                ),

                                Container(
                                  child: IconButton(

                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    )),
                                Container(
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: "Ürün Adı",
                          buttons:<DialogButton>[
                            DialogButton(
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text("Tamamla",style: TextStyle(color: Colors.white,),),

                            ),
                            DialogButton(
                              color: Colors.red[700],
                              onPressed: (){},
                              child: Text("Ürünü Kaldır",style: TextStyle(color: Colors.white,),),

                            ),
                          ],
                          closeFunction: (){},
                          context: context,

                        ).show();
                      }, icon: Icon(Icons.edit, color: Colors.blue, size: 30.0), label: Text("")),
                    ),

                  )
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left:10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5.0,
                          offset: Offset(0.1,0.3))
                    ],
                  ),

                  child: ListTile(
                    onTap: (){
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Ürün Adı",
                        desc: "Kısa ürün detayı...",
                        buttons: [
                          DialogButton(
                            child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.redo,color: Colors.white,), label: Text("Ürüne git",style: TextStyle(color: Colors.white),)),
                            onPressed: () => Navigator.pop(context),
                            color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                          DialogButton(
                            color: Colors.red[700],
                            child:Text("Kapat",style: TextStyle(color: Colors.white),),
                            onPressed: (){},
                            //color: Color.fromRGBO(0, 179, 134, 1.0),
                          ),
                        ],
                      ).show();
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(

                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(right: BorderSide(color: Colors.black38,style: BorderStyle.solid,width: 1))
                      ),
                      child:Container(child:Image.network("https://productimages.hepsiburada.net/s/22/432/9951530582066.jpg"
                        ,fit: BoxFit.cover,),),
                    ),
                    title: Text(
                      "Ürün Adının Geleceği Yer",
                      style: TextStyle( fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    subtitle: Row(
                      children: <Widget>[
                        Icon(Icons.local_offer, color: Colors.black,size: 14,),
                        Text("150 TL", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400))
                      ],
                    ),
                    trailing:Container(

                      child: FlatButton.icon(onPressed: (){
                        Alert(
                          content: Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text("150 TL"),
                                  margin: EdgeInsets.only(left: 10,right: 20),
                                ),

                                Container(
                                  child: IconButton(

                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    )),
                                Container(
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: "Ürün Adı",
                          buttons:<DialogButton>[
                            DialogButton(
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text("Tamamla",style: TextStyle(color: Colors.white,),),

                            ),
                            DialogButton(
                              color: Colors.red[700],
                              onPressed: (){},
                              child: Text("Ürünü Kaldır",style: TextStyle(color: Colors.white,),),

                            ),
                          ],
                          closeFunction: (){},
                          context: context,

                        ).show();
                      }, icon: Icon(Icons.edit, color: Colors.blue, size: 30.0), label: Text("")),
                    ),

                  )
              ),


              //satın al sepeti temizle butonları
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/2.2,
                    height: 45,

                    margin: EdgeInsets.all(10),
                    child: RaisedButton.icon(
                      onPressed: (){},
                      textColor: Colors.white,
                      icon: Icon(Icons.credit_card,color: Colors.white,size: 24,),
                      label: AutoSizeText("Satın Al",maxFontSize:20,minFontSize: 12,),

                      color: Colors.green,
                    ),

                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2.6,
                    height: 45,
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                      onPressed: (){},
                      textColor: Colors.white,
                      child: AutoSizeText("Sepeti Temizle",),
                      color: Colors.red[700],
                    ),

                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}