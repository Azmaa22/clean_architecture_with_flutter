import 'package:clean_architecture_with_flutter/src/features/weather/data/data_sources/remote_data_source.dart';
import 'package:clean_architecture_with_flutter/src/features/weather/domain/entities/weather.dart';
import 'package:clean_architecture_with_flutter/src/features/weather/domain/repositories/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getCurrentWeatherByCityName(
      {required String cityName}) async {
    return (await baseRemoteDataSource.getWeatherByCityName(
        cityName: cityName))!;
  }
}
