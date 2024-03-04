//import 'dart:html';

import 'package:flutter/material.dart';
import 'Assignment3.dart';

void main() {
  runApp(const MyApp());
}

class MyDog extends StatelessWidget {
  const MyDog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Dog App",
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Dog Names",
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DogNames("Rocky"),
            const SizedBox(
              height: 10,
            ),
            const DogNames("Tommy"),
            const SizedBox(height: 10),
            const DogNames("Moti"),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondScreen()));
                },
                child: const Text("Move to Second Screen")),
          ],
        )),
      ),
    );
  }
}

class DogNames extends StatelessWidget {
  final String name;
  const DogNames(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.blue),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(name),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is Second Screen"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Go back to first Screen")),
          ],
        ),
      ),
    );
  }
}

/*class ItemCounter extends StatefulWidget {
  final String? name;

  const ItemCounter(this.name);

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              counter++;
            });
          },
        ),
      ),
    );
  }
}*/
