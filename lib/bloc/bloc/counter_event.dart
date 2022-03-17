part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterInitialPressed extends CounterEvent {}

class CounterIncrementPressed extends CounterEvent {
  CounterIncrementPressed(this.value);
  final int value;
}

class CounterDecrementPressed extends CounterEvent {
  CounterDecrementPressed(this.value);
  final int value;
}
