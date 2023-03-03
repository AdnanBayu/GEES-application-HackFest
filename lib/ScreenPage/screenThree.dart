// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  final int PoinUser = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 252, 237, 242),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ////////////AWAL TOP BAR////////////
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 80,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 234, 143, 174),
                      ),
                      child: Image.asset(
                        "assetSaya/logoGEES-Gdoang.png",
                        scale: 7,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 80,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 55, 78, 123),
                      ),
                      child: Icon(
                        Icons.account_circle,
                        size: 70,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ////////////AKHIR TOP BAR////////////

                SizedBox(height: 15),

                ///////////JUMLAH POIN///////////
                Row(
                  children: [
                    SizedBox(width: 30),
                    Text(
                      "Koin anda: $PoinUser",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      "assetSaya/icon-koin.png",
                      scale: 11,
                    )
                  ],
                ),
                ///////////JUMLAH POIN///////////

                SizedBox(height: 5),

                ///////////AWAL DAFTAR HADIAH///////////
                Column(
                  children: [
                    ///
                    ///////////HADIAH 1///////////
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 10),
                      child: SizedBox(
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor:
                                const Color.fromARGB(255, 234, 143, 174),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assetSaya/gopayLogo.png",
                                scale: 7,
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                    ),
                    ///////////HADIAH 1///////////
                    ///

                    ///////////HADIAH 2///////////
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 10),
                      child: SizedBox(
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor:
                                const Color.fromARGB(255, 234, 143, 174),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assetSaya/gopayLogo.png",
                                scale: 7,
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                    ),
                    ///////////HADIAH 2///////////
                    ///

                    ///////////HADIAH 3///////////
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 10),
                      child: SizedBox(
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor:
                                const Color.fromARGB(255, 234, 143, 174),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assetSaya/paypalLogo.png",
                                scale: 18,
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Paypal E-Voucher Rp 100.000",
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
                    ),
                    ///////////HADIAH 3///////////
                    ///

                    ///////////HADIAH 4///////////
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 10),
                      child: SizedBox(
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor:
                                const Color.fromARGB(255, 234, 143, 174),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assetSaya/paypalLogo.png",
                                scale: 18,
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Paypal E-Voucher Rp 100.000",
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
                    ),
                    ///////////HADIAH 4///////////
                    ///

                    ///////////HADIAH 5///////////
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 10),
                      child: SizedBox(
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor:
                                const Color.fromARGB(255, 234, 143, 174),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assetSaya/ovoLogo.png",
                                scale: 9,
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "OVO E-Voucher Rp 100.000",
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
                    ),
                    ///////////HADIAH 5///////////
                    ///

                    ///////////HADIAH 6///////////
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 10),
                      child: SizedBox(
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor:
                                const Color.fromARGB(255, 234, 143, 174),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assetSaya/ovoLogo.png",
                                scale: 9,
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "OVO E-Voucher Rp 100.000",
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
      ),
    );
  }
}
