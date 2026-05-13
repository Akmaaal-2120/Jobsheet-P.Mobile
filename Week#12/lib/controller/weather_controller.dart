import 'package:geolocator/geolocator.dart';

import '../models/weather_model.dart';
import '../services/weather_service.dart';

class WeatherController {
  final WeatherService service = WeatherService();

  // SEARCH BY CITY
  Future<WeatherModel> searchWeather(
      String city) async {
    final location =
        await service.getCoordinates(city);

    return await service.getWeather(
      location['latitude'],
      location['longitude'],
    );
  }

  // CURRENT LOCATION WEATHER
  Future<WeatherModel> getCurrentLocationWeather() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled =
        await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      throw Exception("GPS tidak aktif");
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    Position position =
        await Geolocator.getCurrentPosition();

    return await service.getWeather(
      position.latitude,
      position.longitude,
    );
  }
}