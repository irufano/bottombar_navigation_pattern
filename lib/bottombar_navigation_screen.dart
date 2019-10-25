import 'package:bottombar_navigation_pattern/animated_bottombar.dart';
import 'package:flutter/material.dart';

class BottomBarNavigation extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "Home",
      iconData: Icons.home,
      color: Colors.indigo,
    ),
    BarItem(
      text: "Likes",
      iconData: Icons.favorite_border,
      color: Colors.pinkAccent,
    ),
    BarItem(
      text: "Search",
      iconData: Icons.search,
      color: Colors.yellow.shade900,
    ),
    BarItem(
      text: "Inbox",
      iconData: Icons.inbox,
      color: Colors.teal,
    ),
    BarItem(
      text: "Profile",
      iconData: Icons.person_outline,
      color: Colors.teal,
    ),
  ];

  @override
  _BottomBarNavigationState createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  int selectedBarIndex = 0;
  // final List<Widget> _children = [
  //   HomeScreen(),
  //   HistoryScreen(),
  //   ScanScreen(),
  //   VoucherScreen(),
  //   ProfileScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: widget.barItems[selectedBarIndex].color,
      ),
      //// for change page
      //_children[selectedBarIndex],
      bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.barItems,
          animationDuration: const Duration(milliseconds: 200),
          barStyle: BarStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            iconSize: 24.0,
          ),
          onBarTap: (index) {
            print(index);
            setState(() {
              selectedBarIndex = index;
            });
          }),
    );
  }
}
