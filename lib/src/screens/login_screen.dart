import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container (
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton()
          ],
        )
      )
    );
  }

  Widget emailField() {
    return TextFormField (
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Enter email address',
        hintText: 'you@mail.com'
      ),
    );
  }

  Widget passwordField() {
    return TextFormField (
      decoration: InputDecoration(
        labelText: 'Enter password',
        hintText: 'Password'
      ),
      obscureText: true,
    );
  }

  Widget submitButton() {
    return RaisedButton (
      child: Text('Submit'),
      onPressed: (){},
      color: Colors.deepOrangeAccent
    );
  }
}