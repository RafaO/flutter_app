import 'package:flutter_app/live/data/forecast_repository.dart';
import 'package:flutter_app/live/domain/bloc/live_forecast_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('Bloc', () {
    test('Bloc is created', () {
      final subject = LiveForecastBloc(ForecastRepository());
      expect(subject, isNotNull);
    });
  });
}
