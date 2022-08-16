import 'dart:async';

import 'package:flutter/material.dart';
import 'package:swamedika/views/pages/onboard_screeen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
              return const OnBoardingPage();
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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/images/splashnew.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
