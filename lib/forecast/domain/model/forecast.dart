import 'package:equatable/equatable.dart';
import 'package:flutter_app/forecast/domain/model/place.dart';
import 'package:flutter_app/forecast/domain/model/surf_state.dart';

class Forecast extends Equatable {
  Forecast(this.date, this.state, this.place);

  final DateTime date;
  final SurfState state;
  final Place place;

  @override
  List<Object> get props => [date, state, place];
}
