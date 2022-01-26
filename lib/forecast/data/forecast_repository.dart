import 'package:flutter_app/forecast/domain/model/forecast.dart';
import 'package:flutter_app/forecast/domain/model/place.dart';
import 'package:flutter_app/forecast/domain/model/surf_state.dart';

class ForecastRepository {
  Future<Forecast> getForecast(Place place) async {
    // TODO get real data
    return Future.delayed(
      const Duration(seconds: 2),
      () => Forecast(DateTime.now(), SurfState.beginner, const Place("Málaga")),
    );
  }
}
