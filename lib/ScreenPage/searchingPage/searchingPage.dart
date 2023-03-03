import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:lottie/lottie.dart';
import 'package:hackathon_gdsc/ScreenPage/screenOne.dart';

class SearchingPage extends StatefulWidget {
  const SearchingPage({super.key});

  @override
  State<SearchingPage> createState() => _SearchingPageState();
}

class _SearchingPageState extends State<SearchingPage> {
  final String policeNumber = "+6285540629707";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 55, 78, 123),
          body: Column(
            children: [
              SizedBox(height: 20),
      
              /////ANIMASI/////
      
              Center(
                child: Lottie.asset(
                  "assetSaya/GeesSearch.json",
                  animate: true,
                  height: 400,
                  width: 400
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
      
              SizedBox(height: 10),
      
              /////TOMBOL CALL POLICE/////
              TextButton.icon(
                style: TextButton.styleFrom(primary: Colors.white),
                onPressed: () async {
                  await FlutterPhoneDirectCaller.callNumber(policeNumber);
                },
                icon: Icon(Icons.call),
                label: Text(
                  "Press this to call police\n(free charge)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
      
              SizedBox(height: 100),
      
              /////TOMBOL BACK/////
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
      ),
    );
  }
}
