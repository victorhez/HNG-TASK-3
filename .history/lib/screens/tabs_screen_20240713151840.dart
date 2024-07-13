import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:shop_app/screens/home_screen.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/user_screen.dart';
import 'package:shop_app/widgets/custom_app_bar.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);
  static const routeName = '/tabs';

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {
      'page': HomeScreen(),
      'title': 'Product List',
    },
    {
      'page': UserScreen(),
      'title': 'My Cart',
    },
    {
      'page': CartScreen(),
      'title': 'My Cart',
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: CustomAppBar(
        title: _pages[_selectedPageIndex]['title'],
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        height: 93,
        elevation: 0,
        child: BottomNavigationBar(
          onTap: _selectPage,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/$.svg",
,
              ),
              label: 'Product List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'My Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Cart',
            ),
          ],
        ),
      ),
    );
  }
}
