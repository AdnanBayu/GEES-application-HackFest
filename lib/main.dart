import 'package:flutter/material.dart';
import 'package:hackathon_gdsc/LoginScreen/login.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gender Equality and Empowerment in Society',
      home: LoginPage(),
    );
  }
}
