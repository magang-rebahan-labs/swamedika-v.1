import 'package:flutter/material.dart';
import 'package:swamedika/model/herbal_data_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  List<HerbalDataList> displayList = List.from(herbaldataContents);

  void updateList(String value) {
    setState(
      () {
        displayList = herbaldataContents
            .where(
              (element) => element.title.toLowerCase().contains(
                    value.toLowerCase(),
                  ),
            )
            .toList();
      },
    );
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
              autofocus: true,
              cursorColor: Colors.black,
              onChanged: (value) => updateList(value),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              controller: _controller,
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
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const Test(),
                    //   ),
                    // );
                  },
                  icon: const IconTheme(
                    data: IconThemeData(color: Colors.black),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: _controller.clear,
                  icon: const IconTheme(
                    data: IconThemeData(color: Colors.black),
                    child: Icon(
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
              child: displayList.isEmpty
                  ? const Center(
                      child: Text(
                        "Pencarian Tidak Ditemukan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: displayList.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        title: Text(
                          displayList[index].title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        // subtitle: Text(
                        //   displayList[index].desc,
                        //   style: const TextStyle(
                        //     color: Colors.black,
                        //     fontWeight: FontWeight.normal,
                        //     fontSize: 12,
                        //   ),
                        // ),
                        leading: ConstrainedBox(
                          constraints: const BoxConstraints(
                            minWidth: 44,
                            minHeight: 44,
                            maxWidth: 64,
                            maxHeight: 64,
                          ),
                          child: Image(
                            image: AssetImage(
                              displayList[index].image,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
