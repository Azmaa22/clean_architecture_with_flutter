import 'package:clean_architecture_with_flutter/src/core/api/end_points.dart';
import 'package:clean_architecture_with_flutter/src/core/utils/app_constances.dart';
import 'package:clean_architecture_with_flutter/src/features/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName({required String cityName});
}

class WeatherRemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCityName({required String cityName}) async {
    try {
      var response = await Dio().get(
        '${EndPoints.weather}?q=$cityName&appid=${AppConstances.weatherApiKey}',
      );
      return WeatherModel.fromJson(
        response.data,
      );
    } catch (error) {
      return null;
    }
  }
}
