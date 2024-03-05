import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignmnet 1"),
        backgroundColor: Colors.deepPurple[200],
        actions: const [
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
