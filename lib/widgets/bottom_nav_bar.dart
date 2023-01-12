import 'package:flutter/material.dart';
import 'package:weather_app_with_czar/screens/explore_screen.dart';

import '../resources/strings.dart';
import '../screens/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, HomeScreen.id),
            child: Image.asset(Res.homeS, width: 32),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, ExploreScreen.id),
            child: Image.asset(Res.exploreU, width: 32),
          ),
          GestureDetector(
            child: Image.asset(Res.items, width: 32),
          ),
          GestureDetector(
            child: Image.asset(Res.profile, width: 32),
          ),
        ],
      ),
    );
  }
}
