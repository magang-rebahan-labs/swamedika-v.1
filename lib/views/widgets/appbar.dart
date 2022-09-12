import 'package:flutter/material.dart';
import 'package:swamedika/views/pages/search_page.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        // height: MediaQuery.of(context).size.height * 0.27,
        height: MediaQuery.of(context).size.height / 2.985,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/imghome/homescreen.png'),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.22,
              height: MediaQuery.of(context).size.height / 4.04,
              child: Padding(
                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height / 12.6875,
                    top: MediaQuery.of(context).size.height / 6.76,
                    left: MediaQuery.of(context).size.width / 23.4375),
                // padding: EdgeInsets.only(top: 0, left: 30.0),
                child: const Text(
                  "Selamat Datang",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontSize: 24,
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SearchPage(),
                      ),
                    );
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // border: Border.all(
                        //     color: Colors.grey.withOpacity(0.5), width: 1.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF22292E).withOpacity(0.20),
                              blurRadius: 40,
                              offset: const Offset(0, 16))
                        ]),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: Icon(
                            Icons.search_sharp,
                            color: Color(0xFFC5C5C7),
                            size: 33,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Pencarian bahan',
                            style: TextStyle(
                              color: Color(0xFFC5C5C7),
                              fontFamily: "Poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
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
