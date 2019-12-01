import 'package:demoeticaret/MyBasket.dart';
import 'package:demoeticaret/Settings.dart';
import 'package:demoeticaret/UserLogin.dart';
import 'package:demoeticaret/main.dart';
import 'package:demoeticaret/mainWidgers/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'UserRegister.dart';
class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Ertekin Özturgut"),
            accountEmail: new Text("ertekinozturgut@gmail.com"),
            decoration: new BoxDecoration(
              color:Colors.black38.withOpacity(0.9),
              //backgroundBlendMode: BlendMode.color,
              image: new DecorationImage(
                image: new NetworkImage('https://images.clipartlogo.com/files/istock/previews/8673/86737997-vector-background-health-care-concept-medical-innovation-design.jpg'),
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),

                fit: BoxFit.cover,
              ),
            ),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://instagram.fsaw1-5.fna.fbcdn.net/vp/6d8f11d4afe8704f020277f6f321c699/5E697FE2/t51.2885-19/s150x150/65439346_2720174991334936_3864461008567271424_n.jpg?_nc_ht=instagram.fsaw1-5.fna.fbcdn.net")),
          ),
          new ListTile(
              leading: Icon(Icons.home),
              title: new Text("Ana Sayfa"),
              onTap: () {
                Navigator.pop(context);
              }),
          new ListTile(
              leading: Icon(Icons.shopping_cart),
              title: new Text("Ürünler"),
              trailing: Icon(Icons.arrow_right),

              onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
              }),
          new ListTile(
              leading: Icon(Icons.library_books),
              title: new Text("Yazılar"),
              trailing: Icon(Icons.arrow_right),

              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage()));
              }),
          new ListTile(
              leading: Icon(Icons.shopping_basket),
              title: new Text("Sepetim"),
              trailing: Icon(Icons.arrow_right),

              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyBasket()));
              }),
          new ListTile(
              leading: Icon(Icons.local_offer),
              trailing: Icon(Icons.arrow_right),
              title: new Text("Kampanyalar"),
              onTap: () {
                Navigator.pop(context);
              }),
          new ListTile(
              leading: Icon(Icons.settings),
              title: new Text("Ayarlar"),
              trailing: Icon(Icons.arrow_right),

              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settings()));
              }),
          new Divider(),
          new ListTile(
              leading: Icon(Icons.lock_open),
              title: new Text("Giriş Yap"),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>UserLogin()));
              }),
          Container(
            margin: EdgeInsets.all(10),

            child:RaisedButton(
              color: Colors.red[800],
              textColor: Colors.white,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UserRegister()));
              },

              child: Container(
                child: Text("Üye Ol!"),
              ),
            ),

          ),

          new Divider(),
        ],
      ),);
  }


}