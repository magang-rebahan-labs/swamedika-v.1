import 'package:flutter/material.dart';
import 'package:swamedika/model/recomendation_data.dart';
import 'package:swamedika/model/new_news_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// import 'package:swamedika/views/constants/colors.dart';

class NewNewsSection extends StatefulWidget {
  const NewNewsSection({super.key});

  @override
  State<NewNewsSection> createState() => _NewNewsSectionState();
}

class _NewNewsSectionState extends State<NewNewsSection> {
  NewNewsSectionModel? newsList;
  fetchNewsApi() async {
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?category=health&country=id&apiKey=a02a45cc19264809becd195367877dde");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonNewsList = jsonDecode(response.body);
      newsList = NewNewsSectionModel.fromJson(jsonNewsList);
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    fetchNewsApi();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: recomendationdataContents.length,
            itemBuilder: (context, index) {
              final currentNews = newsList!.articles![index];
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
                              Text(
                                // "Kasus Positif Covid-19 Mingguan naik lebih dari 15 kali lipat selama 2 bulan",
                                currentNews.title!,
                                style: const TextStyle(
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

                              Text(
                                // "4 Agustus 2022",
                                currentNews.publishedAt!,
                                style: const TextStyle(
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
