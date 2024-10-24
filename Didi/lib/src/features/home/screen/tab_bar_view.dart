import 'package:didi/src/features/home/screen/homepage.dart';
import 'package:didi/src/features/home/screen/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onTap(index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Homepage(),
          const OrdersScreen(),
          Homepage(),
          const OrdersScreen(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Icon(
                  Icons.home_outlined,
                  size: 19.sp,
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Icon(
                  Icons.search,
                  size: 19.sp,
                ),
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Icon(
                  Icons.menu_sharp,
                  size: 19.sp,
                ),
              ),
              label: "My orders",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Icon(
                  Icons.settings,
                  size: 19.sp,
                ),
              ),
              label: "settings",
            ),
          ],
        ),
      ),
    );
  }
}
