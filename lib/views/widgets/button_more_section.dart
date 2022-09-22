import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swamedika/views/pages/literatur.dart';
import 'package:swamedika/views/utils/custom_textstyle.dart';

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
                                  style: kMoreTitle,
                                ),
                                Text(
                                  'Swamedikasi Thibbun Nabawi adalah aplikasi yang mengedukasi masyarakat untuk pengobatan yang dianjurkan oleh Nabi. Bahan-bahan yang digunakan dalam pengobatan ini merupakan bahan alami berkhasiat obat yang dikenal dalam dunia farmasi.',
                                  textAlign: TextAlign.justify,
                                  style: kTextMore,
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
                  style: kListTitleMore,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Center(
                                  child: Text(
                                    'Catatan Rilis',
                                    style: kMoreTitle,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'Versi 1.0.0 - BETA | 21/09/2022',
                                    style: kTextMore,
                                  ),
                                ),
                                Text(
                                  '- Perbaikan Bug Overflowed Bottom',
                                  style: kTextMore,
                                ),
                                Text(
                                  '- Perbaikan Tab Kategori',
                                  style: kTextMore,
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
                  style: kListTitleMore,
                ),
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
              Navigator.push(
                context,
                PageTransition(
                  child: const Literatur(),
                  type: PageTransitionType.rightToLeft,
                  duration: const Duration(
                    milliseconds: 400,
                  ),
                  reverseDuration: const Duration(
                    milliseconds: 400,
                  ),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Literatur',
                  style: kListTitleMore,
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
