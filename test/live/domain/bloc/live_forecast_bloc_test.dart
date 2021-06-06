import 'package:flutter_app/live/data/forecast_repository.dart';
import 'package:flutter_app/live/domain/bloc/forecast_event.dart';
import 'package:flutter_app/live/domain/bloc/forecast_state.dart';
import 'package:flutter_app/live/domain/bloc/live_forecast_bloc.dart';
import 'package:flutter_app/live/domain/model/forecast.dart';
import 'package:flutter_app/live/domain/model/place.dart';
import 'package:flutter_app/live/domain/model/surf_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pedantic/pedantic.dart';
import 'package:test/test.dart';

import 'live_forecast_bloc_test.mocks.dart';

@GenerateMocks([ForecastRepository])
void main() {
  MockForecastRepository _repo;
  LiveForecastBloc _subject;
  group('Bloc', () {
    setUp(() {
      _repo = MockForecastRepository();
      _subject = LiveForecastBloc(_repo);
    });

    test('Initial state is NoForecast', () {
      // then
      expect(_subject.state, Loading());
    });

    test('When add place, starts loading', () async {
      // given
      final forecast =
          Forecast(DateTime.now(), SurfState.beginner, Place("Valencia"));
      when(_repo.getForecast(any))
          .thenAnswer((realInvocation) async => forecast);

      // when
      _subject.add(PlaceSelected(Place("Valencia")));

      // then
      unawaited(expectLater(_subject.stream,
          emitsInOrder([Loading(), ForecastReceived(forecast)])));
    });

    test('stream is closed', () async {
      _subject.close();
      expect(_subject.stream, emitsDone);
    });
  });
}
