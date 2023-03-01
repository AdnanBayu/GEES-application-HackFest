// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackathon_gdsc/LoginScreen/textField.dart';
import 'package:hackathon_gdsc/ScreenPage/baseScreen.dart';
import 'package:quickalert/quickalert.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //untuk sementara username dan password fix adalah "hackfest" dua-duanya
  final userNameController = TextEditingController();

  final passwordController = TextEditingController();
  var linkNgrok = "https://6fb6-210-57-216-164.ap.ngrok.io";
  var logger = Logger();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                      onPressed: () async {
                        final response = await http.post(
                          Uri.parse(
                              linkNgrok+"/account/login"),
                          body: {
                            'username': userNameController.text,
                            'password': passwordController.text
                          },
                        );
                        final jsonPost = jsonDecode(response.body);
                        logger.d(response.body);
                        if (response.statusCode == 200 || jsonPost['msg'] != 'found') {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const BaseScreen(),
                            ),
                          );
                        } else {
                          QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              title: 'Oops...',
                              text: 'incorrect email or password',
                              confirmBtnColor:
                                  Color.fromARGB(255, 55, 78, 123));
                        }
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
      ),
    );
  }
}
