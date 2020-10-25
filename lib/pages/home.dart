import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    final String _message = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
          child: Text(_message,
          style: TextStyle(
            fontSize: 30
          ),),
      ),
    );
  }
}
