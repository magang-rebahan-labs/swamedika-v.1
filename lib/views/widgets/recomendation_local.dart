// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:swamedika/model/recomendation_data.dart';
import 'package:swamedika/views/pages/detail.dart';
import 'package:swamedika/views/widgets/appbar.dart';
import 'package:swamedika/views/widgets/new_news_section.dart';

class RecomendationLocal extends StatefulWidget {
  const RecomendationLocal({super.key});

  @override
  State<RecomendationLocal> createState() => _RecomendationLocalState();
}

class _RecomendationLocalState extends State<RecomendationLocal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height / 2.9),
        child: const AppBarSearch(),
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Rekomendasi
            const Padding(
              padding: EdgeInsets.only(),
              child: Text(
                'Rekomendasi Pengobatan Swamedikasi',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sans-serif",
                ),
              ),
            ),

            // Konten (Gambar) Rekomendasi
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 58),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: recomendationdataContents.length,
                itemBuilder: (context, index) {
                  // Ukuran Media query untuk dibawah
                  final senData = recomendationdataContents[index];
                  final sizeImage = MediaQuery.of(context).size.height / 8.12;

                  // Gambar dan Title
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              subtitle: senData.subtitle,
                              title: senData.title,
                              desc: senData.desc,
                              serve: senData.serve,
                              image: senData.image,
                              cate: senData.cate,
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
                                      recomendationdataContents[index].image,
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
                                      recomendationdataContents[index].title,
                                      maxLines: 2,
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontFamily: "Sans-serif",
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold)),
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
                style: TextStyle(
                    fontFamily: "Sans-serif",
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
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
