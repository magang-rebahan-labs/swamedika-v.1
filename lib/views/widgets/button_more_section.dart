import 'package:flutter/material.dart';

class ButtonMore extends StatefulWidget {
  const ButtonMore({Key? key}) : super(key: key);

  @override
  State<ButtonMore> createState() => _ButtonMoreState();
}

class _ButtonMoreState extends State<ButtonMore> {
  @override
  Widget build(BuildContext context) {
    // Variabel
    final heightVar = MediaQuery.of(context).size.height / 16.24;

    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.119,
      child: Column(
        children: [
          // BUTTON TENTANG KAMI
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              disabledBackgroundColor: Colors.black,
              elevation: 20,
              shadowColor: const Color(0xFFA3B1C6).withOpacity(0.15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              minimumSize: Size.fromHeight(heightVar),
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
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          child: SingleChildScrollView(
                            child: Column(
                              children: const [
                                Text(
                                  'Tentang Kami',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      height: 3,
                                      fontFamily: "Poppins"),
                                ),
                                Text(
                                  'Swamedikasi Thibbun Nabawi adalah aplikasi yang mengedukasi masyarakat untuk pengobatan yang dianjurkan oleh Nabi. Bahan-bahan yang digunakan dalam pengobatan ini merupakan bahan alami berkhasiat obat yang dikenal dalam dunia farmasi.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 15,
                                      height: 2.3,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                          ),
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
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF333333),
                    fontFamily: "Poppins",
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 19,
                  color: Colors.black,
                ),
              ],
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height / 101.5),

          // BUTTON CATATAN RILIS
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              disabledBackgroundColor: Colors.black,
              elevation: 20,
              shadowColor: const Color(0xFFA3B1C6).withOpacity(0.15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              minimumSize: Size.fromHeight(heightVar),
            ),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25.0)),
                  ),
                  builder: (context) {
                    // Untuk Penjelasannya
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          child: SingleChildScrollView(
                            child: Column(
                              children: const [
                                Text(
                                  'Catatan Rilis',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    height: 3,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                Text(
                                  'Versi 1.0.0 - Pra Rilis | 09/09/2022',
                                  style: TextStyle(
                                      fontSize: 15,
                                      height: 2.3,
                                      fontFamily: "Poppins"),
                                ),
                                Text(
                                  '- Peningkatan performa aplikasi',
                                  style: TextStyle(
                                      fontSize: 15,
                                      height: 2.3,
                                      fontFamily: "Poppins"),
                                ),
                                Text(
                                  '- Perbaikan bug navbar yang selalu muncul',
                                  style: TextStyle(
                                      fontSize: 15,
                                      height: 2.3,
                                      fontFamily: "Poppins"),
                                ),
                                Text(
                                  '- Perbaikan informasi berita yang tidak memunculkan gambar',
                                  style: TextStyle(
                                      fontSize: 15,
                                      height: 2.3,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Catatan Rilis',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF333333),
                      fontFamily: "Poppins",
                      // fontWeight: FontWeight.bold,
                    )),
                Icon(Icons.arrow_forward_ios_rounded,
                    size: 19, color: Colors.black),
              ],
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height / 101.5),

          // BUTTON LITERATUR
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              disabledBackgroundColor: Colors.black,
              elevation: 20,
              shadowColor: const Color(0xFFA3B1C6).withOpacity(0.15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              minimumSize: Size.fromHeight(heightVar),
            ),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25.0)),
                  ),
                  builder: (context) {
                    // Untuk Penjelasannya
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          child: SingleChildScrollView(
                            child: Column(
                              children: const [
                                Text(
                                  'Literatur',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      height: 3,
                                      fontFamily: "Poppins"),
                                ),
                                Text(
                                  'Buku Saku Pengobatan Swamedikasi BPOM',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 15,
                                      height: 2.3,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Literatur',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF333333),
                      fontFamily: "Poppins",
                      // fontWeight: FontWeight.bold,
                    )),
                Icon(Icons.arrow_forward_ios_rounded,
                    size: 19, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
