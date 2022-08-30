import 'package:clean_architecture_with_flutter/src/features/weather/domain/entities/weather.dart';
import 'package:clean_architecture_with_flutter/src/features/weather/domain/repositories/base_weather_repository.dart';

class GetWeatherByCityName {
  final BaseWeatherRepository baseWeatherRepository;

  GetWeatherByCityName(this.baseWeatherRepository);

  Future<Weather> execute({required String cityName}) async {
    return await baseWeatherRepository.getCurrentWeatherByCityName(
      cityName: cityName,
    );
  }
}
