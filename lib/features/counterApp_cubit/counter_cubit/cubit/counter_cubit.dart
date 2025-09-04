import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0, isIncremented: false));

  void incrementCount() => emit(CounterState(counterValue: state.counterValue+1, isIncremented: true));
  void decrementCount() => emit(CounterState(counterValue: state.counterValue-1, isIncremented: false));
  void resetCount() => emit(CounterState(counterValue: 0, isIncremented: false));
}
