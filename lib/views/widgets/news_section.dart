import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:swamedika/model/newsapi_response.dart';
// import 'package:swamedika/model/booklist_response.dart';
import 'package:http/http.dart' as http;
import '../pages/detail.dart';

class NewsSection extends StatefulWidget {
  const NewsSection({super.key});

  @override
  State<NewsSection> createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {
  NewsApi? bookList;
  fetchBookApi() async {
    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=id&apiKey=a02a45cc19264809becd195367877dde');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      final jsoonBookList = jsonDecode(response.body);
      bookList = NewsApi.fromJson(jsoonBookList);
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    fetchBookApi();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: bookList == null
              ? const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        right: 10.0,
                        left: 15.0,
                        bottom: 5.0,
                      ),
                      child: Text(
                        'Berita Terkini Covid-19',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.27,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              final currentBook = bookList!.articles![index];
                              return SizedBox(
                                width: MediaQuery.of(context).size.width * 0.30,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const DetailPage(
                                          image: '',
                                          desc: '',
                                          serve: '',
                                          title: '',
                                          cate: '',
                                          subtitle: '',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        currentBook.urlToImage!,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.18,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
        )
      ],
    );
  }
}
