import 'package:flutter/material.dart';
import '../../model/hewani_data_list.dart';

class HewaniView extends StatefulWidget {
  const HewaniView({super.key});

  @override
  State<HewaniView> createState() => _HewaniViewState();
}

class _HewaniViewState extends State<HewaniView> {
  @override
  Widget build(BuildContext context) {
    double tinggiContainer = MediaQuery.of(context).size.height / 1;
    const radiusTop = Radius.circular(20);

    return Scaffold(
      backgroundColor: const Color(0xFF12A546),
      body: CustomScrollView(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            toolbarHeight: 100,
            title: const Text(
              "Hewani",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 24,
              ),
            ),
            centerTitle: true,
            pinned: true,
            backgroundColor: Colors.transparent,
            expandedHeight: 50,
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF4F5F7),
                borderRadius:
                    BorderRadius.only(topLeft: radiusTop, topRight: radiusTop),
              ),
              height: tinggiContainer,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Container(
                  height: tinggiContainer,
                  margin: const EdgeInsets.only(left: 12, right: 12, top: 12),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),

                    // SETTING ITEM
                    itemCount: hewanidataContents.length,
                    itemBuilder: (BuildContext context, int index) {
                      // KOTAKAN
                      return GridTile(
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            // BAGIAN IMAGES
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                scale: 1.0,
                                fit: BoxFit.none,
                                image:
                                    AssetImage(hewanidataContents[index].image),
                              ),
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
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF000000)
                                          .withOpacity(0.4)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
