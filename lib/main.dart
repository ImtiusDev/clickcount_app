import 'package:clickcount_app/features/counterApp_bloc/bloc/bloc/counter_bloc.dart';
import 'package:clickcount_app/features/counterApp_bloc/counter_screen.dart';
import 'package:clickcount_app/features/counterApp_cubit/counter_cubit/cubit/counter_cubit.dart';
import 'package:clickcount_app/features/counterApp_cubit/counter_screen.dart';
import 'package:clickcount_app/screen/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const TestPage(),

      // home: BlocProvider(
      //   create: (context) => CounterCubit(),
      //   child: CounterAppCubit(),
      // ),

      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: CounterAppBloc(),
      ),
    );
  }
}
