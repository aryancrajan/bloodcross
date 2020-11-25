import 'package:flutter/material.dart';
import 'package:blood/database_helper.dart';
import 'package:blood/user.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState  extends State<RegisterPage> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String _name, _username, _password, _bldgrp, _location;
  int age,number;



  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = new RaisedButton(
      onPressed: _submit,
      child: new Text("Submit"),
      color: Colors.red,
    );


    var loginForm =
    SingleChildScrollView(
      child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //new Text(
         // "Welcome !!",
         // textScaleFactor: 2.0,
        //),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.text,
                  onSaved: (val) => _name = val,
                  decoration: new InputDecoration(labelText: "Name"),
                  validator: (String _name) {
                    if (_name.isEmpty)
                      return 'Enter your name';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(

                  onSaved: (val) => _username = val,
                  decoration: new InputDecoration(labelText: "Email"),
                  validator: (String _username) {
                    if (_username.isEmpty)
                      return 'Enter your email id';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Password"),
                  validator: (String _password) {
                    if (_password.length != 8 && _password.isEmpty)
                      return 'Password length should be 8';
                    else
                      return null;
                  },

                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.text,
                  onSaved: (val) => _bldgrp = val,
                  decoration: new InputDecoration(labelText: "Blood Group"),
                  validator: (String _bldgrp) {
                    if (_bldgrp.isEmpty)
                      return 'Please enter your Blood group';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.number,
                  onSaved: (val) => age = int.parse(val),
                  decoration: new InputDecoration(labelText: "Age"),
                  validator: (String age) {
                    if (age.isEmpty)
                      return 'Enter your age';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.number,
                  onSaved: (val) => number = int.parse(val),
                  decoration: new InputDecoration(labelText: "Phone Number"),
                  validator: (String number) {
                    if (number.length != 10 && number.isEmpty)
                      return 'Invalid mobile number';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.text,
                  onSaved: (val) => _location = val,
                  decoration: new InputDecoration(labelText: "Location"),
                  validator: (String _location) {
                    if (_location.isEmpty)
                      return 'Invalid Location';
                    else
                      return null;
                  },
                ),
              ),
            ],
          ),
        ),
        loginBtn
      ],
    ),
    );

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text("Register"),
      ),
      key: scaffoldKey,
      body: new Container(
        child: new Center(
          child: loginForm,
        ),
      ),
    );
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  void _submit(){
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var user = new User(_name, _username, _password, null);
        var db = new DatabaseHelper();
        db.saveUser(user);
        _isLoading = false;
        Navigator.of(context).pushNamed("/login");
        if (formKey.currentState.validate()) {}
      });
    }
  }
}
