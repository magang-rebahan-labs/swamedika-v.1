import 'package:flutter/material.dart';
import 'package:swamedika/views/pages/fruit_view.dart';
import 'package:swamedika/views/pages/herbal_view.dart';
import 'package:swamedika/views/pages/rempah_view.dart';
import 'package:swamedika/views/pages/vegetable_view.dart';
import 'package:swamedika/views/widgets/dotted_line.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (BuildContext context) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height / 4.413),
            child: AppBar(
              leading: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: const Center(
                child: Text(
                  'Kategori',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              const DottedLineWidget(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    // BAGIAN LISTVIEW GAMBAR
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FruitView(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(12),
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/Buah.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HerbalView(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(16),
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/Herbal.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RempahView(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(16),
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/Rempah.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VegetableView(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(16),
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/Sayur.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
