import 'package:flutter/material.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({super.key});

  final int paypalId = 111111;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 143, 174),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assetSaya/paypalLogo.png"),
            SizedBox(height: 20),
            Text(
              "Help us by donating to our PayPal account id",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              paypalId.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
