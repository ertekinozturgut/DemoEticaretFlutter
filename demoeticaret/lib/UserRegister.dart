import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class UserRegister extends StatefulWidget {
  @override
   UserRegisterState createState() {
    return new UserRegisterState();
  }
}
class UserRegisterState extends State<UserRegister>{
  bool checkvalue=false;

  @override
  Widget build(BuildContext context) {
    //final ValueChanged<bool> onChanged;

    return Material(

      child:SingleChildScrollView(
        controller:ScrollController(

        ),
        child:Column(
          //scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.green
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90)
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.person_add,
                      size: 90,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 32,
                          right: 32

                      ),
                      child: Text('Kayıt Sayfası',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 62),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    margin: EdgeInsets.only(bottom: 20),
                    height: 50,
                    padding: EdgeInsets.only(
                        top: 2,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.person,
                          color: Colors.blue,
                        ),
                        hintText: 'Ad Soyad',
                      ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 50,                    margin: EdgeInsets.only(bottom: 20),

                    padding: EdgeInsets.only(
                        top: 2,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.email,
                          color: Colors.blue,
                        ),
                        hintText: 'Email Adresi',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 50,
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.vpn_key,
                          color: Colors.blue,
                        ),
                        hintText: 'Şifre',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: 50,
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.vpn_key,
                          color: Colors.blue,
                        ),
                        hintText: 'Şifreyi Onaylayın',
                      ),
                    ),
                  ),

                  Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 50,
                      //margin: EdgeInsets.only(bottom: 20),
                      /*  padding: EdgeInsets.only(
                          top: 4,left: 16, right: 16, bottom: 4
                      ),*/
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: CheckboxListTile(
                        title: Text("Sözleşmeyi Onaylıyorum"), //    <-- label
                        value:checkvalue ,
                        selected: checkvalue,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (newValue) {
                          setState(() {
                            checkvalue = newValue;

                          });
                        },
                      )
                  ),


                  Container(
                    height: 45,
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            //Color(0xFFf45d27),
                            Colors.blue,
                            Colors.green
                            //Color(0xFFf5851f)
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)
                        )
                    ),
                    child: Center(
                      child: Text('Kaydı Tamamla'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],),

      ),
    );
  }
}