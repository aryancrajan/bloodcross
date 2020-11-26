import 'package:blood/profile.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:blood/database_helper.dart';
import 'package:blood/user.dart';
import 'home.dart';
import 'package:blood/login.dart';
import 'package:blood/register.dart';
import 'login_presenter.dart';

void main() => runApp(MaterialApp(home:MyApp(),
debugShowCheckedModeBanner: false));

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new HomeScreen(),
  '/register': (BuildContext context) => new RegisterPage(),
  '/': (BuildContext context) => new LoginPage(),
};


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'BLOODCROSS',
      theme: new ThemeData(primarySwatch: Colors.teal),
      routes: routes,
    );
  }
}
class Myapps extends StatefulWidget {
  @override
  _MyappsState createState() => _MyappsState();
}
class _MyappsState extends State<Myapps>{
Widget build(BuildContext context) {
return SplashScreen(
    seconds: 5,
    routeName: "/",
        backgroundColor: Colors.black87,
     image: Image.asset('assets/download__2_-removebg-preview.png'),
      title: Text('"+BLOODCROSS+"', style: TextStyle(color:Colors.white, fontFamily: 'Montserrat',
         fontWeight: FontWeight.w500,fontSize:30)),
     loaderColor: Colors.blueAccent,
     photoSize: 150.0,
      navigateAfterSeconds: LoginPage(),
    );
}
}



