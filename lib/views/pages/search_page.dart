import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';

/// This is a very simple class, used to
/// demo the `SearchPage` package
class KategoriPencarian {
  final String nama;
  KategoriPencarian(this.nama);
}

class Pencarian extends StatelessWidget {
  static List<KategoriPencarian> people = [
    KategoriPencarian('Nabati'),
    KategoriPencarian('Hewani'),
    KategoriPencarian('Jamur'),
  ];

  const Pencarian({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Pencarian'),
        titleTextStyle: const TextStyle(color: Colors.black),
        actions: <Widget>[
          IconButton(
              onPressed: () => showSearch(
                    context: context,
                    delegate: SearchPage<KategoriPencarian>(
                      // ignore: avoid_print
                      onQueryUpdate: (s) => print(s),
                      items: people,
                      searchLabel: 'Pencarian',
                      failure: const Center(
                        child: Text('Tidak ditemukan :('),
                      ),
                      filter: (person) => [
                        person.nama,
                      ],
                      builder: (person) => ListTile(
                        title: Text(person.nama),
                      ),
                    ),
                  ),
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          final KategoriPencarian person = people[index];
          return ListTile(
            title: Text(person.nama),
          );
        },
      ),
    );
  }
}
