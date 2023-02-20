// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_import

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hackathon_gdsc/ScreenPage/dailyInformation/infoOne.dart';
import 'package:hackathon_gdsc/ScreenPage/dailyInformation/infoTwo.dart';
import 'package:hackathon_gdsc/ScreenPage/searchingPage/searchingPage.dart';
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
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 55, 78, 123),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ////////////AWAL TOMBOL UTAMA////////////
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80),
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
                    SizedBox(height: 30),
                    Container(
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white38,
                            Colors.white,
                          ],
                        ),
                      ),
                      child: Image.asset("assetSaya/logoGEES.png", scale: 2.5),
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: SizedBox(
                        width: 300,
                        height: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.confirm,
                              text: "Are You Sure Call for Help?",
                              confirmBtnColor:
                                  Color.fromARGB(255, 234, 143, 174),
                              title: "CONFIRMATION",
                              onConfirmBtnTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return SearchingPage();
                                }));
                              },
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
                            elevation: 50,
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
                    SizedBox(height: 50),
                  ],
                ),
              ),
              ////////////AKHIR TOMBOL UTAMA////////////

              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(240, 234, 143, 174),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: SizedBox(
                  height: 30,
                  width: 100,
                  child: Icon(Icons.keyboard_double_arrow_down),
                ),
              ),
              SizedBox(height: 50),

              ////////////AWAL DAILY INFORMATION////////////
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
              ////////////AKHIR DAILY INFORMATION////////////

              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
