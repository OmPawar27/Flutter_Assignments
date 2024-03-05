import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Center(child: Text("Assignment 3")),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 100, width: 100, color: Colors.blue),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      print("Button 1 Pressed");
                    },
                    child: const Text("Button 1")),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 100, width: 100, color: Colors.red),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      print("Button 2 pressed");
                    },
                    child: const Text("Button 2")),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 100, width: 100, color: Colors.deepPurple),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Button 3 Pressed");
                    },
                    child: const Text("Button 3")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
