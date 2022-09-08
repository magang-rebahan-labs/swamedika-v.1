import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'herbal_view.dart';
import 'hewani_view.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // APPBAR
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height / 4.413),
            child: AppBar(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.black,
                elevation: 0,
                flexibleSpace: Center(
                    child: Text(
                  'Kategori',
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF000000).withOpacity(0.6)),
                )))),

        // BODY
        body: Column(
          children: [
            // GARIS STRIP
            const DottedLineWidget(),

            // KONTEN KATEGORINYA
            SingleChildScrollView(
                padding: const EdgeInsets.only(right: 16, left: 16),

                // BAGIAN LISTVIEW GAMBAR
                child: Column(
                  children: [
                    // TAB NABATI
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HerbalView(),
                            ),
                          );
                        },
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(width: 1),
                              color: const Color(0xFF000000),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF000000).withOpacity(0.25),
                                  offset: const Offset(0, 4),
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/images/kategori/covernabati.png',
                                  fit: BoxFit.cover,
                                )))),

                    SizedBox(
                        height: MediaQuery.of(context).size.height / 62.461),

                    // TAB HEWANI
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HewaniView(),
                            ),
                          );
                        },
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(width: 1),
                              color: const Color(0xFF000000),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF000000).withOpacity(0.25),
                                  offset: const Offset(0, 4),
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/images/kategori/coverhewani.png',
                                  fit: BoxFit.cover,
                                )))),

                    SizedBox(
                        height: MediaQuery.of(context).size.height / 62.461),

                    // TAB JAMU
                    GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => const RempahView(),
                          //   ),
                          // );
                        },
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(width: 1),
                              color: const Color(0xFF000000),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF000000).withOpacity(0.25),
                                  offset: const Offset(0, 4),
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/images/kategori/coverjamu.png',
                                  fit: BoxFit.cover,
                                )))),
                  ],
                ))
          ],
        ));
  }
}
