// import 'package:clickcount_app/counter_app_using_cubit_three_screen/logic/counter_cubit.dart';
// import 'package:clickcount_app/counter_app_using_cubit_three_screen/presentation/second_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class HomeScreenGG extends StatefulWidget {
//   final String title;
//   const HomeScreenGG({super.key, required this.title});

//   @override
//   State<HomeScreenGG> createState() => _HomeScreenGGState();
// }

// class _HomeScreenGGState extends State<HomeScreenGG> {
//   @override
//   Widget build(BuildContext context) {
//     print('Home screen head context : ${context.hashCode}');
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: 40),
//           Text(
//             'Welcome to ClickCount!',
//             style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 80),
//           BlocBuilder<CounterCubit, CounterState>(
//             builder: (context, state) {
//               return Container(
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   color: state.wasIncremented == true
//                       ? Color(0xFF0179DB)
//                       : Colors.black,
//                   borderRadius: BorderRadius.circular(100),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0xFFE9E9E9),
//                       offset: Offset(-28, -28),
//                       blurRadius: 20.0,
//                     ),
//                     BoxShadow(
//                       color: Color(0xFFC0C0C0),
//                       offset: Offset(28, 28),
//                       blurRadius: 30.0,
//                     ),
//                   ],
//                 ),
//                 child: Center(
//                   child: BlocBuilder<CounterCubit, CounterState>(
//                     builder: (context, state) {
//                       print(
//                         'Home BlocBuilder State context : ${context.hashCode}',
//                       );
//                       return Text(
//                         '${state.counterValue}',
//                         style: TextStyle(
//                           fontSize: 60,
//                           fontWeight: FontWeight.bold,
//                           color: state.wasIncremented == true
//                               ? Colors.white
//                               : Colors.white,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               );
//             },
//           ),
//           SizedBox(height: 80),

//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: [
//           //     FloatingActionButton.large(
//           //       heroTag: 'couter Increment',
//           //       onPressed: () {
//           //         BlocProvider.of<CounterCubit>(context).decrement();
//           //         print(
//           //           'decrement button pressed context: ${context.hashCode}',
//           //         );
//           //       },
//           //       child: Icon(Icons.remove, size: 30),
//           //     ),
//           //     SizedBox(width: 20),
//           //     FloatingActionButton.large(
//           //       heroTag: 'couter Decrement',
//           //       onPressed: () {
//           //         BlocProvider.of<CounterCubit>(context).increment();
//           //         print(
//           //           'Increment button pressed context: ${context.hashCode}',
//           //         );
//           //       },
//           //       child: Icon(Icons.add, size: 30),
//           //     ),
//           //   ],
//           // ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FloatingActionButton.large(
//                 onPressed: () {
//                   BlocProvider.of<CounterCubit>(context).decrement();
//                   print(
//                     'Home Decrement Btn context: ${context.hashCode}',
//                   );
//                 },
//                 child: Icon(Icons.remove, size: 30),
//               ),

//               SizedBox(width: 20),
//               FloatingActionButton.large(
//                 onPressed: () {
//                   BlocProvider.of<CounterCubit>(context).increment();
//                   print(
//                     'Home Increment Btn context: ${context.hashCode}',
//                   );
//                 },
//                 child: Icon(Icons.add, size: 30),
//               ),
//             ],
//           ),

//           SizedBox(height: 15),
//           TextButton(
//             onPressed: () {
//               BlocProvider.of<CounterCubit>(context).reset();
//               print('Reset button pressed context: ${context.hashCode}');
//             },
//             style: TextButton.styleFrom(
//               backgroundColor: Colors.red,
//               foregroundColor: Colors.white,
//               textStyle: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.w600,
//                 letterSpacing: 4.0,
//               ),
//             ),
//             child: Text('RESET'),
//           ),

//           const SizedBox(height: 10),

//           MaterialButton(
//             color: Colors.teal,
//             // onPressed: () {
//             //   Navigator.push(
//             //     context,
//             //     MaterialPageRoute(
//             //       builder: (gg) {
//             //           print('Navigator push context ${gg.hashCode}, type: ${gg.runtimeType}');
//             //           return BlocProvider.value(
//             //             value: BlocProvider.of<CounterCubit>(context),
//             //             child: SecondScreen(),
//             //           );
//             //       }
//             //     ),
//             //   );
//             // },

//             // onPressed: () {
//             //   Navigator.of(context).push(
//             //     MaterialPageRoute(
//             //       builder: (_) => BlocProvider.value(
//             //         value: BlocProvider.of<CounterCubit>(context),
//             //         child: SecondScreen(),
//             //       ),
//             //     ),
//             //   );
//             // },

//             // onPressed: () {
//             //   Navigator.of(context).push(
//             //     MaterialPageRoute(
//             //       builder: (context) => BlocProvider(
//             //         create: (context) => CounterCubit(),
//             //         child: SecondScreen(),
//             //       ),
//             //     ),
//             //   );
//             // },

//             onPressed: (){
//               Navigator.of(context).pushNamed('/second_screen');
//             },

//             child: Text(
//               '2nd Screen Navigate',
//               style: TextStyle(color: Colors.white, fontSize: 25),
//             ),
//           ),

//           const SizedBox(height: 10,),

//           MaterialButton(
//             color: Colors.green,
//             onPressed: (){
//               Navigator.of(context).pushNamed('/third_screen');
//             },
//             child: Text(
//               'Third Screen Navigate',
//               style: TextStyle(color: Colors.white, fontSize: 25),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:clickcount_app/counter_with_3_screen_data_passing_cubit/logic/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenGG extends StatefulWidget {
  final String title;
  const HomeScreenGG({super.key, required this.title});

  @override
  State<HomeScreenGG> createState() => _HomeScreenGGState();
}

class _HomeScreenGGState extends State<HomeScreenGG> {
  @override
  Widget build(BuildContext context) {
    print('Home screen head context : ${context.hashCode}');
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Text(
            'Welcome to ClickCount!',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 80),
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: state.wasIncremented == true
                      ? Color(0xFF0179DB)
                      : Colors.black,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFE9E9E9),
                      offset: Offset(-28, -28),
                      blurRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Color(0xFFC0C0C0),
                      offset: Offset(28, 28),
                      blurRadius: 30.0,
                    ),
                  ],
                ),
                child: Center(
                  child: BlocBuilder<CounterCubit, CounterState>(
                    builder: (context, state) {
                      print(
                        'Home BlocBuilder State context : ${context.hashCode}',
                      );
                      return Text(
                        '${state.counterValue}',
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: state.wasIncremented == true
                              ? Colors.white
                              : Colors.white,
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 80),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     FloatingActionButton.large(
          //       heroTag: 'couter Increment',
          //       onPressed: () {
          //         BlocProvider.of<CounterCubit>(context).decrement();
          //         print(
          //           'decrement button pressed context: ${context.hashCode}',
          //         );
          //       },
          //       child: Icon(Icons.remove, size: 30),
          //     ),
          //     SizedBox(width: 20),
          //     FloatingActionButton.large(
          //       heroTag: 'couter Decrement',
          //       onPressed: () {
          //         BlocProvider.of<CounterCubit>(context).increment();
          //         print(
          //           'Increment button pressed context: ${context.hashCode}',
          //         );
          //       },
          //       child: Icon(Icons.add, size: 30),
          //     ),
          //   ],
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(100, 60)),
                  backgroundColor: WidgetStateProperty.all(const Color.fromARGB(179, 218, 218, 218)),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                  print('Home Decrement Btn context: ${context.hashCode}');
                },
                child: Icon(Icons.remove, size: 30,),
              ),

              SizedBox(width: 20),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(100, 60)),
                  backgroundColor: WidgetStateProperty.all(const Color.fromARGB(179, 218, 218, 218)),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                  print('Home Increment Btn context: ${context.hashCode}');
                },
                child: Center(child: Icon(Icons.add, size: 30)),
              ),
            ],
          ),

          SizedBox(height: 15),
          TextButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).reset();
              print('Reset button pressed context: ${context.hashCode}');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                letterSpacing: 4.0,
              ),
            ),
            child: Text('RESET'),
          ),

          const SizedBox(height: 10),

          MaterialButton(
            color: Colors.teal,

            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (gg) {
            //           print('Navigator push context ${gg.hashCode}, type: ${gg.runtimeType}');
            //           return BlocProvider.value(
            //             value: BlocProvider.of<CounterCubit>(context),
            //             child: SecondScreen(),
            //           );
            //       }
            //     ),
            //   );
            // },

            // onPressed: () {
            //   Navigator.of(context).push(
            //     MaterialPageRoute(
            //       builder: (_) => BlocProvider.value(
            //         value: BlocProvider.of<CounterCubit>(context),
            //         child: SecondScreen(),
            //       ),
            //     ),
            //   );
            // },

            // onPressed: () {
            //   Navigator.of(context).push(
            //     MaterialPageRoute(
            //       builder: (context) => BlocProvider(
            //         create: (context) => CounterCubit(),
            //         child: SecondScreen(),
            //       ),
            //     ),
            //   );
            // },
            onPressed: () {
              Navigator.of(context).pushNamed('/second_screen');
            },

            child: Text(
              '2nd Screen Navigate',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),

          const SizedBox(height: 10),

          MaterialButton(
            color: Colors.green,
            onPressed: () {
              Navigator.of(context).pushNamed('/third_screen');
            },
            child: Text(
              'Third Screen Navigate',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
