// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:swamedika/model/database.dart';
import 'package:swamedika/views/utils/custom_textstyle.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // Variabel untuk settingan SliverAppBar
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    // Variabel untuk menghitung MediaQuiry Tinggi
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    final dataSource = ModalRoute.of(context)!.settings.arguments as Databases;
    print(lebar);
    return Scaffold(
      body: CustomScrollView(slivers: [
        // Sliver untuk AppBar
        SliverAppBar(
          backgroundColor: Colors.transparent,
          // Setting buat urusan sliverAppBar
          pinned: _pinned,
          snap: _snap,
          floating: _floating,
          // Setting Sliver Image
          expandedHeight: tinggi / 3.06,
          flexibleSpace: Container(
            // padding: EdgeInsets.symmetric(
            //   horizontal: lebar >= 850
            //       ? 100
            //       : lebar >= 1050
            //           ? 200
            //           : lebar >= 1250
            //               ? 300
            //               : 0,
            // ),
            // margin: EdgeInsets.symmetric(horizontal: isMobile),
            // margin: EdgeInsets.symmetric(horizontal: lebar >= 900 ? 100 : 0),

            // width: lebar >= 600 ? 500 : lebar,
            // width: 600,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
                  0.1,
                  0.25,
                ],
                colors: [
                  const Color(0xFF000000).withOpacity(0.5),
                  const Color(0xFFCECECE).withOpacity(0.3),
                ],
              ),
            ),
            child: FlexibleSpaceBar(
              background: Image.asset(
                dataSource.image == null
                    ? "assets/images/not_found.jpg"
                    : dataSource.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        // Sliver untuk kontennya
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Column(children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Judul
                          Text(
                            "Swamedikasi Dengan \nBahan ${dataSource.title}",
                            style: kEveryTitleDetail,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 150.4,
                          ),

                          // Tag
                          Text(
                            "Tag: ${dataSource.cate}",
                            style: kTagDetail,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 28.923,
                          ),

                          // Deskripsi
                          const Text(
                            "Informasi Umum",
                            style: kEveryTitleDetail,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),

                          // Content Deskripsi
                          Text(
                            dataSource.desc,
                            style: kEveryDataDetail,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 37.6,
                          ),

                          dataSource.hadist == null
                              ? Container()
                              :
                              // Manfaat
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Hadist",
                                      style: kEveryTitleDetail,
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              75.2,
                                    ),

                                    // Manfaat
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 3, right: 3),
                                      child: Text(
                                        dataSource.hadist!,
                                        style: kEveryDataDetail,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              25.06,
                                    ),
                                  ],
                                ),
                          dataSource.khasiat == null
                              ? Container()
                              :
                              // Manfaat
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Khasiat",
                                      style: kEveryTitleDetail,
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              75.2,
                                    ),

                                    // Manfaat
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 3, right: 3),
                                      child: Text(
                                        dataSource.khasiat!,
                                        style: kEveryDataDetail,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              25.06,
                                    ),
                                  ],
                                ),

                          //Penggunaan
                          dataSource.penggunaan == null
                              ? Container()
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Penggunaan",
                                      style: kEveryTitleDetail,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              75.2,
                                    ),

                                    // Content Cara Penyajian
                                    Text(
                                      dataSource.penggunaan!,
                                      style: kEveryDataDetail,
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              37.6,
                                    ),
                                  ],
                                ),

                          //Keamanan
                          dataSource.keamanan == null
                              ? Container()
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Keamanan",
                                      style: kEveryTitleDetail,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              75.2,
                                    ),

                                    // Manfaat
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 3, right: 3),
                                      child: Text(
                                        dataSource.keamanan!,
                                        style: kEveryDataDetail,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              75.2,
                                    ),
                                  ],
                                ),

                          //Peringatan
                          dataSource.peringatan == null
                              ? Container()
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Peringatan",
                                      style: kEveryTitleDetail,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              75.2,
                                    ),

                                    // Manfaat
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 3, right: 3),
                                      child: Text(
                                        dataSource.peringatan!,
                                        style: kEveryDataDetail,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ),
                  )
                ])
              ]);
            },
            childCount: 1,
          ),
        ),
      ]),
    );
  }
}
