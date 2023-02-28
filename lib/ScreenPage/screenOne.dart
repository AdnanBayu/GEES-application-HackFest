// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_import

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hackathon_gdsc/ScreenPage/dailyInformation/infoOne.dart';
import 'package:hackathon_gdsc/ScreenPage/dailyInformation/infoTwo.dart';
import 'package:hackathon_gdsc/ScreenPage/searchingPage/searchingPage.dart';
import 'package:quickalert/quickalert.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'dart:convert';

class ScreenOne extends StatefulWidget {
  ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final _controller = PageController();
  late IO.Socket socket;
  var _latitude = "";
  var _longitude = "";
  var _altitude = "";
  var _speed = "";

  Future<void> _updatePosition() async {
    Position pos = await _determinePosition();
    List pm = await placemarkFromCoordinates(pos.latitude, pos.longitude);
    setState(() {
      _latitude = pos.latitude.toString();
      _longitude = pos.longitude.toString();
      _altitude = pos.altitude.toString();
      _speed = pos.speed.toString();
    });
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location Services are Disabled');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location Services are Denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          "Location Services are Permanently Denied, We Cannot Request Permissions");
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  void initState() {
    super.initState();
    connectToServer();
  }

  void connectToServer() {
    socket = IO.io('https://9244-210-57-216-164.ap.ngrok.io', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket.connect();
  }

  void sendData() async {
    await _updatePosition();
    Map<String, dynamic> data = {
      'lat': _latitude,
      'lng': _longitude,
    };

    String jsonData = json.encode(data);

    socket.emit('location', jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 55, 78, 123),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ////////////AWAL TOMBOL UTAMA////////////
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 234, 143, 174),
                        Color.fromARGB(255, 254, 162, 192),
                        Color.fromARGB(255, 255, 199, 212),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Colors.white38,
                              Colors.white,
                            ],
                          ),
                        ),
                        child: Image.asset("assetSaya/logoGEES.png", scale: 2.5),
                      ),
        
                      SizedBox(height: 43),
        
                      Center(
                        child: SizedBox(
                          width: 300,
                          height: 300,
                          child: ElevatedButton(
                            onPressed: () {
                              QuickAlert.show(
                                context: context,
                                type: QuickAlertType.confirm,
                                text: "Are You Sure Call for Help?",
                                confirmBtnColor: Color.fromARGB(255, 234, 143, 174),
                                title: "CONFIRMATION",
                                onConfirmBtnTap: () {
                                  sendData();
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (context) {
                                    return SearchingPage();
                                  }));
                                },
                              );
                            },
                            child: Text(
                              "Search for Help",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(24),
                              backgroundColor: Colors.black87,
                              elevation: 50,
                            ),
                          ),
                        ),
                      ),
        
                      SizedBox(height: 43),
                      ///////LOKASI///////
                      Center(
                        child: Text(
                          "Your Location Is\n$_longitude , $_latitude",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 50)
                    ],
                  ),
                ),
                ////////////AKHIR TOMBOL UTAMA////////////
        
                SizedBox(height: 7),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(240, 234, 143, 174),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: SizedBox(
                    height: 30,
                    width: 100,
                    child: Icon(Icons.keyboard_double_arrow_down),
                  ),
                ),
                SizedBox(height: 30),
        
                ////////////AWAL DAILY INFORMATION////////////
                Text(
                  "DAILY INFORMATION",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 300,
                  child: PageView(
                    controller: _controller,
                    children: [
                      InfoOne(),
                      InfoTwo(),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: SwapEffect(
                    activeDotColor: Colors.black,
                    dotColor: Colors.white,
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 10,
                  ),
                ),
                ////////////AKHIR DAILY INFORMATION////////////
        
                SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
