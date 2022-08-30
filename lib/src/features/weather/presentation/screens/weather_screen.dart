import 'package:clean_architecture_with_flutter/src/features/weather/domain/entities/weather.dart';
import 'package:clean_architecture_with_flutter/src/features/weather/presentation/controllers/weather_controller.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  WeatherScreen({Key? key}) : super(key: key);

  late Weather weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Current Weather of this City',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          weather = await WeatherController.getCurrentWeather();
          print(weather);
        },
        child: const Icon(
          Icons.gps_fixed_outlined,
        ),
      ),
    );
  }
}
