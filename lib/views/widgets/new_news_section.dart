import 'package:flutter/material.dart';
import 'package:swamedika/model/recomendation_data.dart';
// import 'package:swamedika/views/constants/colors.dart';

class NewNewsSection extends StatefulWidget {
  const NewNewsSection({super.key});

  @override
  State<NewNewsSection> createState() => _NewNewsSectionState();
}

class _NewNewsSectionState extends State<NewNewsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Paddingnya buat apa???
        // Buat bungkus doang haha???
        const Padding(
          padding: EdgeInsets.only(),
          child: Text(
            'Berita Terkini Covid-19',
            style: TextStyle(
                fontFamily: "Sans-serif",
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 27.06),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: recomendationdataContents.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 8.0, bottom: 21.41),
                child: Row(
                  children: [
                    Container(
                      // Setting tingginya
                      width: MediaQuery.of(context).size.height / 8.12,
                      height: MediaQuery.of(context).size.height / 8.12,

                      // Box gambarnya
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              recomendationdataContents[index].image),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // height: 300,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Kasus Positif Covid-19 Mingguan naik lebih dari 15 kali lipat selama 2 bulan",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: 'Sans-serif',
                                    color: Color(0xFF000000),
                                    height: 1.75),
                              ),
                              // SizedBox(height: 11.0),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height /
                                      73.81),

                              const Text(
                                "4 Agustus 2022",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Sans-serif',
                                  color: Color(0xFF828282),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
