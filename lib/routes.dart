import 'package:flutter/material.dart';
import 'package:login_screen/pages/home.dart';
import 'package:login_screen/pages/components/loginScreen/login.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen()
};