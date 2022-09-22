import 'package:flutter/material.dart';
import 'package:swamedika/views/utils/custom_textstyle.dart';
import 'package:swamedika/views/widgets/widgets.dart';
import 'package:swamedika/views/pages/category_views.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          MediaQuery.of(context).size.height / 4.413,
        ),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          flexibleSpace: Center(
            child: Text(
              'Kategori',
              style: kTitleScreen,
            ),
          ),
        ),
      ),

      // BODY
      body: Column(
        children: [
          // GARIS STRIP
          const DottedLineWidget(),

          // KONTEN KATEGORINYA
          SingleChildScrollView(
            padding: const EdgeInsets.only(right: 16, left: 16),

            // BAGIAN LISTVIEW GAMBAR
            child: Column(
              children: [
                // TAB NABATI
                const CategoryName(
                  imageRoute: 'covernabati.png',
                  urlRoute: 'Nabati',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 62.461,
                ),

                // TAB HEWANI
                const CategoryName(
                  imageRoute: 'coverhewani.png',
                  urlRoute: 'Hewani',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 62.461,
                ),

                // TAB JAMU
                const CategoryName(
                  imageRoute: 'coverjamu.png',
                  urlRoute: 'Jamu',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryName extends StatelessWidget {
  final String urlRoute;
  final String imageRoute;

  const CategoryName(
      {super.key, required this.urlRoute, required this.imageRoute});

  @override
  Widget build(BuildContext context) {
    // KETIKA DI KLIK
    return GestureDetector(
      onTap: () {
        if (urlRoute == "Nabati") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CategoryViews(
                categoryName: "Nabati",
              ),
            ),
          );
        } else if (urlRoute == "Hewani") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CategoryViews(
                categoryName: "Hewani",
              ),
            ),
          );
        } else if (urlRoute == "Jamu") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CategoryViews(
                categoryName: "Jamu",
              ),
            ),
          );
        }
      },

      // CONTAINER ITEM
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1),
          color: const Color(0xFF000000),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 4,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/kategori/$imageRoute',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
