// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(100))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 55, 78, 123)),
                      borderRadius: BorderRadius.all(Radius.circular(100))
                    ),
                    fillColor: Color.fromARGB(255, 254, 162, 192),
                    filled: true,
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ),
              );
  }
}