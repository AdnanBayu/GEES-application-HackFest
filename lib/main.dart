import 'package:flutter/material.dart';
import 'package:hackathon_gdsc/LoginScreen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gender Equality and Empowerment in Society',
      home: LoginPage(),
    );
  }
}