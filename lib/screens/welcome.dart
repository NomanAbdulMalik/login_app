import 'package:flutter/material.dart';
import 'package:login_app/newicon_icons.dart';
import 'package:login_app/screens/login.dart';
import 'package:login_app/screens/sign_in.dart';

import '../Global Code/button_widget.dart';
import '../Global Code/text_widget.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: textwidget("Welcome to", 34)),
            SizedBox(height: 10),
            textwidget("Education App", 34),
            Container(
              height: 300,
              width: 350,
              child: Image(
                image: AssetImage('assets/WelcomeImg.png'),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 250,
              // color: Colors.teal,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffF09819), Color(0xffEDDE5D)]),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(2.0, 5.0)),
                ],
              ),
              child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => Login())),
                    );
                  },
                  child: Text("Login")),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(2.0, 5.0)),
                ],
              ),
              child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black,
                      primary: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => SignUp())),
                    );
                  },
                  child: Text("Sign up")),
            ),
            SizedBox(height: 80),
            textwidget("Social Media Login", 16),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Newicon.facebook,
                  color: Color(0xffF09819),
                  size: 35,
                  shadows: [
                    Shadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0.0, 3.0))
                  ],
                ),
                SizedBox(width: 10),
                Icon(
                  Newicon.google,
                  color: Color(0xffF09819),
                  size: 35,
                  shadows: [
                    Shadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0.0, 3.0))
                  ],
                ),
                SizedBox(width: 10),
                Icon(
                  Newicon.linkedin,
                  color: Color(0xffF09819),
                  size: 35,
                  shadows: [
                    Shadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0.0, 3.0))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
