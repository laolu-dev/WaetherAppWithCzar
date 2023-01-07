import '../models/temperature.dart';

import '../models/weather.dart';
import 'strings.dart';

List<Temperature> mockTemp = [
  Temperature(temp: '18C', image: Res.sunCloudLittleRain, time: '06:00'),
  Temperature(temp: '20C', image: Res.cloudZap, time: '09:00'),
  Temperature(temp: '23C', image: Res.rain, time: '12:00'),
  Temperature(temp: '25C', image: Res.cloudZap, time: '15:00')
];

List<Weather> mockWeather = [
  Weather(image: Res.sunCloudLittleRain, weather: 'Sunny rainy'),
  Weather(image: Res.lightning, weather: 'Thunder'),
  Weather(image: Res.fastWinds, weather: 'Wind'),
];
