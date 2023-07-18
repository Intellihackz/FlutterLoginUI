// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:chatfeed/utils/my_button.dart';
import 'package:chatfeed/utils/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),

              Container(
                height: 150,
                child: Image.asset(
                  'lib/images/logo.png',
                ),
              ),

              SizedBox(
                height: 8,
              ),

              Text(
                "Welcome Back , We've Kept your lesson for you",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),

              SizedBox(
                height: 25,
              ),
              //email textfield
              MyTextField(
                controller: emailcontroller,
                hinttext: "Email",
                obscuretext: false,
              ),

              SizedBox(
                height: 25,
              ),

              MyTextField(
                controller: passwordcontroller,
                hinttext: "Password",
                obscuretext: true,
              ),

              SizedBox(
                height: 15,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: signUserIn,
              ),
              SizedBox(
                height: 25,
              ),
              Text("D")
            ],
          ),
        ),
      ),
    );
  }
}
