import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swamedika/views/utils/custom_textstyle.dart';
import '../widgets/widgets.dart';
import 'detail.dart';
import 'package:swamedika/model/database.dart';

class RecomendationLocal extends StatefulWidget {
  const RecomendationLocal({super.key});

  @override
  State<RecomendationLocal> createState() => _RecomendationLocalState();
}

class _RecomendationLocalState extends State<RecomendationLocal> {
  var data = databaseContent.shuffle();
  @override
  Widget build(BuildContext context) {
    final marginContainer = MediaQuery.of(context).size.width / 23.4375;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          MediaQuery.of(context).size.height / 3.2,
        ),
        child: const AppBarSearch(),
      ),
      body: Container(
        margin: EdgeInsets.only(right: marginContainer, left: marginContainer),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Rekomendasi
            Text(
              'Rekomendasi Pengobatan Swamedikasi',
              style: kJudul.copyWith(
                  fontSize: 14 * MediaQuery.of(context).textScaleFactor),
            ),

            // Konten (Gambar) Rekomendasi
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 58),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  // Ukuran Media query untuk dibawah
                  final senData = databaseContent[index];
                  final sizeImage = MediaQuery.of(context).size.height / 8.12;

                  // Gambar dan Title
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: const DetailPage(),
                            type: PageTransitionType.rightToLeft,
                            duration: const Duration(
                              milliseconds: 300,
                            ),
                            reverseDuration: const Duration(
                              milliseconds: 300,
                            ),
                            settings: RouteSettings(
                              arguments: senData,
                            ),
                          ),
                        );
                      },

                      // Setting kotakan gambarnya
                      child: Column(
                        children: [
                          Container(
                            // Setting containernya
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.transparent,
                                  offset: Offset(0.0, 4.0),
                                  blurRadius: 6.0,
                                )
                              ],
                            ),

                            // Setting gambar dan judulnya
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Setting gambarnya
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.asset(
                                      databaseContent[index].image,
                                      // scale: 0,
                                      fit: BoxFit.cover,
                                      width: sizeImage,
                                      height: sizeImage,
                                    )
                                    // width: 130,
                                    // height: MediaQuery.of(context).size.height * 0.15),
                                    ),

                                // Setting judulnya
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height /
                                          203),
                                  child: Text(
                                    databaseContent[index].title,
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: kTitleBahan.copyWith(
                                        fontSize: 11 *
                                            MediaQuery.of(context)
                                                .textScaleFactor),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 27.06),
              child: const Text(
                'Berita Kesehatan Terkini',
                style: kJudul,
              ),
            ),

            const Expanded(
              child: SingleChildScrollView(
                child: NewNewsSection(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
