import 'package:flutter/material.dart';
import 'package:swamedika/views/widgets/appbar.dart';
import 'package:swamedika/views/widgets/recomendation_local.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      // AppBar --- untuk gambar dan searchbar
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height / 4.04),
        child: const AppBarSearch(),
      ),

      // Body --- untuk yang rekomended & berita
      body: const RecomendationLocal(),

      // Setting Bottom Navigasi --- untuk navigasi menu
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height / 10.68, // * 0.08

        // Bottom Navigasi
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            // Navigasi Home
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.green), label: 'Home'),

            // Navigasi Kategori
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: 'Category'),

            // Navigasi More
            BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted_outlined), label: 'More'),
          ],

          // Warna icon bila di select / pilih
          selectedItemColor: Colors.green,
        ),
      ),
    );
  }
}
