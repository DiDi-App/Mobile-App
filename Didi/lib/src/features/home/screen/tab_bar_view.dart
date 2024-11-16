import 'package:didi/src/core/theme/theme_colors.dart';
import 'package:didi/src/features/home/screen/homepage.dart';
import 'package:didi/src/features/home/screen/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          Homepage(),
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
                padding: const EdgeInsets.only(top: 14, bottom: 7),
                child: SvgPicture.asset(
                  'assets/svg/home.svg',
                  width: 17.sp,
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 0
                        ? AppThemeColors.kPrimaryButtonColor
                        : AppThemeColors.kWhiteColor.withOpacity(0.8),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 14, bottom: 7),
                child: SvgPicture.asset(
                  'assets/svg/search.svg',
                  width: 17.sp,
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 1
                        ? AppThemeColors.kPrimaryButtonColor
                        : AppThemeColors.kWhiteColor.withOpacity(0.8),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 14, bottom: 7),
                child: SvgPicture.asset(
                  'assets/svg/basket.svg',
                  width: 17.sp,
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 2
                        ? AppThemeColors.kPrimaryButtonColor
                        : AppThemeColors.kWhiteColor.withOpacity(0.8),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: "Basket",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 14, bottom: 7),
                child: SvgPicture.asset(
                  'assets/svg/list_ordered.svg',
                  width: 17.sp,
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 3
                        ? AppThemeColors.kPrimaryButtonColor
                        : AppThemeColors.kWhiteColor.withOpacity(0.8),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: "Menu",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 14, bottom: 7),
                child: SvgPicture.asset(
                  'assets/svg/settings.svg',
                  width: 17.sp,
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 4
                        ? AppThemeColors.kPrimaryButtonColor
                        : AppThemeColors.kWhiteColor.withOpacity(0.8),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
