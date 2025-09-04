import 'package:clickcount_app/features/counterApp_bloc/bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterAppBloc extends StatelessWidget {
  const CounterAppBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(3, 3),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(-2, -2),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: RichText(
                text: TextSpan(
                  text: "Welcome to ",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  children: const [
                    TextSpan(
                      text: "ClickCount!",
                      style: TextStyle(
                        color: Color(0xFF0179DB),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 80),

            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFE9E9E9),
                    offset: const Offset(-20, -20),
                    blurRadius: 20,
                  ),
                  BoxShadow(
                    color: const Color(0xFFC0C0C0),
                    offset: const Offset(20, 20),
                    blurRadius: 30,
                  ),
                ],
              ),
              child: Center(
                child: BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    return Text(
                      state.counterValue.toString(),
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 80),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(
                      context,
                    ).add(DecrementCountEvent());
                  },
                  backgroundColor: Colors.white,
                  elevation: 10,
                  child: const Icon(Icons.remove, size: 30),
                ),
                const SizedBox(width: 30),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(
                      context,
                    ).add(IncrementCountEvent());
                  },
                  backgroundColor: Colors.white,
                  elevation: 10,
                  child: const Icon(Icons.add, size: 30),
                ),
              ],
            ),

            const SizedBox(height: 30),

            TextButton(
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(ResetCountEvent());
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                ),
              ),
              child: const Text('RESET'),
            ),
          ],
        ),
      ),
    );
  }
}
