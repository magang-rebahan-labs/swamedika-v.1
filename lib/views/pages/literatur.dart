// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            // leading: IconButton(
            //     icon: const Icon(Icons.arrow_back_ios_new_rounded),
            //     onPressed: () => Navigator.of(context).pop()),
            centerTitle: true,
            title: const Text(
              'Literatur',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // BUKU PEDOMAN PENGGUNAAN HERBAL & SK DALAM MENGHADAPI COVID 19
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: GestureDetector(
                  onTap: () async {
                    const url = 'https://www.pom.go.id/new/view/direct/hotissue-covid19';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
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
                        height: MediaQuery.of(context).size.height / 6.71,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/literatur/covid19pedoman.png'),
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
              ),

              // BUKU SAKU OBAT TRADISIONAL
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: GestureDetector(
                  onTap: () async {
                    const url = 'https://www.pom.go.id/new/view/direct/hotissue-covid19';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
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
              ),

              // JURNAL ILMIAH 1
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: GestureDetector(
                  onTap: () async {
                    const url = 'http://jurnal.globalhealthsciencegroup.com/index.php/JPPP/article/view/947/665';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
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
                                    'assets/images/literatur/stjurnalmadu.png'),
                                fit: BoxFit.fill)),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Jurnal Manfaat Madu Sebagai Terapi Adjuvan Pada Pasien COVID-19 Dengan Sakit Tenggorokan',
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
              ),

              // JURNAL ILMIAH 2
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: GestureDetector(
                  onTap: () async {
                    const url = 'https://repository.unmul.ac.id/bitstream/handle/123456789/16459/5.%20Minuman%20Tradisional%20dari%20halaman%20rumah.pdf?sequence=1&isAllowed=y';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
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
                                    'assets/images/literatur/mintradisional.png'),
                                fit: BoxFit.fill)),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Minuman Tradisional dari Halaman Rumah',
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
              ),
            ],
          ),
        ));
  }
}
