
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/stdProfilePage.dart';

import 'profile_page.dart';
import 'registration_page.dart';
import 'widgets/header_widget.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}): super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  String _selectedMaker  = "Please select your job." ;
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  get value => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              //padding: EdgeInsets.all(30),
              height: 200,
              child: Image.network('https://pbs.twimg.com/profile_images/1364533365/amblem_400x400.jpg'),
              //child: HeaderWidget(_headerHeight, true, Icons.login), //let's create a common header widget
            ),
            Container(

            ),
            SafeArea(
              child: Container( 
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),// This will be the login form
                child: Column(
                  children: [
                    Text(
                      'Medipol News',
                      style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Signin into your account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 30.0),
                    Form(
                      key: _formKey,
                        child: Column(
                          children: [
                            Container(
                              child: TextField(
                                decoration: ThemeHelper().textInputDecoration('User Name', 'Enter your user name'),
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 30.0),
                            Container(
                              child: TextField(
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              child: Column(
                                children:<Widget> [
                                  DropdownButton(
                                    dropdownColor: Colors.white,
                                    focusColor: Colors.white,
                                    hint: Text("Please select your job."),

                                    onChanged: (value){
                                      setState(() {
                                        _selectedMaker = value.toString();
                                      });
                                    },
                                    isExpanded: true,
                                    value: _selectedMaker,
                                    items: [
                                      DropdownMenuItem(child: Text("Please select your job."), value: "Please select your job.",),
                                      DropdownMenuItem(child: Text("Teacher"), value: "Teacher",),
                                      DropdownMenuItem(child: Text("Student"), value: "Student",),
                                    ],


                                  ),
                              ],

                              ),
                              decoration: ThemeHelper().inputBoxDecorationShaddow(),
                            ),                                                    
                            Container(
                              margin: EdgeInsets.fromLTRB(10,0,10,20),
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                 
                                },
                                child: Text( " ", style: TextStyle( color: Colors.grey, ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text('Sign In'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: (){
                                  if(_selectedMaker == "Teacher"){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                                  }
                                  if(_selectedMaker == "Student" ){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => stdProfilePage()));
                                  }                                  
                                  //After successful login we will redirect to profile page. Let's create profile page now
                                  
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10,20,10,20),
                              //child: Text('Don\'t have an account? Create'),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                  
                                    TextSpan(
                                      text: 'Create a account!',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                                        },
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                                    ),
                                  ]
                                )
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );

  }
}