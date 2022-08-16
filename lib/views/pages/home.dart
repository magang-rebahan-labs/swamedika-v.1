import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.height * .25),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
            child: const Text(
              'Welcome',
              style: TextStyle(
                color: Color.fromARGB(255, 223, 220, 220),
                fontSize: 30,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/appbar.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
