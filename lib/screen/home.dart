import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  Color? setColor = Colors.white;
  Color? textColor = Colors.black;

  void incrementColor() {
    setState(() {
      setColor = const Color(0xFF0179DB);
      textColor = Colors.white;
      counter++;
    });
  }

  void decrementColor() {
    if (counter > 0) {
      setState(() {
        counter--;
        setColor = Colors.black;
        textColor = Colors.white;
      });
    }
  }

  void resetCounter() {
    setState(() {
      counter = 0;
      setColor = Colors.white;
      textColor = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Text(
            'Welcome to ClickCount!',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 80),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: setColor,
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
              child: Text(
                '$counter',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton.large(
                onPressed: decrementColor,
                child: Icon(Icons.remove, size: 30),
              ),
              SizedBox(width: 20),
              FloatingActionButton.large(
                onPressed: incrementColor,
                child: Icon(Icons.add, size: 30),
              ),
            ],
          ),
          SizedBox(height: 15),
          TextButton(
            onPressed: resetCounter,
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
        ],
      ),
    );
  }
}
