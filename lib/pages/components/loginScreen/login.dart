import 'package:flutter/material.dart';
import 'package:login_screen/pages/components/loginScreen/body.dart';

class User {
  final String userName;
  final String password;

  User(this.userName, this.password);
}

class LoginScreen extends StatelessWidget {
  
  static String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login",
        ),
      ),
      body: Body(),
    );
  }
}