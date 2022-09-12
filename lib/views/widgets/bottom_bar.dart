import 'package:flutter/material.dart';
import '../pages/category.dart';
import '../pages/more.dart';
import '../pages/recomendation_local.dart';
import './widgets.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // final PageStorageBucket _bucket = PageStorageBucket();
  final List<PageItem> _items = [
    PageItem(
      'Beranda',
      Icons.store_mall_directory,
      const RecomendationLocal(
        key: PageStorageKey('key--home'),
      ),
    ),
    PageItem(
      'Kategori',
      Icons.assignment,
      const Category(
        key: PageStorageKey('key--category'),
      ),
    ),
    PageItem(
      'Lainnya',
      Icons.more_horiz,
      const More(
        key: PageStorageKey('key--more'),
      ),
    ),
  ];

  int _activeScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _activeScreenIndex,
        children: const [
          RecomendationLocal(),
          Category(),
          More(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height / 10.684,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(28), topRight: Radius.circular(28)),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _activeScreenIndex,
            onTap: (index) {
              setState(() {
                _activeScreenIndex = index;
              });
            },
            items: _items.map(
              (item) {
                return BottomNavigationBarItem(
                  label: item.title,
                  icon: Icon(item.icon),
                );
              },
            ).toList(),
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class PageItem {
  final String title;
  final IconData icon;
  final Widget screen;

  PageItem(this.title, this.icon, this.screen);
}
