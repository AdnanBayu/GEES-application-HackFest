// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  final int PoinUser = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 234, 143, 174),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ////////////AWAL TOP BAR////////////
              Material(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 55, 78, 123),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 150,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Your Points : ",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            PoinUser.toString(),
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ////////////AKHIR TOP BAR////////////

              ///////////AWAL DAFTAR HADIAH///////////
              Column(
                children: [
                  SizedBox(height: 10),
                  ///
                  ///////////HADIAH 1///////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: const Color.fromARGB(255, 55, 78, 123),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assetSaya/gopayLogo.png",
                            scale: 7,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Gopay E-Voucher Rp 100.000",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "required 12.000 points",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///////////HADIAH 1///////////
                  ///
                  SizedBox(height: 10),
                  ///
                  ///////////HADIAH 2///////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: const Color.fromARGB(255, 55, 78, 123),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assetSaya/gopayLogo.png",
                            scale: 7,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Gopay E-Voucher Rp 100.000",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "required 12.000 points",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///////////HADIAH 2///////////
                  ///
                  SizedBox(height: 10),
                  ///
                  ///////////HADIAH 3///////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: const Color.fromARGB(255, 55, 78, 123),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assetSaya/gopayLogo.png",
                            scale: 7,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Gopay E-Voucher Rp 100.000",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "required 12.000 points",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///////////HADIAH 3///////////
                  ///
                  ///SizedBox(height: 10),
                  ///
                  ///////////HADIAH 4///////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: const Color.fromARGB(255, 55, 78, 123),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assetSaya/gopayLogo.png",
                            scale: 7,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Gopay E-Voucher Rp 100.000",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "required 12.000 points",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///////////HADIAH 4///////////
                  ///
                  ///SizedBox(height: 10),
                  ///
                  ///////////HADIAH 5///////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: const Color.fromARGB(255, 55, 78, 123),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assetSaya/gopayLogo.png",
                            scale: 7,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Gopay E-Voucher Rp 100.000",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "required 12.000 points",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///////////HADIAH 5///////////
                  ///
                  ///SizedBox(height: 10),
                  ///
                  ///////////HADIAH 6///////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: const Color.fromARGB(255, 55, 78, 123),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assetSaya/gopayLogo.png",
                            scale: 7,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Gopay E-Voucher Rp 100.000",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "required 12.000 points",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///////////HADIAH 6///////////
                  ///
                ],
              )
              ///////////AKHIR DAFTAR HADIAH///////////
            ],
          ),
        ),
      ),
    );
  }
}
