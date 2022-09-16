import 'package:flutter/material.dart';
import 'package:swamedika/model/database.dart';

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
          // Setting buat urusan sliverAppBar
          pinned: _pinned,
          snap: _snap,
          floating: _floating,
          backgroundColor: Colors.grey,
          // Setting Sliver Image
          expandedHeight: tinggi / 3.06,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              dataSource.image,
              fit: BoxFit.cover,
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
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF333333),
                              fontStyle: FontStyle.normal,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 150.4,
                          ),

                          // Tag
                          Text(
                            "Tag: ${dataSource.cate}",
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Color(0xFF000000),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 28.923,
                          ),

                          // Deskripsi
                          const Text(
                            "Informasi Umum",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 24,
                              color: Color(0xFF333333),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),

                          // Content Deskripsi
                          Text(
                            dataSource.desc,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontFamily: "Poppins",
                              fontSize: 13,
                              fontStyle: FontStyle.normal,
                              height: 1.2,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 37.6,
                          ),

                          // Manfaat
                          const Text(
                            "Khasiat",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 24,
                              color: Color(0xFF333333),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),

                          // Manfaat
                          Padding(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            child: Text(
                              dataSource.khasiat,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Poppins",
                                height: 1.21,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 25.06,
                          ),

                          const Text(
                            "Penggunaan",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 24,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),

                          // Content Cara Penyajian
                          Text(
                            dataSource.serve,
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Poppins",
                                height: 1.21),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 37.6,
                          ),

                          //Keamanan
                          const Text(
                            "Keamanan",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 24,
                              color: Color(0xFF333333),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),

                          // Manfaat
                          Padding(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            child: Text(
                              dataSource.keamanan,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Poppins",
                                  height: 1.21),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),
                          //Peringatan
                          const Text(
                            "Peringatan",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 24,
                                color: Color(0xFF333333),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                height: 1.2),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 75.2,
                          ),

                          // Manfaat
                          Padding(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            child: Text(
                              dataSource.peringatan,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Poppins",
                                  height: 1.21),
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
