import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Core2Web"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/img2.jpeg',
            height: 150,
            width: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'images/img2.jpeg',
            height: 150,
            width: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'images/img2.jpeg',
            height: 150,
            width: 150,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
