// ^Contract class used to work other concrete class
// ^to implement the override methods

import 'package:clean_architecture_with_flutter/src/features/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getCurrentWeatherByCityName({
    required String cityName,
  });
}
