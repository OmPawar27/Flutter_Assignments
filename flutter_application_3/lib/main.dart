// ignore_for_file: prefer_const_constructors
import 'Assignment1.dart';
import 'package:flutter/material.dart';
import 'Demo.dart';
import 'Page1.dart';
void main() {
  runApp(const Page1());
}

int count = 1;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void userTapped() {
    print("User Tapped $count times!");
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 7,
          backgroundColor: Colors.deepPurple,
          title: Text(
            "App Bar",
            style: TextStyle(
                fontFamily: "Times New Roman",
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          toolbarHeight: 70,
          leading: Icon(Icons.menu),
          actions: const [
            // Icon(Icons.favorite),
          ],
        ),
        backgroundColor: Colors.deepPurple[200],
        // ------ BODY ---------
        body: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              // onTap: () {
              //   print("user tapped!");
              // },
              onTap: userTapped,
              child: Container(
                height: 400,
                color: Colors.deepPurple,
                child: Center(
                  child: Text(
                    "Container 1",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 400,
              color: Colors.deepPurple[700],
              child: Center(
                child: Text(
                  "Container 2",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 400,
              color: Colors.deepPurple[600],
              child: Center(
                child: Text(
                  "Container 3",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 400,
              color: Colors.deepPurple[300],
              child: Center(
                child: Text(
                  "Container 4",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
