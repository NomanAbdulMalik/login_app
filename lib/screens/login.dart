import 'package:flutter/material.dart';
import 'package:login_app/newicon_icons.dart';

import '../Global Code/text_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              textwidget("Welcome Back", 34),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: 350,
                child: Image(
                  image: AssetImage('assets/login.png'),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "name@gmail.com",
                    prefixIcon: Icon(Icons.mail),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF09819)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF09819)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF09819)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF09819)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 250,
                // color: Colors.teal,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
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
              SizedBox(height: 30),
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
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textwidget("Don't have a account?", 16),
                  Text("create a new account",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
