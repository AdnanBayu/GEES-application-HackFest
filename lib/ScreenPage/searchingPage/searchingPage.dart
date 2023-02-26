import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:lottie/lottie.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class SearchingPage extends StatefulWidget {
  const SearchingPage({super.key});

  @override
  State<SearchingPage> createState() => _SearchingPageState();
}

class _SearchingPageState extends State<SearchingPage> {
  final String policeNumber = "+6285540629707";

  var _latitude = "";
  var _longitude = "";
  var _altitude = "";
  var _speed = "";
  var _address = "";

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
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 55, 78, 123),
        body: Column(
          children: [
            SizedBox(height: 10),

            Center(
              child: Text(
                "Your Location Is\nLongitude: $_longitude , Latitude: $_latitude",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),

            /////ANIMASI/////
            Center(
              child: Lottie.network(
                "https://assets9.lottiefiles.com/packages/lf20_bXGMKilbSf.json",
                animate: true,
                height: 400,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            SizedBox(height: 60),

            /////TOMBOL SET LOCATION/////
            SizedBox(
              height: 30,
              width: 180,
              child: ElevatedButton(
                onPressed: _updatePosition,
                child: Text("Set Location"),
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Color.fromARGB(255, 234, 143, 174),
                ),
              ),
            ),

            SizedBox(height: 10),

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
    );
  }
}
