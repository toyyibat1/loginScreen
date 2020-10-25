import 'package:flutter/material.dart';
import 'package:login_screen/pages/components/loginScreen/login.dart';
import 'package:login_screen/routes.dart';
import 'package:login_screen/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    );
  }

}
