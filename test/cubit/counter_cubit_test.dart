import 'package:clickcount_app/counter_with_3_screen_data_passing_cubit/logic/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  group('CounterCubit', (){
    late CounterCubit counterCubit;
    setUp(
      (){
        counterCubit = CounterCubit();
      }
    );
    
    tearDown(
      (){
        counterCubit.close();
      }
    );

    test('initial state testing for (counterInitial Value: 0)', (){
      expect(counterCubit.state, CounterState(counterValue: 0, wasIncremented: false));
    });
  });
}

