import 'package:flutter/material.dart';
import 'package:swamedika/views/pages/fruit_view.dart';
import 'package:swamedika/views/pages/more.dart';
import 'package:swamedika/views/widgets/recomendation_local.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _pilihanbuttom = 0;

  final List _children = [
    const RecomendationLocal(),
    const FruitView(),
    const More(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _pilihanbuttom = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children.elementAt(_pilihanbuttom),
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.store_mall_directory,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Kategori',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'Lainnya',
            ),
          ],
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          currentIndex: _pilihanbuttom,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
