import 'package:clickcount_app/counter_with_3_screen_data_passing_cubit/logic/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdScreen extends StatelessWidget {
  final String title;
  const ThirdScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    print('Third Screen head context : ${context.hashCode}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.lightGreen,
      ),
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
                  color: state.wasIncremented == true? Color(0xFF0179DB): Colors.black,
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
                      print('Third Screen BlocBuilder state context : ${context.hashCode}');
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
                  print(
                    'Third Screen Decrement Btn context: ${context.hashCode}',
                  );
                },
                child: Icon(Icons.remove, size: 30),
              ),

              SizedBox(width: 20),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(100, 60)),
                  backgroundColor: WidgetStateProperty.all(const Color.fromARGB(179, 218, 218, 218)),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                  print(
                    'Third Screen Increment Btn context: ${context.hashCode}',
                  );
                },
                child: Icon(Icons.add, size: 30),
              ),
            ],
          ),
          SizedBox(height: 15),
          TextButton(
            onPressed:(){
                  BlocProvider.of<CounterCubit>(context).reset();
                  print('Third Screen Reset Btn context: ${context.hashCode}');
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

          const SizedBox(height: 10,),

        ],
      ),
    );
  }
}
