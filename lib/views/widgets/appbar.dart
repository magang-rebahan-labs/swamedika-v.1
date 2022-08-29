// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        // height: MediaQuery.of(context).size.height * 0.27,
        height: MediaQuery.of(context).size.height / 2.9,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/appbar.png'),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.22,
              height: MediaQuery.of(context).size.height / 4.04,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 12.6875,
                    left: MediaQuery.of(context).size.width / 23.4375),
                // padding: EdgeInsets.only(top: 0, left: 30.0),
                child: const Text(
                  "Welcome",
                  style: TextStyle(
                      fontFamily: "Sans-serif",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Positioned(
              // top: MediaQuery.of(context).size.width / 2.6,
              top: MediaQuery.of(context).size.height / 4.693,
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                height: MediaQuery.of(context).size.height / 14.5,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1.0),
                      color: Colors.white),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black45,
                        ),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                      Expanded(
                        child: TextField(
                          onTap: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => const HerbalView(),
                            //     // const DetailPage(
                            //     //   image: '',
                            //     //   desc: '',
                            //     //   serve: '',
                            //     //   title: '',
                            //     //   cate: '',
                            //     //   subtitle: '',
                            //     // ),
                            //   ),
                            // );
                          },
                          autofocus: false,
                          decoration: const InputDecoration.collapsed(
                              hintText: "Pencarian",
                              // fillColor: Color(0xFFC5C5C7),
                              hintStyle: TextStyle(
                                  color: Color(0xFFC5C5C7),
                                  fontFamily: "Sans-serif",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
