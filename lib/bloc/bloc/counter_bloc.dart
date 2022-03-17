import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int _count = 0;

  CounterBloc() : super(CounterInitial(0)) {
    on<CounterIncrementPressed>(_incrementCounter);
    on<CounterDecrementPressed>(_decrementCounter);
    on<CounterInitialPressed>(_resetCounter);
  }

  void _resetCounter(
      CounterInitialPressed event, Emitter<CounterState> emit) async {
    _count = 0;
    emit(CounterInitial(0));
  }

  void _incrementCounter(
      CounterIncrementPressed event, Emitter<CounterState> emit) async {
    _count = _count + event.value;
    emit(CounterUpdated(_count));
  }

  void _decrementCounter(
      CounterDecrementPressed event, Emitter<CounterState> emit) async {
    _count = _count - event.value;
    emit(CounterUpdated(_count));
  }
}
