import 'package:flutter/material.dart';
import 'package:weather_app_with_czar/screens/explore_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomeScreen.id:
            return MaterialPageRoute(builder: (context) => const HomeScreen());
          case ExploreScreen.id:
            return MaterialPageRoute(
                builder: (context) => const ExploreScreen());
          default:
            return null;
        }
      },
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
