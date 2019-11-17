import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              color:Color.fromRGBO(0, 0, 0, 1),
              backgroundBlendMode: BlendMode.color,

              image: new DecorationImage(
                image: new NetworkImage('https://images.clipartlogo.com/files/istock/previews/8673/86737997-vector-background-health-care-concept-medical-innovation-design.jpg'),
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),

                fit: BoxFit.cover,
              ),
            ),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/46.jpg")),
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
                Navigator.pop(context);
              }),
          new ListTile(
              leading: Icon(Icons.library_books),
              title: new Text("Yazılar"),
              trailing: Icon(Icons.arrow_right),

              onTap: () {
                Navigator.pop(context);
              }),
          new ListTile(
              leading: Icon(Icons.shopping_basket),
              title: new Text("Sepetim"),
              trailing: Icon(Icons.arrow_right),

              onTap: () {
                Navigator.pop(context);
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
                Navigator.pop(context);
              }),
          new Divider(),
          new ListTile(
              leading: Icon(Icons.lock_open),
              title: new Text("Giriş Yap"),
              onTap: () {
                Navigator.pop(context);
              }),
          Container(
            margin: EdgeInsets.all(10),

            child:RaisedButton(
              color: Colors.red[800],
              textColor: Colors.white,
              onPressed: (){},

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