import 'package:flutter/material.dart';
import 'package:hackathon_gdsc/ScreenPage/profileScreenButton/contactUs.dart';
import 'dart:ui';

import 'package:hackathon_gdsc/ScreenPage/profileScreenButton/donatePage.dart';

class ScreenFour extends StatelessWidget {
  ScreenFour({super.key});

  var screenWidth = window.physicalSize.width;
  final String usernameUser = "USERNAME";
  final String emailUser = "user@email.hackfest.com";

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
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 234, 143, 174),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.white,
                    ),
                    SizedBox(height: 5),
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
                    SizedBox(height: 20)
                  ],
                ),
              ),
              ////////////AKHIR TOP BAR////////////
              ///
              SizedBox(height: 20),

              //////BAGIAN TOMBOL-TOMBOL//////
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Color.fromARGB(255, 55, 78, 123),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    //first button
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Account settings",
                          style: TextStyle(
                            color: Color.fromARGB(255, 55, 78, 123),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 252, 237, 242),
                          shape: StadiumBorder()
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
                        child:  Text(
                          "Licenses",
                          style: TextStyle(
                            color: Color.fromARGB(255, 55, 78, 123),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 252, 237, 242),
                          shape: StadiumBorder()
                        ),
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
                        child:  Text(
                          "Contact Us",
                          style: TextStyle(
                            color: Color.fromARGB(255, 55, 78, 123),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 252, 237, 242),
                          shape: StadiumBorder()
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
                        child:  Text(
                          "Donate",
                          style: TextStyle(
                            color: Color.fromARGB(255, 55, 78, 123),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 252, 237, 242),
                          shape: StadiumBorder()
                        ),
                      ),
                    ),
                    SizedBox(height: 90),
                    Text(
                      "HackFest 2023 - Team SEESH",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
