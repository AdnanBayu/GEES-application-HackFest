// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 234, 143, 174),
        appBar: AppBar(
          title: Text(
            "TELL US YOUR STORY",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 55, 78, 123),
          elevation: 20,
        ),
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: 10),

              ////////Main Tweet//////
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 55, 78, 123))),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Your tweets",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
              ///////Main Tweet///////
            ],
          ),
        ),
      ),
    );
  }
}
