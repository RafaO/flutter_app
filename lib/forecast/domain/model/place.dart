import 'package:equatable/equatable.dart';

class Place extends Equatable {
  Place(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}
