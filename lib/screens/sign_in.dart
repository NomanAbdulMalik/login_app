import 'package:flutter/material.dart';

import '../Global Code/text_widget.dart';
import '../newicon_icons.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              textwidget("Create Account", 34),
              SizedBox(height: 10),
              Container(
                height: 150,
                width: 300,
                child: Image(
                  image: AssetImage('assets/signup.png'),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Name",
                    hintText: "John",
                    prefixIcon: Icon(Newicon.user),
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
                padding: const EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Phone",
                    hintText: "+92123456789",
                    prefixIcon: Icon(Newicon.phone),
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
                padding: const EdgeInsets.all(8.0),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Confirm Password",
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
              SizedBox(height: 10),
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
                    onPressed: () {},
                    child: Text("Sign in")),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textwidget("Already have a account?", 16),
                  Text("Login",
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
