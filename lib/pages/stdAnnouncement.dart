
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/pages/Announcement.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'package:flutter_login_ui/pages/faculties.dart';
import 'package:flutter_login_ui/pages/splash_screen.dart';
import 'package:flutter_login_ui/pages/stdfaculties.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';

import 'registration_page.dart';

class stdAnnouncements extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
     return _stdAnnouncementsState();
  }
}

class _stdAnnouncementsState extends State<stdAnnouncements>{

  double  _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Announcements",
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
        actions: [],
        
        
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => stdfaculties()),);
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
            Divider(color: Theme.of(context).primaryColor, height: 5,),
            Text("Muhsin Zahid U??ur", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 9),),
            Text("We have a lecture today at 10:00 "),
            Divider(color: Theme.of(context).primaryColor, height: 5,),
            Text("Mehmet Kemal ??zdemir", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 9),),
            Text("We have a lecture today at 13:00 "),
            Divider(color: Theme.of(context).primaryColor, height: 5,),
            Text("Hasan Fehmi Ate??", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 9),),
            Text("We have a lecture today at 16:00 "),
            Divider(color: Theme.of(context).primaryColor, height: 5,),
            Text("Bahad??r K??r??at G??nt??rk", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 9),),
            Text("We have a lecture today at 19:00 "),
            Divider(color: Theme.of(context).primaryColor, height: 5,),
          
          ],
        ),
      ),      

    );
  }

}