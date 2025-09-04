import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counterValue: 0)) {
    on<IncrementCountEvent>(
      (event, emit) => emit(CounterState(counterValue: state.counterValue + 1)),
    );

    on<DecrementCountEvent>(
      (event, emit) => emit(CounterState(counterValue: state.counterValue - 1)),
    );

    on<ResetCountEvent>(
      (event,emit) => emit(CounterState(counterValue: 0)),
    );
  }
}
