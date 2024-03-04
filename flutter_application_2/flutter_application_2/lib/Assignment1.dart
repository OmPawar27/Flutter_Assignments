import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment1(),
    );
  }
}

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<StatefulWidget> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int? _count = 0;

  void _printTable() {
    setState(() {
      _count = _count! + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table of 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Click the button to print the table values"),
            const SizedBox(
              height: 20,
            ),
            Text("$_count"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  _printTable();
                },
                child: const Text("Print Table"))
          ],
        ),
      ),
    );
  }
}
