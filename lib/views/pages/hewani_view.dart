import 'package:flutter/material.dart';
import 'package:swamedika/model/hewani_data_list.dart';

class HewaniView extends StatefulWidget {
  const HewaniView({super.key});

  @override
  State<HewaniView> createState() => _HewaniViewState();
}

class _HewaniViewState extends State<HewaniView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            toolbarHeight: 100,
            title: const Text(
              "Hewani",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                fontSize: 24,
              ),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
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
            expandedHeight: 100,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 600,
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
                    itemCount: hewanidataContents.length,
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
                                scale: 1.0,
                                fit: BoxFit.none,
                                image: AssetImage(
                                  hewanidataContents[index].image,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 130),
                              child: Center(
                                child: Text(
                                  hewanidataContents[index].title,
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
