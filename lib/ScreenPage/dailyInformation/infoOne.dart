import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class InfoOne extends StatelessWidget {
  const InfoOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Padding(
          padding: EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 500,
              height: 300,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width/20,
          bottom: MediaQuery.of(context).size.width/20,
          child: LikeButton(
            size: 40,
          ),
        )
        ]
      ),
    );
  }
}