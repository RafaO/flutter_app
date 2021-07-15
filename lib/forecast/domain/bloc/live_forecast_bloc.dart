import 'package:flutter_app/forecast/data/forecast_repository.dart';
import 'package:flutter_app/forecast/domain/bloc/forecast_event.dart';
import 'package:flutter_app/forecast/domain/bloc/forecast_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LiveForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  LiveForecastBloc(this._repository) : super(NoForecast());

  final ForecastRepository _repository;

  @override
  Stream<ForecastState> mapEventToState(ForecastEvent event) async* {
    if (event is PlaceSelected) {
      yield Loading();
      final data = await _repository.getForecast(event.place);
      yield ForecastReceived(data);
    } else {
      throw UnimplementedError();
    }
  }
}
