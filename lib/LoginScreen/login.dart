// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:hackathon_gdsc/LoginScreen/textField.dart';
import 'package:hackathon_gdsc/ScreenPage/baseScreen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 237, 242),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 90),

                //logo
                Image.asset("assetSaya/logoGEES.png", scale: 2.5),

                SizedBox(height: 25),

                //welcoming text
                Text(
                  "make a difference and stop the violence",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 55, 78, 123),
                  ),
                ),

                SizedBox(height: 40),

                //username textfield
                MyTextField(
                  controller: userNameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: 60),

                //sign in button
                SizedBox(
                  width: 200,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const BaseScreen();
                      }));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 55, 78, 123),
                    ),
                  ),
                ),
                SizedBox(height: 140),
                Text(
                  "by SEESH team",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 55, 78, 123),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
