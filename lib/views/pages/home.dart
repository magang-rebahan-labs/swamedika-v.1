import 'package:flutter/material.dart';
import 'package:swamedika/views/widgets/bottom_nav_bar.dart';
import 'package:swamedika/views/widgets/recomendation_local.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RecomendationLocal(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
