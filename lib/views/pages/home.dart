// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:swamedika/model/booklist_response.dart';
import 'package:swamedika/views/pages/content_screen.dart';
import 'package:swamedika/views/pages/detail.dart';
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
                : Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 20.0,
                          right: 115.0,
                          left: 10.0,
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
                                      builder: (context) => ContentScreen(
                                          isbn: currentBook.isbn13!),
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
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Column(
                          children: [
                            Container(
                              child: bookList == null
                                  ? const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          backgroundColor: Colors.red,
                                        ),
                                      ),
                                    )
                                  : Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                            top: 10.0,
                                            right: 210.0,
                                            left: 10.0,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 249,
                                              child: ListView.builder(
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: 5,
                                                itemBuilder: (context, index) {
                                                  final currentBook =
                                                      bookList!.books![index];
                                                  return SizedBox(
                                                    width: 120,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .push(
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                const DetailPage(),
                                                          ),
                                                        );
                                                      },
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Image.network(
                                                            currentBook.image!,
                                                            height: 150,
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
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 55,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_list_bulleted_outlined),
              label: 'More',
            ),
          ],
          selectedItemColor: Colors.green,
        ),
      ),
    );
  }
}
