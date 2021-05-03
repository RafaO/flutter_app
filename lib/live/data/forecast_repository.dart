import 'package:flutter_app/live/domain/model/forecast.dart';
import 'package:flutter_app/live/domain/model/place.dart';
import 'package:flutter_app/live/domain/model/surf_state.dart';

class ForecastRepository {
  Future<Forecast> getForecast(Place place) async {
    // TODO get real data
    return Future.delayed(
      Duration(seconds: 2),
      () => Forecast(DateTime.now(), SurfState.beginner, Place("Málaga")),
    );
  }
}
