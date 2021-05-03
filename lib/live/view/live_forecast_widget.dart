import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/live/data/forecast_repository.dart';
import 'package:flutter_app/live/domain/bloc/forecast_event.dart';
import 'package:flutter_app/live/domain/bloc/forecast_state.dart';
import 'package:flutter_app/live/domain/bloc/live_forecast_bloc.dart';
import 'package:flutter_app/live/domain/model/place.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LiveForecastWidget extends StatefulWidget {
  @override
  _LiveForecastWidgetState createState() => _LiveForecastWidgetState();
}

class _LiveForecastWidgetState extends State<LiveForecastWidget> {
  @override
  Widget build(BuildContext context) => BlocProvider<LiveForecastBloc>(
        create: (BuildContext context) => LiveForecastBloc(ForecastRepository()),
        child: BlocBuilder<LiveForecastBloc, ForecastState>(
            builder: (context, state) {
          final bloc = BlocProvider.of<LiveForecastBloc>(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("Get forecast for Málaga"),
            ),
            body: Column(
              children: [
                _text(state),
                ElevatedButton(
                  onPressed: () => bloc.add(PlaceSelected(Place("Málaga"))),
                  child: Text("Get forecast"),
                )
              ],
            ),
          );
        }),
      );

  Widget _text(ForecastState state) {
    if (state is ForecastReceived) {
      return Text(state.forecast.state.toString());
    } else if (state is Loading) {
      return Text("loading");
    } else {
      return Text("No data");
    }
  }
}
