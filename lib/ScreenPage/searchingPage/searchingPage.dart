import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchingPage extends StatelessWidget {
  const SearchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 55, 78, 123),
        body: Column(
          children: [
            Center(
              child: Lottie.network(
                "https://assets9.lottiefiles.com/packages/lf20_bXGMKilbSf.json",
                animate: true,
                height: 450,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Searching Help for You ...",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 120),
            SizedBox(
              height: 30,
              width: 180,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Back to Main Page"),
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Color.fromARGB(255, 234, 143, 174),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
