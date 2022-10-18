import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swamedika/views/pages/detail.dart';
import 'package:swamedika/model/database.dart';
import 'package:swamedika/views/utils/custom_textstyle.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  String? filter;
  @override
  initState() {
    super.initState();
    searchController.addListener(
      () {
        setState(
          () {
            filter = searchController.text;
          },
        );
      },
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: searchController,
              autofocus: true,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                disabledBorder: InputBorder.none,
                filled: true,
                fillColor: Colors.grey.shade300,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Contoh: Madu",
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const IconTheme(
                    data: IconThemeData(color: Colors.black),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: searchController.text.isEmpty
                      ? null
                      : () {
                          searchController.clear();
                        },
                  icon: IconTheme(
                    data: IconThemeData(
                      color: searchController.text.isNotEmpty
                          ? Colors.red
                          : Colors.black,
                    ),
                    child: const Icon(
                      Icons.close,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: databaseContent.length,
                itemBuilder: (context, index) {
                  return filter == null
                      ? ListTile(
                          onTap: () {
                            var senData = databaseContent[index];
                            Navigator.push(
                              context,
                              PageTransition(
                                child: const DetailPage(),
                                isIos: true,
                                type: PageTransitionType.fade,
                                duration: const Duration(
                                  milliseconds: 400,
                                ),
                                reverseDuration: const Duration(
                                  milliseconds: 400,
                                ),
                                settings: RouteSettings(
                                  arguments: senData,
                                ),
                              ),
                            );
                            searchController.clear();
                          },
                          contentPadding: const EdgeInsets.all(8.0),
                          title: Text(
                            databaseContent[index].title,
                            style: kJudul,
                          ),
                          leading: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 44,
                              minHeight: 44,
                              maxWidth: 64,
                              maxHeight: 64,
                            ),
                            child: Image(
                              image: AssetImage(
                                databaseContent[index].image!,
                              ),
                            ),
                          ),
                        )
                      : databaseContent[index].title.toLowerCase().contains(
                                filter!.toLowerCase(),
                              )
                          ? ListTile(
                              onTap: () {
                                var senData = databaseContent[index];
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    isIos: true,
                                    child: const DetailPage(),
                                    type: PageTransitionType.fade,
                                    duration: const Duration(
                                      milliseconds: 200,
                                    ),
                                    reverseDuration: const Duration(
                                      milliseconds: 200,
                                    ),
                                    settings: RouteSettings(
                                      arguments: senData,
                                    ),
                                  ),
                                );
                                searchController.clear();
                              },
                              contentPadding: const EdgeInsets.all(8.0),
                              title: Text(
                                databaseContent[index].title,
                                style: kJudul,
                              ),
                              leading: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minWidth: 44,
                                  minHeight: 44,
                                  maxWidth: 64,
                                  maxHeight: 64,
                                ),
                                child: Image(
                                  image: AssetImage(
                                    databaseContent[index].image!,
                                  ),
                                ),
                              ),
                            )
                          : Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
