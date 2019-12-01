import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return SettingsState();
  }

}

class SettingsState extends State<Settings>{
  //Email address
  String _email;
  //Whether or not the app can send out notifications
  bool _notifications = true;
  //Whether or not pin codes can be used to authenticate
  bool _allowPinCodes = false;
  //Whether or not the presence of white-listed phones can be used to authenticate
  bool _allowPhonePresenceDetection = false;
  //Preferred temperature unit - fahrenheit or celsius?
  String _temperatureUnit = 'fahrenheit';
  @override
  void initState() {

    super.initState();
    restore();

  }

  restore() async {
    final SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    setState(() {
      _notifications = (sharedPrefs.getBool('notifications') ?? false);
      //TODO: More restoring of settings would go here...
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: GradientAppBar(
        backgroundColorStart: Colors.blue,
        backgroundColorEnd: Colors.green,
        centerTitle: true,
        title: Text("Ayarlar"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Hesap Ayarları",),),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(width: 0.7,color: Colors.black45,style: BorderStyle.solid)),
                  ),
                ),

              ),

              Container(
                margin: EdgeInsets.only(bottom: 10,top: 10,left: 10,right: 10),
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
                margin: EdgeInsets.only(bottom: 10,top: 10,left: 10,right: 10),
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
                    icon: Icon(Icons.mail,
                      color: Colors.blue,
                    ),
                    hintText: 'E-mail Adresiniz',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10,top: 10,left: 10,right: 10),
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
                    icon: Icon(Icons.date_range,
                      color: Colors.blue,
                    ),
                    hintText: 'Doğum Gününüz',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                alignment: Alignment(1,0),
                child:RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.save,size: 30,color: Colors.white,),
                    label: Text("Bilgilerimi Güncelle",style: TextStyle(color: Colors.white,fontSize: 15),),
                color: Colors.green,)
              ),
              ListTile(
                title: Text("Uygulama Ayarları",),),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(width: 0.7,color: Colors.black45,style: BorderStyle.solid)),
                  ),
                ),

              ),
              ListTile(
                leading: Icon(Icons.notification_important),
                title: Text("Bildirimler Açık"),
                trailing: Checkbox(value:true, onChanged: (bool value) {

                },
                ),
              ),

              ListTile(
                leading: Icon(Icons.announcement),
                title: Text("İndirim ve Kampanya Bildirimlerini Aç"),
                trailing: Switch(
                  value: true,
                  onChanged: (bool value){},


                ),
              ),
          ListTile(
          leading: Icon(Icons.exit_to_app),
      title: Text("Oturumu kapat"),
      trailing: Container(
        margin: EdgeInsets.only(right: 10,),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.red[700],
            borderRadius: BorderRadius.circular(20)
        ),

        child: InkWell(
          child: Icon(Icons.power_settings_new,color: Colors.white,),
        ),
      ),
    ),
            ],
          ),
        ),
      ),
    );
  }

}