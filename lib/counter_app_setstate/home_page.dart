import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int counter = 0;
  Color setColor = Colors.white;
  Color textColor = Colors.black;

  @override
  void initState() {
    super.initState();
  }


  void incrementCounter() {
    setState(() {
      counter++;
      updateColors();
    });
  }

  void decrementCounter() {
  if (counter > 0) {
    setState(() {
      counter--;
      updateColors();
    });
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Counter is already zero!"),
        duration: Duration(milliseconds: 100),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}


  void resetCounter() {
    setState(() {
      counter = 0;
      setColor = Colors.white;
      textColor = Colors.black;
    });
  }

  void updateColors() {
    if (counter == 0) {
      setColor = Colors.white;
      textColor = Colors.black;
    } else if (counter > 0) {
      setColor = const Color(0xFF0179DB);
      textColor = Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? Colors.grey[900] : Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: isDark ? Colors.grey[850] : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: isDark ? Colors.black54 : Colors.grey.shade300,
                    offset: const Offset(3, 3),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: isDark ? Colors.black26 : Colors.white,
                    offset: const Offset(-2, -2),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: RichText(
                text: TextSpan(
                  text: "Welcome to",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: isDark ? Colors.white : Colors.black,
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
                color: setColor,
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

            const SizedBox(height: 80),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: 'decrement',
                  onPressed: decrementCounter,
                  backgroundColor: isDark ? Colors.grey[800] : Colors.white,
                  elevation: 10,
                  child: const Icon(Icons.remove, size: 30),
                ),
                const SizedBox(width: 30),
                FloatingActionButton(
                  heroTag: 'increment',
                  onPressed: incrementCounter,
                  backgroundColor: isDark ? Colors.grey[800] : Colors.white,
                  elevation: 10,
                  child: const Icon(Icons.add, size: 30),
                ),
              ],
            ),

            const SizedBox(height: 30),

            TextButton(
              onPressed: resetCounter,
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
