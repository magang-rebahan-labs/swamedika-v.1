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
                            widget.subtitle,
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF333333),
                                fontStyle: FontStyle.normal,
                                height: 1.2),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 150.4),

                          // Tag
                          Text(
                            "Tag: ${widget.cate}",
                            style: const TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                color: Color(0xFF000000),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                height: 1.5),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 28.923),

                          // Deskripsi
                          const Text(
                            "Deskripsi",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 24,
                                color: Color(0xFF333333),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                height: 1.2),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 75.2),

                          // Content Deskripsi
                          Text(
                            widget.desc,
                            style: const TextStyle(
                                color: Color(0xFF828282),
                                fontFamily: "Poppins",
                                fontSize: 13,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w200,
                                height: 1.2),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 37.6),

                          // Cara Penyajian
                          const Text(
                            "Manfaat",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 24,
                                color: Color(0xFF333333),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                height: 1.2),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 75.2),

                          // Content Cara Penyajian
                          Padding(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            child: Text(
                              widget.manfaat,
                              style: const TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Poppins",
                                  height: 1.21),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 25.06),

                          const Text(
                            "Saran Penyajian",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                height: 1.2),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 75.2),

                          // Content Cara Penyajian
                          Text(
                            widget.serve,
                            style: const TextStyle(
                                color: Color(0xFF828282),
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Poppins",
                                height: 1.21),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 37.6),

                          // Content Anjuran
                          const Text(
                            "Anjuran",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                height: 1.2),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 75.2),

                          // Content Anjuran
                          const Text(
                            // widget.serve,
                            "Membaca Basmalah sebelum sebelum meminum",
                            style: TextStyle(
                                color: Color(0xFF828282),
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Poppins",
                                height: 1.21),
                            textAlign: TextAlign.left,
                          ),
                          // SizedBox(height: 17),
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
