import 'package:flutter/material.dart';
import 'package:swamedika/views/pages/detail.dart';
import 'package:swamedika/model/database.dart';

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
            const Text(
              "Cari Bahan",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
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
                          // FocusScope.of(context).unfocus();
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
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const DetailPage(),
                                  settings: RouteSettings(arguments: senData)),
                            );
                            searchController.clear();
                          },
                          contentPadding: const EdgeInsets.all(8.0),
                          title: Text(
                            databaseContent[index].title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
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
                                databaseContent[index].image,
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
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const DetailPage(),
                                      settings:
                                          RouteSettings(arguments: senData)),
                                );
                                searchController.clear();
                              },
                              contentPadding: const EdgeInsets.all(8.0),
                              title: Text(
                                databaseContent[index].title,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
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
                                    databaseContent[index].image,
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
