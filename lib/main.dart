import 'package:flutter/material.dart';
import 'package:hackathon_gdsc/LoginScreen/login.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late IO.Socket socket;

   @override
  void initState() {
    super.initState();
    socket = IO.io('https://your-server-url.com', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket.connect();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gender Equality and Empowerment in Society',
      home: LoginPage(),
    );
  }
}
