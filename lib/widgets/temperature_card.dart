import 'package:flutter/material.dart';
import 'package:weather_app_with_czar/models/temperature.dart';

class TemperatureCard extends StatelessWidget {
  final Temperature temp;
  const TemperatureCard({super.key, required this.temp});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 62,
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
          Text(
            temp.temp,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          Image.asset(temp.image),
          Text(
            temp.temp,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
