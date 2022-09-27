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
    final dataSource = ModalRoute.of(context)!.settings.arguments as Databases;

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
                dataSource.image,
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

                          // Manfaat
                          const Text(
                            "Khasiat",
                            style: kEveryTitleDetail,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),

                          // Manfaat
                          Padding(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            child: Text(
                              dataSource.khasiat,
                              style: kEveryDataDetail,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 25.06,
                          ),

                          const Text(
                            "Penggunaan",
                            style: kEveryTitleDetail,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),

                          // Content Cara Penyajian
                          Text(
                            dataSource.penggunaan,
                            style: kEveryDataDetail,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 37.6,
                          ),

                          //Keamanan
                          const Text(
                            "Keamanan",
                            style: kEveryTitleDetail,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),

                          // Manfaat
                          Padding(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            child: Text(
                              dataSource.keamanan,
                              style: kEveryDataDetail,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),
                          //Peringatan
                          const Text(
                            "Peringatan",
                            style: kEveryTitleDetail,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),

                          // Manfaat
                          Padding(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            child: Text(
                              dataSource.peringatan,
                              style: kEveryDataDetail,
                              textAlign: TextAlign.justify,
                            ),
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
