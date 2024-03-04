import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment2(),
    );
  }
}

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<StatefulWidget> createState() => _Assignment2State();
}

class _Assignment2State extends State {
  bool box1Color = false;
  bool box2Color = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Box"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Column 1
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: box1Color ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box1Color = true;
                        });
                      },
                      child: const Text("Color Box1")),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),

              const SizedBox(
                width: 20,
              ),

              //Column 2
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: box1Color ? Colors.blue : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box2Color = true;
                        });
                      },
                      child: const Text("Color Box2")),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
