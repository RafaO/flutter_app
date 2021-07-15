import 'package:equatable/equatable.dart';
import 'package:flutter_app/forecast/domain/model/place.dart';

abstract class ForecastEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PlaceSelected extends ForecastEvent {
  PlaceSelected(this.place);

  final Place place;
}
