import 'dart:async';
import 'package:flutter/material.dart';

import 'home.dart';

class LogoSplash extends StatefulWidget {
  const LogoSplash({super.key});

  @override
  State<LogoSplash> createState() => _LogoSplashState();
}

class _LogoSplashState extends State<LogoSplash> {
  @override
  void initState() {
    super.initState();
    openSplahScreen();
  }

  openSplahScreen() async {
    var durasiSplash = const Duration(seconds: 2);

    return Timer(
      durasiSplash,
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) {
              return const HomePage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            // Ditambah width
            'assets/images/logo.png',
            width: MediaQuery.of(context).size.width / 1.524,
          ),
        ),
      ),
    );
  }
}
