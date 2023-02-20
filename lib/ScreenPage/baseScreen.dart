// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hackathon_gdsc/ScreenPage/screenOne.dart';
import 'package:hackathon_gdsc/ScreenPage/screenFour.dart';
import 'package:hackathon_gdsc/ScreenPage/screenThree.dart';
import 'package:hackathon_gdsc/ScreenPage/screenTwo.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  final List<Widget> _ScreenPages = [
    ScreenOne(), 
    ScreenTwo(), 
    ScreenThree(),
    ScreenFour(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _ScreenPages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            gap: 20,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey,
            padding: EdgeInsets.all(10),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "home",
              ),
              GButton(
                icon: Icons.chat_bubble,
                text: "tweet",
              ),
              GButton(
                icon: Icons.card_giftcard,
                text: "reward",
              ),
              GButton(
                icon: Icons.account_circle,
                text: "profile",
              )
            ],
          ),
        ),
      ),
    );
  }
}
