import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sports_picker/screens/about_screen.dart';
import 'package:sports_picker/screens/home_screen.dart';
import 'package:sports_picker/screens/view_screen/view_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          HomeScreen(),
          ViewScreen(),
          AboutScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black87,
        // color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: GNav(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            onTabChange: onTabTapped,
            // backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 3,
            tabs: const [
              GButton(
                icon: Icons.shuffle_rounded,
                text: 'Shuffle',
              ),
              GButton(
                icon: Icons.view_headline_rounded,
                text: 'View',
              ),
              GButton(
                icon: Icons.info_outline_rounded,
                text: 'About',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
