// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:swamedika/views/widgets/news_section.dart';

import '../../model/booklist_response.dart';
import '../pages/content_screen.dart';

class RecomendationSection extends StatefulWidget {
  const RecomendationSection({super.key});

  @override
  State<RecomendationSection> createState() => _RecomendationSectionState();
}

class _RecomendationSectionState extends State<RecomendationSection> {
  BookListResponse? bookList;
  fetchBookApi() async {
    var url = Uri.parse('https://api.itbook.store/1.0/new');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final jsoonBookList = jsonDecode(response.body);
      bookList = BookListResponse.fromJson(jsoonBookList);
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
                  child: Center(child: CircularProgressIndicator()),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        right: 15.0,
                        left: 15.0,
                        bottom: 5.0,
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
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          final currentBook = bookList!.books![index];
                          return SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ContentScreen(
                                        isbn: currentBook.isbn13!),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.network(
                                    currentBook.image!,
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    currentBook.title!,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const NewsSection()
                  ],
                ),
        ),
      ],
    );
  }
}
