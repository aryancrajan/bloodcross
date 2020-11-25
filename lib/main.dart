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

//class FirstRoute extends StatelessWidget {
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red ,
        title: Text("Forgot Password"),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Text(
                  'RESET PASSWORD',
                  style: TextStyle(
                      color: Colors.brown, fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                    labelText: 'Username',
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: TextField(
                  obscureText: true,
                  controller: repasswordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                    labelText: ' Confirm Password',
                  ),
                ),
              ),
              //SizedBox(height: 30.0),
              Container(
                  padding: EdgeInsets.only(top: 25.0, left: 50.0, right: 50.0),
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 7.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  )),
              //SizedBox(height: 30.0),
              Container(
                padding: EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
                height: 50.0,
                color: Colors.transparent,
                child: Material(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.red,
                  elevation: 10.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child:

                    Center(
                      child: Text('BACK',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              )

            ],
          )
      ),
    );
  }


