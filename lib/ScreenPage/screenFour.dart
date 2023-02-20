import 'package:flutter/material.dart';
import 'dart:ui';

class ScreenFour extends StatelessWidget {
  ScreenFour({super.key});

  var screenWidth = window.physicalSize.width;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 234, 143, 174),
        
        
        ////////////AWAL TOP BAR////////////
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Color.fromARGB(255,55,78,123),
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Row(
            children: <Widget>[
              SizedBox(width: screenWidth / 6.5),
              Icon(
                Icons.account_circle,
                size: 80,
              ),
            ],
          ),
        ),
        ////////////AKHIR TOP BAR////////////
    
    
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              //first button
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text("Account settings"),
                style: ElevatedButton.styleFrom(primary: Color.fromARGB(255,55,78,123)),
              ),
    
              //second button
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {},
                child: Text("Licenses"),
                style: ElevatedButton.styleFrom(primary: Color.fromARGB(255,55,78,123)),
              ),
    
              //third button
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {},
                child: Text("Contact Us"),
                style: ElevatedButton.styleFrom(primary: Color.fromARGB(255,55,78,123)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
