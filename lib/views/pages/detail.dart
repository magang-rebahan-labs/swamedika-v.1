import 'package:flutter/material.dart';
// import 'package:swamedika/model/recomendation_data.dart';

// class Details {
//   final String id;
//   const Details(this.id);
// }

class DetailPage extends StatefulWidget {
  const DetailPage(
      {Key? key,
      required this.subtitle,
      required this.title,
      required this.desc,
      required this.serve,
      required this.image,
      required this.cate})
      : super(key: key);
  final String subtitle;
  final String title;
  final String desc;
  final String serve;
  final String image;
  final String cate;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  // String get recomendationdataContent => recomendationdataContent;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.height / 2.96);
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          // Setting buat urusan sliverAppBar
          pinned: _pinned,
          snap: _snap,
          floating: _floating,

          // Setting Sliver Image
          expandedHeight: MediaQuery.of(context).size.height / 2.96,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
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

                          // Cara Penyajian
                          const Text(
                            "Cara Penyajian",
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
