import 'package:flutter/material.dart';
import 'package:hackathon_gdsc/ScreenPage/profileScreenButton/contactUs.dart';
import 'dart:ui';

import 'package:hackathon_gdsc/ScreenPage/profileScreenButton/donatePage.dart';

class ScreenFour extends StatelessWidget {
  ScreenFour({super.key});

  var screenWidth = window.physicalSize.width;
  final String usernameUser = "USERNAME";
  final String emailUser = "@email";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 234, 143, 174),
          body: Column(
            children: [
              ////////////AWAL TOP BAR////////////
              Material(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 55, 78, 123),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 30),
                      Icon(
                        Icons.account_circle,
                        size: 120,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            usernameUser,
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            emailUser,
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ////////////AKHIR TOP BAR////////////
              ///
              SizedBox(height: 20),
      
              ///
              Column(
                children: [
                  //first button
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Account settings"),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 55, 78, 123),
                      ),
                    ),
                  ),
      
                  SizedBox(height: 5),
      
                  //second button
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return LicensePage();
                        }));
                      },
                      child: Text("Licenses"),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 55, 78, 123)),
                    ),
                  ),
      
                  SizedBox(height: 5),
      
                  //third button
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ContactUsPage();
                        }));
                      },
                      child: Text("Contact Us"),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 55, 78, 123),
                      ),
                    ),
                  ),
      
                  SizedBox(height: 5),
      
                  //fourth button
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DonatePage();
                        }));
                      },
                      child: Text("Donate"),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 55, 78, 123)),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "HackFest 2023 - Team SEESH",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
