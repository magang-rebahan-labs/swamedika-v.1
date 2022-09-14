import 'package:flutter/material.dart';
import 'package:swamedika/model/hewani_data_list.dart';

class HewaniViewSatu extends StatefulWidget {
  const HewaniViewSatu({super.key});

  @override
  State<HewaniViewSatu> createState() => _HewaniViewSatuState();
}

class _HewaniViewSatuState extends State<HewaniViewSatu> {
  @override
  Widget build(BuildContext context) {
    const radiusTop = Radius.circular(20);

    return Scaffold(
      backgroundColor: const Color(0xFF12A546),

      // APPBAR
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // toolbarHeight: MediaQuery.of(context).size.height / 7.960,
        toolbarHeight: MediaQuery.of(context).size.height / 8.5,
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => Navigator.of(context).pop()),
        title: const Text(
          "Hewani",
          style: TextStyle(
              fontFamily: "Poppins", fontStyle: FontStyle.normal, fontSize: 20),
        ),
      ),

      // BODY
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF4F5F7),
          borderRadius:
              BorderRadius.only(topLeft: radiusTop, topRight: radiusTop),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 13, right: 13, left: 13),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
            physics: const BouncingScrollPhysics(),

            // SETTING DATA SOURCE
            itemCount: hewanidataContents.length,
            itemBuilder: (BuildContext context, int index) {
              // KOTAKAN
              return GridTile(
                child: Container(
                  // BAGIAN IMAGES
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                        scale: 1.0,
                        fit: BoxFit.none,
                        image: AssetImage(hewanidataContents[index].image)),
                  ),

                  // BAGIAN TITLE
                  child: Padding(
                    padding: const EdgeInsets.only(top: 130),
                    child: Center(
                      child: Text(
                        hewanidataContents[index].title,
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
      ),
    );
  }
}
