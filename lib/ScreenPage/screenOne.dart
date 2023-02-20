// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_import

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hackathon_gdsc/ScreenPage/dailyInformation/infoOne.dart';
import 'package:hackathon_gdsc/ScreenPage/dailyInformation/infoTwo.dart';
import 'package:quickalert/quickalert.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 55, 78, 123),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(180),
                  bottomRight: Radius.circular(180),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 234, 143, 174),
                    Color.fromARGB(255, 254, 162, 192),
                    Color.fromARGB(255, 255, 199, 212),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Text(
                    "Help Button",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: SizedBox(
                      width: 300,
                      height: 300,

                      //Tombol Utama
                      child: ElevatedButton(
                        onPressed: () {
                          QuickAlert.show(
                            context: context,
                            type: QuickAlertType.confirm,
                            text: "Are You Sure Call for Help?",
                            confirmBtnColor: Color.fromARGB(255, 234, 143, 174),
                            title: "CONFIRMATION"
                          );
                        },
                        child: Text(
                          "Search for Help",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(24),
                          backgroundColor: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Press this button to search for the nearest help\nand call the authorized party",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
            SizedBox(height: 50),
            Text(
              "DAILY INFORMATION",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              height: 300,
              child: PageView(
                controller: _controller,
                children: [InfoOne(), InfoTwo()],
              ),
            ),
            SizedBox(height: 10),
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: SwapEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.white,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 10,
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
