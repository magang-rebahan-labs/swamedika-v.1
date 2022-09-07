import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage(
      {Key? key,
      required this.subtitle,
      required this.title,
      required this.desc,
      required this.manfaat,
      required this.serve,
      required this.image,
      required this.cate})
      : super(key: key);
  final String subtitle;
  final String title;
  final String desc;
  final String manfaat;
  final String serve;
  final String image;
  final String cate;

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
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Sliver untuk kontennya
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Column(
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Judul
                            Text(
                              widget.subtitle,
                              style: const TextStyle(
                                  fontFamily: "Sans-serif",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  height: 1.2),
                            ),
                            const SizedBox(height: 1),

                            // Tag
                            Text(
                              "Tag: ${widget.cate}",
                              style: const TextStyle(
                                  fontFamily: "Sans-serif",
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5),
                            ),
                            const SizedBox(height: 35),

                            // Deskripsi
                            const Text(
                              "Deskripsi",
                              style: TextStyle(
                                  fontFamily: "Sans-serif",
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2),
                            ),
                            const SizedBox(height: 8),

                            // Content Deskripsi
                            Text(
                              widget.desc,
                              style: const TextStyle(
                                  color: Color(0xFF828282),
                                  fontFamily: "Sans-serif",
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 17),

                            //Manfaat
                            const Text(
                              "Manfaat",
                              style: TextStyle(
                                  fontFamily: "Sans-serif",
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2),
                            ),
                            const SizedBox(height: 8),

                            // Content Manfaat
                            Text(
                              widget.manfaat,
                              style: const TextStyle(
                                  color: Color(0xFF828282),
                                  fontFamily: "Sans-serif",
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 17),

                            // Cara Penyajian
                            const Text(
                              "Saran Penyajian",
                              style: TextStyle(
                                  fontFamily: "Sans-serif",
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2),
                            ),
                            const SizedBox(height: 8),

                            // Content Cara Penyajian
                            Text(
                              widget.serve,
                              style: const TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Sans-serif",
                                  height: 1.21),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 17),

                            const Text(
                              "Anjuran",
                              style: TextStyle(
                                  fontFamily: "Sans-serif",
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2),
                            ),
                            const SizedBox(height: 8),

                            const Text(
                              'Membaca Basmalah sebelum meminum.',
                              style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Sans-serif",
                                  height: 1.21),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    )
                  ])
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ]),
    );
  }
}
