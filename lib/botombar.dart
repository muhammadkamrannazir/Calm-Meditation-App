import 'package:calm/pages/discover.dart';
import 'package:calm/pages/home.dart';
import 'package:calm/pages/premium.dart';
import 'package:calm/pages/profile.dart';
import 'package:calm/pages/sleep.dart';
import 'package:calm/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBar extends StatefulWidget {
  final index;
  const BottomBar({Key? key, this.index = 0}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

var wdth;
var hght;

class _BottomBarState extends State<BottomBar> {
  @override
  int _currentIndex = 0;
  List _screens = [
    HomePage(),
    Sleep(),
    Discover(),
    Profile(),
    Premium(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  Widget build(BuildContext context) {
    wdth = MediaQuery.of(context).size.width;
    hght = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.purpleDark,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: AppColors.white,
        selectedFontSize: 13.sp,
        unselectedFontSize: 12.sp,
        unselectedItemColor: AppColors.white.withOpacity(.6),
        selectedIconTheme: IconThemeData(size: 25),
        unselectedIconTheme: IconThemeData(size: 23),
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                _currentIndex == 0 ? Icons.home_rounded : Icons.home_outlined,
              )),
          BottomNavigationBarItem(
              label: "Sleep",
              icon: Icon(
                _currentIndex == 1
                    ? CupertinoIcons.moon_fill
                    : CupertinoIcons.moon,
              )),
          BottomNavigationBarItem(
              label: "Discover",
              icon: Icon(
                CupertinoIcons.search,
              )),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              _currentIndex == 3
                  ? CupertinoIcons.person_alt_circle_fill
                  : CupertinoIcons.person_alt_circle,
            ),
          ),
          BottomNavigationBarItem(
            label: "Premium",
            icon: Icon(
              _currentIndex == 4
                  ? CupertinoIcons.star_fill
                  : CupertinoIcons.star,
            ),
          ),
        ],
      ),
    );
  }
}
