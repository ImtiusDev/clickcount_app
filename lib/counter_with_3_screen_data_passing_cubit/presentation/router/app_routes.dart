import 'package:clickcount_app/counter_with_3_screen_data_passing_cubit/logic/counter_cubit.dart';
import 'package:clickcount_app/counter_with_3_screen_data_passing_cubit/presentation/home_screen.dart';
import 'package:clickcount_app/counter_with_3_screen_data_passing_cubit/presentation/second_screen.dart';
import 'package:clickcount_app/counter_with_3_screen_data_passing_cubit/presentation/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: HomeScreenGG(title: 'Counter App Home Screen'),
          ),
        );
      case '/second_screen':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: SecondScreen(title: 'Counter App Home Screen'),
          ),
        );
      case '/third_screen':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: ThirdScreen(title: 'Counter App Home Screen'),
          ),
        );
      default:
        return null;
    }
  }

  void dispose(){
    _counterCubit.close();
  }
}
