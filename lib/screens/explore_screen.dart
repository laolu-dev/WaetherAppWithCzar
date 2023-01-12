import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_with_czar/widgets/bottom_nav_bar.dart';

import '../resources/constants.dart';
import '../resources/strings.dart';
import '../widgets/notifications.dart';
import '../widgets/temperature_card.dart';
import '../widgets/custom_button.dart';

class ExploreScreen extends StatefulWidget {
  static const String id = '/explore_screen';

  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [CustomBackButton(), NotifcationWidget()],
              ),
              const SizedBox(height: 19),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  prefixIcon: const Icon(CupertinoIcons.search),
                  prefixIconColor: const Color.fromRGBO(160, 159, 159, 1),
                  suffixIcon: verticalSwap(),
                  hintText: 'Search Location....',
                  hintStyle: const TextStyle(
                      color: Color.fromRGBO(160, 159, 159, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                  filled: true,
                  fillColor: const Color(0xFFEBEBEC),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
              const SizedBox(height: 19),
              const Text(
                'Next Week',
                style: TextStyle(
                    color: Color.fromRGBO(75, 74, 75, 1),
                    fontSize: 21,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TemperatureCard(temp: mockTemp[0]),
                  TemperatureCard(temp: mockTemp[1]),
                  TemperatureCard(temp: mockTemp[2]),
                  TemperatureCard(temp: mockTemp[3])
                ],
              ),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(22, 22, 22, 1),
                  borderRadius: BorderRadius.circular(34),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 8),
                        color: Color.fromRGBO(0, 0, 0, .35),
                        blurRadius: 30),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      'Potential Weather',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    potentialWeather(
                        '27', 'Monday', '15 May 2022', Res.sunCloudLittleRain),
                    const Divider(
                        color: Color.fromRGBO(144, 143, 144, 1), thickness: 2),
                    potentialWeather(
                        '22', 'Tuesday', '16 May 2022', Res.cloudZap),
                    const Divider(
                        color: Color.fromRGBO(144, 143, 144, 1), thickness: 2),
                    potentialWeather(
                        '19', 'Wednesday', '17 May 2022', Res.rain),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container verticalSwap() {
    return Container(
      margin: const EdgeInsets.only(right: 3),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(22, 22, 22, 1),
          borderRadius: BorderRadius.circular(12)),
      child: const Icon(Icons.swap_horiz, color: Colors.white),
    );
  }

  Row potentialWeather(
      String temp, String date, String dateInFormat, String image) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          temp,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              dateInFormat,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Image.asset(image, width: 100, height: 100)
      ],
    );
  }
}
