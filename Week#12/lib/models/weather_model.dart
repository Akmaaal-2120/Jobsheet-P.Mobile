class WeatherModel {
  final double temperature;
  final double windSpeed;
  final int weatherCode;

  WeatherModel({
    required this.temperature,
    required this.windSpeed,
    required this.weatherCode,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      temperature:
          json['current_weather']['temperature'].toDouble(),
      windSpeed:
          json['current_weather']['windspeed'].toDouble(),
      weatherCode:
          json['current_weather']['weathercode'],
    );
  }
}