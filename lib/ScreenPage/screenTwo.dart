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
        body: Center(child: Text("Second Screen")),
      ),
    );
  }
}
