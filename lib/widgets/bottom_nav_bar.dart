import 'package:flutter/material.dart';
import 'package:weather_app_with_czar/screens/explore_screen.dart';

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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home_filled, size: 38),
          ),
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed(ExploreScreen.id),
            icon: const Icon(Icons.location_pin, size: 38),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notes, size: 38),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person, size: 38),
          )
        ],
      ),
    );
  }
}
