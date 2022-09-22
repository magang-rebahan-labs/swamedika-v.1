import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swamedika/model/database.dart';
import 'package:swamedika/views/utils/custom_textstyle.dart';

import 'detail.dart';

class CategoryViews extends StatefulWidget {
  const CategoryViews({super.key, required this.categoryName});
  final String categoryName;

  @override
  State<CategoryViews> createState() => _CategoryViewsState();
}

// CLASS UNTUK LOGIC
class _CategoryViewsState extends State<CategoryViews> {
  // VARIABLE
  List<Databases> _database = [];

  @override
  void initState() {
    super.initState();
    _database =
        databaseContent.where((i) => i.cate == widget.categoryName).toList();
  }

  Widget _buildChild() {
    _database.sort((a, b) => a.title.compareTo(b.title));
    if (widget.categoryName == "Nabati") {
      return Scaffold(
        backgroundColor: const Color(0xFF12A546),
        appBar: AppBarDetail(title: widget.categoryName),
        body: ContainerDetails(
          dataSource: _database,
          skala: 7.0,
        ),
      );
    } else if (widget.categoryName == "Hewani") {
      return Scaffold(
        backgroundColor: const Color(0xFF12A546),
        appBar: AppBarDetail(title: widget.categoryName),
        body: ContainerDetails(
          dataSource: _database,
          skala: 1,
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color(0xFF12A546),
        appBar: AppBarDetail(title: widget.categoryName),
        body: ContainerDetails(
          dataSource: _database,
          skala: 1,
        ),
      );
    }
  }

  // MENGAMBIL DATA DARI WIDGET ATASNYA
  @override
  Widget build(BuildContext context) {
    return Container(child: _buildChild());
  }
}

// BODY FIELD
class ContainerDetails extends StatelessWidget {
  // VARIABLE
  const ContainerDetails(
      {super.key, required this.dataSource, required this.skala});
  final List<Databases> dataSource;
  final double skala;

  @override
  Widget build(BuildContext context) {
    const radiusTop = Radius.circular(20);
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF4F5F7),
        borderRadius: BorderRadius.only(
          topLeft: radiusTop,
          topRight: radiusTop,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(
          top: 13,
          right: 13,
          left: 13,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          physics: const BouncingScrollPhysics(),

          // SETTING DATA SOURCE
          itemCount: dataSource.length,
          itemBuilder: (BuildContext context, int index) {
            final senData = dataSource[index];
            // KOTAKAN
            return GridTile(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: const DetailPage(),
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(
                        milliseconds: 300,
                      ),
                      reverseDuration: const Duration(
                        milliseconds: 300,
                      ),
                      settings: RouteSettings(
                        arguments: senData,
                      ),
                    ),
                  );
                },
                child: Container(
                  // BAGIAN IMAGES
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      scale: skala,
                      fit: BoxFit.none,
                      image: AssetImage(
                        dataSource[index].image,
                      ),
                    ),
                  ),

                  // BAGIAN TITLE
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 130,
                    ),
                    child: Center(
                      child: Text(
                        dataSource[index].title,
                        maxLines: 2,
                        style: kTitleList,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// APPBAR FIELD
class AppBarDetail extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarDetail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: MediaQuery.of(context).size.height / 8.5,
      centerTitle: true,
      // leading: IconButton(
      //   icon: const Icon(Icons.arrow_back_ios_new_rounded),
      //   onPressed: () => Navigator.of(context).pop(),
      // ),
      title: Text(
        title,
        style: kTitleAppBar,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(102);
}
