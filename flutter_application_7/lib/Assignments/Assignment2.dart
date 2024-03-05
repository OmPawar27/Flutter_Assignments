import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignmnet 2"),
        backgroundColor: Colors.deepPurple[200],
        actions: const [
          Center(
            child: Text(
              "Center Text",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Icon(Icons.menu_book_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.favorite_outline),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
