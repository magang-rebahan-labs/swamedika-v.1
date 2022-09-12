import 'package:flutter/material.dart';

class Literatur extends StatelessWidget {
  const Literatur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Literatur',
          style: TextStyle(
              fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
