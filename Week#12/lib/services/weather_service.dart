import 'package:dio/dio.dart';

import '../models/weather_model.dart';

class WeatherService {
  final Dio dio = Dio();

  // SEARCH CITY → GET LAT LONG
  Future<Map<String, dynamic>> getCoordinates(
      String city) async {
    final response = await dio.get(
      'https://geocoding-api.open-meteo.com/v1/search',
      queryParameters: {
        'name': city,
        'count': 1,
      },
    );

    if (response.data['results'] == null) {
      throw Exception("Kota tidak ditemukan");
    }

    return response.data['results'][0];
  }

  // GET WEATHER
  Future<WeatherModel> getWeather(
      double lat, double lon) async {
    final response = await dio.get(
      'https://api.open-meteo.com/v1/forecast',
      queryParameters: {
        'latitude': lat,
        'longitude': lon,
        'current_weather': true,
      },
    );

    return WeatherModel.fromJson(response.data);
  }
}