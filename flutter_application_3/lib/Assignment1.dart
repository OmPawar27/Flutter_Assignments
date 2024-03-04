import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Center(
            child: Text("Hello"),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.deepPurple[400],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 200,
                    child: const Center(child: Text("Container 1")),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Button 1")),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 200,
                    child: const Center(child: Text("Container 2")),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Button 2")),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 200,
                    child: const Center(child: Text("Container 3")),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Button 3")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
