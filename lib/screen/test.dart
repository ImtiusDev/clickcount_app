import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: Container(
        constraints: BoxConstraints(
          maxHeight: 200,
          maxWidth: 200,
          minHeight: 100,
          minWidth: 100,
        ),
        color: Colors.black,
        // height: 200,
        // width: 200,
        child: Container(
          height: 300,
          width: 300,
          color: const Color.fromARGB(255, 160, 210, 252),
          child: Center(child: Text(context.runtimeType.toString())),
        ),
      ),
    );
  }
}