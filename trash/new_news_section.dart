import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:swamedika/model/new_news_response.dart';
import 'package:http/http.dart' as http;
import 'package:swamedika/views/utils/custom_textstyle.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

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
        Container(
          child: newsList == null
              ? const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: newsList!.articles!.length,
                      itemBuilder: (context, index) {
                        // Variable
                        final currentNews = newsList!.articles![index];
                        DateTime parseDate =
                            DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'")
                                .parse(currentNews.publishedAt!);
                        var inputDate = DateTime.parse(parseDate.toString());
                        var outputFormat = DateFormat('dd MMMM yyyy');
                        var outputDate = outputFormat.format(inputDate);

                        // Konten
                        return Container(
                          margin:
                              const EdgeInsets.only(right: 8.0, bottom: 21.41),
                          child: GestureDetector(
                            onTap: () async {
                              Uri uri = Uri.parse(currentNews.url!);
                              try {
                                (await canLaunchUrl(uri))
                                    ? launchUrl(uri,
                                        mode: LaunchMode.externalApplication)
                                    : debugPrint('tidak berhasil');
                              } catch (e) {
                                debugPrint('error');
                              }
                            },
                            child: Container(
                              child: currentNews.urlToImage == null
                                  ? Container()
                                  : Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              8.12,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              8.12, // Setting tingginya

                                          // Box gambarnya
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: Colors.white38,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                currentNews.urlToImage!,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            // height: 300,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                              ),
                                              color: Colors.transparent,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  top: 5,
                                                  bottom: 5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    // "Kasus Positif Covid-19 Mingguan naik lebih dari 15 kali lipat selama 2 bulan",
                                                    currentNews.title!,
                                                    style: kNewsTitle,
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              73.81),
                                                  Text(
                                                    outputDate,
                                                    style: kNewsDate,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
        )
      ],
    );
  }
}
