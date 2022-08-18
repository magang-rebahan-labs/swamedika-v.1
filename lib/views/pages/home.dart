// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:swamedika/model/booklist_response.dart';
import 'package:swamedika/views/pages/content_screen.dart';
// import 'package:swamedika/views/pages/detail.dart';
import 'package:swamedika/views/widgets/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBarSearch(),
      ),
      body: Column(
        children: [
          Container(
            child: bookList == null
                ? const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(child: CircularProgressIndicator()),
                  )
                : Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, right: 10, left: 10),
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          final currentBook = bookList!.books![index];
                          return SizedBox(
                            width: 120,
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
                                  Image.network(
                                    currentBook.image!,
                                    height: 150,
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
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
