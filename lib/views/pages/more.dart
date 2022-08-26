import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/services.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (BuildContext context) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          // BAGIAN APPBAR
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarBrightness: Brightness.dark,
                statusBarIconBrightness: Brightness.dark,
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () { Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black,
              elevation: 0,
            ),
          ),

          // BAGIAN DESKRIPSI
          body: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Lainnya',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Text(
                      'Kamu dapat mencari info yang kamu butuhkan disini',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
              ),

              // BAGIAN GARIS PEMBATAS (DOTTED LINE)
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width,
                child: const DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 0.8,
                  dashLength: 4.0,
                  dashColor: Colors.grey,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                ),
              ),

              // BAGIAN TOMBOL
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // BUTTON TENTANG KAMI
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        minimumSize: const Size(300, 45),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0),
                              ),
                            ),
                            builder: (context) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                child: SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Tentang Kami',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            height: 3),
                                      ),
                                      Text(
                                        'Swamedika Thibbun Nabawi adalah aplikasi yang mengedukasi masyarakat untuk pengobatan yang dianjurkan oleh nabi. Bahan-bahan yang digunakan dalam pengobatan ini merupakan bahan alami berkhasiat obat yang dikenal dalam dunia farmasi.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15, height: 1.5),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Tentang Kami',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 19,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),

                    // BUTTON RELEASE NOTES
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        minimumSize: const Size(300, 45),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0),
                              ),
                            ),
                            builder: (context) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                child: SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Release Notes',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            height: 3),
                                      ),
                                      Text(
                                        'Versi 1.0.0 BETA | 25/08/2022',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15, height: 1.5),
                                      ),
                                      Text(
                                        '- Perbaikan bug',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15, height: 1.5),
                                      ),
                                      Text(
                                        '- Perbaikan overflowed bottom pada beberapa perangkat',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15, height: 1.5),
                                      ),
                                      Text(
                                        '- Penambahan desain dotted line pada page More',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15, height: 1.5),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Release Notes',
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 19,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
