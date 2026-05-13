import 'package:flutter/material.dart';

import '../controller/weather_controller.dart';
import '../models/weather_model.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final WeatherController controller =
      WeatherController();

  final TextEditingController cityController =
      TextEditingController();

  WeatherModel? weather;

  bool loading = false;

  @override
  void initState() {
    super.initState();
    getCurrentLocationWeather();
  }

  Future<void> searchWeather() async {
    setState(() => loading = true);

    try {
      final result = await controller.searchWeather(
        cityController.text,
      );

      setState(() {
        weather = result;
      });
    } catch (e) {
      showError(e.toString());
    }

    setState(() => loading = false);
  }

  Future<void> getCurrentLocationWeather() async {
    setState(() => loading = true);

    try {
      final result =
          await controller.getCurrentLocationWeather();

      setState(() {
        weather = result;
      });
    } catch (e) {
      showError(e.toString());
    }

    setState(() => loading = false);
  }

  void showError(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  String getWeatherCondition(int code) {
    if (code == 0) return "Cerah ☀️";
    if (code <= 3) return "Berawan ☁️";
    if (code <= 67) return "Hujan 🌧️";
    return "Cuaca Tidak Diketahui";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F172A),
      appBar: AppBar(
        title: Text("Weather App"),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: cityController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Cari kota...",
                      hintStyle:
                          TextStyle(color: Colors.white54),
                      filled: true,
                      fillColor: Colors.white10,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                IconButton(
                  onPressed: searchWeather,
                  icon: Icon(Icons.search),
                  color: Colors.white,
                ),
              ],
            ),

            SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: getCurrentLocationWeather,
              icon: Icon(Icons.my_location),
              label: Text("Lokasi Saya"),
            ),

            SizedBox(height: 30),

            if (loading)
              CircularProgressIndicator(),

            if (weather != null)
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF2563EB),
                        Color(0xFF1E40AF),
                      ],
                    ),
                    borderRadius:
                        BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Text(
                        "${weather!.temperature}°C",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 56,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                        getWeatherCondition(
                            weather!.weatherCode),
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 24,
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                        "Wind ${weather!.windSpeed} km/h",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}