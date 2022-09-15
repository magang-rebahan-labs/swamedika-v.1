import 'package:flutter/material.dart';

class Literatur extends StatelessWidget {
  const Literatur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height / 6.413),
          child: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.of(context).pop()),
            centerTitle: true,
            title: const Text(
              'Literatur',
              style:
                  TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins"),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // BUKU SAKU PROBIOTIK
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        '1.',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/literatur/bs-probiotik.png'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Buku Saku Probiotik',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'Poppins'),
                            ),
                            Text(
                              'eBook',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // BUKU SAKU VITAMIN C
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        '2.',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/literatur/bs-vitaminc.png'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Buku Saku Vitamin C',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'Poppins'),
                            ),
                            Text(
                              'eBook',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // BUKU SAKU VITAMIN D
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        '3.',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/literatur/bs-vitamind.png'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Buku Saku Vitamin D',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'Poppins'),
                            ),
                            Text(
                              'eBook',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // BUKU SAKU VITAMIN E
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        '4.',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/literatur/bs-vitamine.png'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Buku Saku Vitamin E',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'Poppins'),
                            ),
                            Text(
                              'eBook',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // BUKU SAKU ZINK
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        '5.',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/literatur/bs-zink.png'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Buku Saku Zink',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'Poppins'),
                            ),
                            Text(
                              'eBook',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // BUKU SAKU SELENIUM
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        '6.',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/literatur/bs-selenium.png'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Buku Saku Selenium',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'Poppins'),
                            ),
                            Text(
                              'eBook',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // BUKU PEDOMAN PENGGUNAAN HERBAL & SK DALAM MENGHADAPI COVID 19
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        '7.',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/literatur/pedomansup-covid19.png'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Buku Pedoman Penggunaan Herbal & SK Dalam Menghadapi Covid 19',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'Poppins'),
                            ),
                            Text(
                              'eBook',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // BUKU SAKU OBAT TRADISIONAL
              Padding(
                padding: const EdgeInsets.only(
                    right: 30, left: 30, top: 50, bottom: 50),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        '8.',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/literatur/bs-obattradisional.png'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Buku Saku Obat Tradisional',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'Poppins'),
                            ),
                            Text(
                              'eBook',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
