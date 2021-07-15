import 'package:equatable/equatable.dart';
import 'package:flutter_app/forecast/domain/model/forecast.dart';

abstract class ForecastState extends Equatable {
  @override
  List<Object> get props => [];
}

class NoForecast extends ForecastState {}

class Loading extends ForecastState {}

class ForecastReceived extends ForecastState {
  ForecastReceived(this.forecast);

  final Forecast forecast;
}
