import 'package:flutter/material.dart';
import 'package:weather_app_with_czar/resources/constants.dart';
import 'package:weather_app_with_czar/widgets/bottom_nav_bar.dart';
import 'package:weather_app_with_czar/widgets/notifications.dart';
import 'package:weather_app_with_czar/widgets/temperature_card.dart';
import 'package:weather_app_with_czar/widgets/utility_button.dart';
import 'package:weather_app_with_czar/widgets/weather_card.dart';

import '../resources/strings.dart';

class HomeScreen extends StatefulWidget {
  static const String id = '/';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [UtilityButton(), NotifcationWidget()],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .4,
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 23, vertical: 20),
                      alignment: Alignment.topLeft,
                      height: MediaQuery.of(context).size.height * .25,
                      width: MediaQuery.of(context).size.width,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Tuesday, 14 May',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Los Angeles',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 7),
                          Text(
                            '29',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 64,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 7),
                          Text(
                            'Sunny Cloudy',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 30,
                      child: Image.asset(Res.cloudZap, height: 256, width: 263),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Today',
                    style: TextStyle(
                        color: Color.fromRGBO(75, 74, 75, 1),
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                  ),
                   Text(
                    'Next 14 Days >',
                    style: TextStyle(
                        color: Color.fromRGBO(75, 74, 75, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 29),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeatherCard(weatherInfo: mockWeather[0]),
                  WeatherCard(weatherInfo: mockWeather[1]),
                  WeatherCard(weatherInfo: mockWeather[2]),
                ],
              ),
              const SizedBox(height: 48),
              const Text(
                'Temperature',
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
              const SizedBox(height: 19),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
