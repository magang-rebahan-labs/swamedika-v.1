import 'package:flutter/material.dart';
import 'package:swamedika/model/database.dart';

class HewaniViewSatu extends StatefulWidget {
  const HewaniViewSatu({super.key, required this.categoryName});
  final String categoryName;

  @override
  State<HewaniViewSatu> createState() => _HewaniViewSatuState();
}

// CLASS UNTUK LOGIC
class _HewaniViewSatuState extends State<HewaniViewSatu> {
  Widget _buildChild() {
    if (widget.categoryName == "Nabati") {
      return Scaffold(
        backgroundColor: const Color(0xFF12A546),
        appBar: AppBarDetail(title: widget.categoryName),
        body: ContainerDetails(
          dataSource: herbaldataContents,
          skala: 1,
        ),
      );
    } else if (widget.categoryName == "Hewani") {
      return Scaffold(
        backgroundColor: const Color(0xFF12A546),
        appBar: AppBarDetail(title: widget.categoryName),
        body: ContainerDetails(
          dataSource: hewanidataContents,
          skala: 1,
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color(0xFF12A546),
        appBar: AppBarDetail(title: widget.categoryName),
        body: ContainerDetails(
          dataSource: hewanidataContents,
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
  final int skala;

  @override
  Widget build(BuildContext context) {
    const radiusTop = Radius.circular(20);
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFFF4F5F7),
          borderRadius:
              BorderRadius.only(topLeft: radiusTop, topRight: radiusTop)),
      child: Container(
        margin: const EdgeInsets.only(top: 13, right: 13, left: 13),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
          physics: const BouncingScrollPhysics(),

          // SETTING DATA SOURCE
          itemCount: dataSource.length,
          itemBuilder: (BuildContext context, int index) {
            // KOTAKAN
            return GridTile(
              child: Container(
                // BAGIAN IMAGES
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      scale: 1.0,
                      fit: BoxFit.none,
                      image: AssetImage(dataSource[index].image)),
                ),

                // BAGIAN TITLE
                child: Padding(
                  padding: const EdgeInsets.only(top: 130),
                  child: Center(
                    child: Text(
                      dataSource[index].title,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          color: const Color(0xFF000000).withOpacity(0.4)),
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
      // toolbarHeight: MediaQuery.of(context).size.height / 7.960,
      toolbarHeight: MediaQuery.of(context).size.height / 8.5,
      centerTitle: true,
      leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.of(context).pop()),
      title: Text(
        title,
        style: const TextStyle(
            fontFamily: "Poppins", fontStyle: FontStyle.normal, fontSize: 20),
      ),
    );
  }

  @override
  // Size get preferredSize => throw UnimplementedError();
  Size get preferredSize => const Size.fromHeight(100);
}
