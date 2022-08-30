import 'package:clean_architecture_with_flutter/src/features/weather/data/data_sources/remote_data_source.dart';
import 'package:clean_architecture_with_flutter/src/features/weather/data/repositories/weather_repository.dart';
import 'package:clean_architecture_with_flutter/src/features/weather/domain/entities/weather.dart';
import 'package:clean_architecture_with_flutter/src/features/weather/domain/repositories/base_weather_repository.dart';
import 'package:clean_architecture_with_flutter/src/features/weather/domain/use_cases/get_weather_by_city_name.dart';

class WeatherController {
  static Future<Weather> getCurrentWeather() async {
    BaseRemoteDataSource baseRemoteDataSource = WeatherRemoteDataSource();

    BaseWeatherRepository baseWeatherRepository =
        WeatherRepository(baseRemoteDataSource);

    return await GetWeatherByCityName(baseWeatherRepository)
        .execute(cityName: 'cairo');
  }
}
