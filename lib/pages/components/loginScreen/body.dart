import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
                      child: Column(
              children: <Widget>[
                SizedBox(height: size.height * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                    "Login with your email and password \nor Continue with social media",
                    textAlign: TextAlign.center),
                SizedBox(height: size.height * 0.08),
                LoginForm(),
                SizedBox(height: size.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    SocialMediaCard(
                      icon: "assets/icons/google.svg",
                      press: () {},
                    ),
                    SocialMediaCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                    SocialMediaCard(
                      icon: "assets/icons/facebook.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(fontSize: 16)),
                    Text("Sign Up", style: TextStyle(fontSize: 16,
                    color: Colors.red))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(12),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
        color: Colors.white, shape: BoxShape.circle),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
