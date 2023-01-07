import 'package:flutter/material.dart';
import 'package:weather_app_with_czar/models/weather.dart';

class WeatherCard extends StatelessWidget {
  final Weather weatherInfo;
  const WeatherCard({super.key, required this.weatherInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      width: 77,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(22, 22, 22, 1),
        borderRadius: BorderRadius.circular(17),
          boxShadow: const [
          BoxShadow(
              offset: Offset(0, 10),
              color: Color.fromRGBO(0, 0, 0, .35),
              blurRadius: 30),
        ],
      ),
      child: Column(
        children: [
          Image.asset(weatherInfo.image),
          Text(
            weatherInfo.weather,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
