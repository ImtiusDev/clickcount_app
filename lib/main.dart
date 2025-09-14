import 'package:clickcount_app/counter_app_setstate/home_page.dart';
import 'package:clickcount_app/counter_with_3_screen_data_passing_cubit/presentation/router/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final CounterCubit _counterCubit = CounterCubit();
  final AppRouter appRouter = AppRouter();
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

      // home: BlocProvider(
      //   create: (context) => CounterBloc(),
      //   child: CounterAppBloc(),
      // ),

      // home: BlocProvider(
      //   create: (context)
      //     {
      //       print('home entry point: ${context.hashCode}');
      //       return CounterCubit();
      //     },
      //   child: HomeScreenGG(title: 'counter App',),
      // ),
      
      // routes: {
      //   '/': (context) => BlocProvider.value(
      //     value: _counterCubit,
      //     child: HomeScreenGG(title: 'Couner App Home'),
      //   ),

      //   '/second_screen': (context) =>BlocProvider.value(
      //     value: _counterCubit,
      //     child: SecondScreen(title: 'Couner App Home'),
      //   ),

      //   '/third_screen': (context) => BlocProvider.value(
      //     value: _counterCubit,
      //     child: ThirdScreen(title: 'Couner App Home'),
      //   ),
      // },

      // onGenerateRoute: appRouter.onGenerateRoute,
      home: Home(),
    );
  }

  @override
  void dispose(){
    super.dispose();
    appRouter.dispose();
  }
}








