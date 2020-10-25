
import 'package:flutter/material.dart';
import 'package:login_screen/pages/home.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = ['Demo Error'];
  String email;
  String password;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          buildEmailFormField(),
          SizedBox(
            height: 30,
          ),
          buildPasswordFormField(),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Checkbox(value: remember, 
              activeColor: Colors.red,
              onChanged: (value){

                setState(() {
                  remember = value;
                });
              },),
              Text("Remember me"),
              Spacer(),
              Text("Forgot Password?",
              style: TextStyle(decoration: TextDecoration.underline),)
            ],     
          ),
          buildCustomButton()
        ],
      ),
    );
  }

  Container buildCustomButton() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [Colors.yellow, Colors.orange])),
      child: MaterialButton(

        minWidth: double.infinity,
        onPressed: () {
          if (
            _formKey.currentState.validate()){
            _formKey.currentState.save();
            }
          Navigator.pushNamed(context, HomeScreen.routeName);
        },
        
        child: Text(
          "Continue",
          style: TextStyle(),
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue)=> password = newValue,
        decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter your email",
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
            )));
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
        onSaved: (newValue) => email = newValue,
        keyboardType: TextInputType.emailAddress,
        validator:(value){
          if(value.isEmpty) {
            setState(() {
              errors.add("Please enter your email");
            });
          }
          return null;
        } ,
        decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            prefixIcon: Icon(Icons.account_circle),
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
            )));
  }
}
