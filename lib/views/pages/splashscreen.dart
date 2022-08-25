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

    return Timer(durasiSplash, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const OnBoardingPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Variabel untuk MediaQuery nya
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;

    // Page Screen
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          // Desain backgorund gambarnya
          SizedBox(
            width: lebar,
            height: tinggi,
            child: Image.asset('assets/images/sick.jpg', fit: BoxFit.cover),
          ),

          // Desain tulisan yang ada di tengahnya
          Center(
              child: SizedBox(
            width: lebar / 1.38,
            child: Text("Swamedika Thibbun Nabawi",
                style: TextStyle(
                    fontFamily: "source-serif",
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: tinggi / 22.583),
                textAlign: TextAlign.center),
          ))
        ]));
  }
}
