import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

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
                    color: Color.fromARGB(255, 55, 78, 123),
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
                        children: [
                          Text(
                            "Your Points : ",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "1000 pts",
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
        
                  SizedBox(height: 20),
        
                  ///////////HADIAH 1///////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 55, 78, 123),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Row(
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://alfamart.co.id/storage/page/February2022/dRNzzS17nfiafonStDGR.png",
                                scale: 4),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Gopay E-Voucher Rp 100.000",
                                style: TextStyle(
                                  fontSize: 18,
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
                  
                  SizedBox(height: 20),
                  
                  ///////////HADIAH 2///////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 55, 78, 123),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Row(
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://alfamart.co.id/storage/page/February2022/dRNzzS17nfiafonStDGR.png",
                                scale: 4),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Gopay E-Voucher Rp 100.000",
                                style: TextStyle(
                                  fontSize: 18,
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
                  SizedBox(height: 20),
                  
                  ///////////HADIAH 3///////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 55, 78, 123),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Row(
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://alfamart.co.id/storage/page/February2022/dRNzzS17nfiafonStDGR.png",
                                scale: 4),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Gopay E-Voucher Rp 100.000",
                                style: TextStyle(
                                  fontSize: 18,
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
                  SizedBox(height: 20),
                  
                  ///////////HADIAH 4///////////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 55, 78, 123),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Row(
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://alfamart.co.id/storage/page/February2022/dRNzzS17nfiafonStDGR.png",
                                scale: 4),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Gopay E-Voucher Rp 100.000",
                                style: TextStyle(
                                  fontSize: 18,
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
