// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:swamedika/views/constants/r.dart';
import 'package:swamedika/views/controlleres/book_controllers.dart';
// import 'package:url_launcher/url_launcher.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({
    Key? key,
    required this.isbn,
  }) : super(key: key);
  final String isbn;

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  BookController? controller;
  @override
  void initState() {
    super.initState();
    controller = Provider.of<BookController>(context, listen: false);
    controller!.fetchDetailBookApi(widget.isbn);
  }

  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BookController>(builder: (context, controller, child) {
        return controller.detailBook == null
            ? const Center(child: CircularProgressIndicator())
            : FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString("assets/data/data.json"),
                builder: (context, snapshot) {
                  var dataJson = json.decode(snapshot.data.toString());
                  return CustomScrollView(slivers: [
                    SliverAppBar(
                      pinned: _pinned,
                      snap: _snap,
                      floating: _floating,
                      expandedHeight: 250,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image.network(
                          controller.detailBook!.image!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Column(children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          // Judul
                                          Text(
                                            "Pengobatan Batuk Dengan Swamedika",
                                            style: TextStyle(
                                                fontFamily: "Sans-serif",
                                                fontSize: 24,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.normal,
                                                height: 1.2),
                                          ),
                                          SizedBox(height: 1),

                                          // Tag
                                          Text(
                                            "Tag: Rempah",
                                            style: TextStyle(
                                                fontFamily: "Sans-serif",
                                                fontSize: 12,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5),
                                          ),
                                          SizedBox(height: 35),

                                          // Deskripsi
                                          Text(
                                            "Deskripsi",
                                            style: TextStyle(
                                                fontFamily: "Sans-serif",
                                                fontSize: 24,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2),
                                          ),
                                          SizedBox(height: 8),

                                          // Content Deskripsi
                                          Text(
                                            "Jahe memiliki komponen zat aktif yang bisa membantu mengurangi gejala pilek, batuk, dan sakit tenggorokan. Jenis rempah ini dapat memberikan rasa hangat sehingga membantu melegakan tenggorokan. Alhasil, batuk pun bisa mereda lebih cepat.",
                                            style: TextStyle(
                                                color: Color(0xFF828282),
                                                fontFamily: "Sans-serif",
                                                fontSize: 14,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2),
                                            textAlign: TextAlign.justify,
                                          ),
                                          SizedBox(height: 17),

                                          // Cara Penyajian
                                          Text(
                                            "Cara Penyajian",
                                            style: TextStyle(
                                                fontFamily: "Sans-serif",
                                                fontSize: 24,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2),
                                          ),
                                          SizedBox(height: 8),

                                          // Content Cara Penyajian
                                          Text(
                                            "Anda bisa memilih mencampurkan jahe pada teh. Untuk membuat teh jahe, haluskanlah jahe menjadi bubuk terlebih dulu. Ambil sekitar 2 sendok teh bubuk jahe dan rebus dalam air hingga mendidih selama beberapa menit. Saring larutan jahe ini untuk mendapatkan sarinya dan masukkan teh ke dalamnya. Minumlah teh jahe untuk obat batuk ini selagi hangat.",
                                            style: TextStyle(
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
                  ]);
                });
      }),
    );
  }
}
