part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {
  CounterInitial(this.value);
  final int value;
}

class CounterUpdated extends CounterState {
  CounterUpdated(this.value);
  final int value;
}
