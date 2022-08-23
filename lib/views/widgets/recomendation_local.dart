import 'package:flutter/material.dart';
import 'package:swamedika/model/recomendation_data.dart';
import 'package:swamedika/views/pages/detail.dart';
import 'package:swamedika/views/widgets/news_section.dart';

class RecomendationLocal extends StatefulWidget {
  const RecomendationLocal({super.key});

  @override
  State<RecomendationLocal> createState() => _RecomendationLocalState();
}

class _RecomendationLocalState extends State<RecomendationLocal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 2.0,
            right: 15.0,
            left: 15.0,
          ),
          child: Text(
            'Pengobatan Covid Dengan Swamedika',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: recomendationdataContents.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.transparent,
                                  offset: Offset(0.0, 4.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    recomendationdataContents[index].image,
                                    width: 130,
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 15.0,
                                    left: 5,
                                  ),
                                  child: Text(
                                    recomendationdataContents[index].title,
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
        const NewsSection()
      ],
    );
  }
}
