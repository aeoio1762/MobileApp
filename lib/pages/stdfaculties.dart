
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/pages/Announcement.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'package:flutter_login_ui/pages/faculties.dart';
import 'package:flutter_login_ui/pages/splash_screen.dart';
import 'package:flutter_login_ui/pages/stdAnnouncement.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';

import 'registration_page.dart';

class stdfaculties extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
     return _stdfacultiesState();
  }
}

class _stdfacultiesState extends State<stdfaculties>{

  double  _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Faculties",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).accentColor,]
              )
          ),
        ),
        actions: [
          /*Container(
            margin: EdgeInsets.only( top: 16, right: 16,),
            child: Stack(
              children: <Widget>[
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
                    constraints: BoxConstraints( minWidth: 12, minHeight: 12, ),
                    child: Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                  ),
                )
              ],
            ),
          )*/
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration:BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.2),
                    Theme.of(context).accentColor.withOpacity(0.5),
                  ]
              )
          ) ,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    colors: [ Theme.of(context).primaryColor,Theme.of(context).accentColor,],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text("Medipol MobileApp",
                    style: TextStyle(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
               Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(Icons.book, size: _drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Medipol News',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => faculties()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(Icons.notifications, size: _drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Announcements',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => faculties()),);
                },
              ),
              
               Divider(color: Theme.of(context).primaryColor, height: 1,),
              
              ListTile(
                leading: Icon(Icons.login_rounded,size: _drawerIconSize,color: Theme.of(context).accentColor),
                title: Text('Login Page', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);
                },
              ),
              
              Divider(color: Theme.of(context).primaryColor, height: 1,),
             
              ListTile(
                leading: Icon(Icons.logout_rounded, size: _drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Logout',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          children:<Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                    
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Faculty of Dentistry".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                    
                ),
              ],   
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Faculity of Pharmacy".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Faculty of Education".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Faculty of Fine Arts and Architecture".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Faculty of Law".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ),        
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Communication faculty".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ),        
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Faculty of Social Sciences".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ),        
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Faculty of Management".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ),        
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Faculty of Health Sciences".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ),        
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Engineerin and Natural Since".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ),        
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Faculty of Medicine".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ),        
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[                
                SizedBox(width: 10),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.yellow)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => stdAnnouncements()),);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("International Faculty of Medicine".toUpperCase(),
                    style: TextStyle(fontSize: 15)),
                ),
              ],   
            ),        
          ],
        ),
      ),      
 
    );
  }

}