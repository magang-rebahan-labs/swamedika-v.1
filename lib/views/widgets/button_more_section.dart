import 'package:flutter/material.dart';

class ButtonMore extends StatefulWidget {
  const ButtonMore({Key? key}) : super(key: key);

  @override
  State<ButtonMore> createState() => _ButtonMoreState();
}

class _ButtonMoreState extends State<ButtonMore> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.119,
      child: Column(
        children: [
          // BUTTON TENTANG KAMI
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minimumSize:
                  Size.fromHeight(MediaQuery.of(context).size.height / 16.24),
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
                      height: MediaQuery.of(context).size.height * 0.4,
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
                                      height: 3),
                                ),
                                Text(
                                  'Swamedika Thibbun Nabawi adalah aplikasi yang mengedukasi masyarakat untuk pengobatan yang dianjurkan oleh Nabi. Bahan-bahan yang digunakan dalam pengobatan ini merupakan bahan alami berkhasiat obat yang dikenal dalam dunia farmasi.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(fontSize: 15, height: 2.3),
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
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 19,
                  color: Colors.black,
                ),
              ],
            ),
          ),

          // BUTTON CATATAN RILIS
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              minimumSize:
                  Size.fromHeight(MediaQuery.of(context).size.height / 16.24),
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
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          child: SingleChildScrollView(
                            child: Column(
                              children: const [
                                Text(
                                  'Catatan Rilis',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      height: 3),
                                ),
                                Text(
                                  'Versi 1.0.0 | 29/08/2022',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 15, height: 2.3),
                                ),
                                Text(
                                  '- Perbaikan Bug',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 15, height: 2.3),
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
                  'Catatan Rilis',
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 19,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
