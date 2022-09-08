import 'package:flutter/material.dart';
import '../../model/herbal_data_list.dart';

class HerbalView extends StatefulWidget {
  const HerbalView({super.key});

  @override
  State<HerbalView> createState() => _HerbalViewState();
}

class _HerbalViewState extends State<HerbalView> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            toolbarHeight: tinggi / 8.5,
            title: const Text(
              "Herbal",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                fontSize: 24,
              ),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(10),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            expandedHeight: tinggi / 9.0,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: tinggi / 1.2,
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: herbaldataContents.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GridTile(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: const Offset(1, 1),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                scale: 7.0,
                                fit: BoxFit.none,
                                image: AssetImage(
                                  herbaldataContents[index].image,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: tinggi / 6),
                              child: Center(
                                child: Text(
                                  herbaldataContents[index].title,
                                  maxLines: 2,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
