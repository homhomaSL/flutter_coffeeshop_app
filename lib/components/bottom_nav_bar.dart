import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25, right: 25, left: 25),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          tabBorder: Border.all(color: Colors.white),
          tabBorderRadius: 20,
          color: Colors.grey,
          activeColor: Colors.grey[700],
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',
            )
          ]),
    );
  }
}
